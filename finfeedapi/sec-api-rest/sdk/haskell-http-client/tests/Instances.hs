{-# LANGUAGE CPP #-}
{-# OPTIONS_GHC -fno-warn-unused-imports -fno-warn-unused-matches #-}

module Instances where

import REST.Model
import REST.Core

import qualified Data.Aeson as A
import qualified Data.ByteString.Lazy as BL
import qualified Data.HashMap.Strict as HM
import qualified Data.Set as Set
import qualified Data.Text as T
import qualified Data.Time as TI
import qualified Data.Vector as V
import Data.String (fromString)

import Control.Monad
import Data.Char (isSpace)
import Data.List (sort)
import Test.QuickCheck

import ApproxEq

instance Arbitrary T.Text where
  arbitrary = T.pack <$> arbitrary

instance Arbitrary TI.Day where
  arbitrary = TI.ModifiedJulianDay . (2000 +) <$> arbitrary
  shrink = (TI.ModifiedJulianDay <$>) . shrink . TI.toModifiedJulianDay

instance Arbitrary TI.UTCTime where
  arbitrary =
    TI.UTCTime <$> arbitrary <*> (TI.secondsToDiffTime <$> choose (0, 86401))

instance Arbitrary BL.ByteString where
    arbitrary = BL.pack <$> arbitrary
    shrink xs = BL.pack <$> shrink (BL.unpack xs)

instance Arbitrary ByteArray where
    arbitrary = ByteArray <$> arbitrary
    shrink (ByteArray xs) = ByteArray <$> shrink xs

instance Arbitrary Binary where
    arbitrary = Binary <$> arbitrary
    shrink (Binary xs) = Binary <$> shrink xs

instance Arbitrary DateTime where
    arbitrary = DateTime <$> arbitrary
    shrink (DateTime xs) = DateTime <$> shrink xs

instance Arbitrary Date where
    arbitrary = Date <$> arbitrary
    shrink (Date xs) = Date <$> shrink xs

#if MIN_VERSION_aeson(2,0,0)
#else
-- | A naive Arbitrary instance for A.Value:
instance Arbitrary A.Value where
  arbitrary = arbitraryValue
#endif

arbitraryValue :: Gen A.Value
arbitraryValue =
  frequency [(3, simpleTypes), (1, arrayTypes), (1, objectTypes)]
    where
      simpleTypes :: Gen A.Value
      simpleTypes =
        frequency
          [ (1, return A.Null)
          , (2, liftM A.Bool (arbitrary :: Gen Bool))
          , (2, liftM (A.Number . fromIntegral) (arbitrary :: Gen Int))
          , (2, liftM (A.String . T.pack) (arbitrary :: Gen String))
          ]
      mapF (k, v) = (fromString k, v)
      simpleAndArrays = frequency [(1, sized sizedArray), (4, simpleTypes)]
      arrayTypes = sized sizedArray
      objectTypes = sized sizedObject
      sizedArray n = liftM (A.Array . V.fromList) $ replicateM n simpleTypes
      sizedObject n =
        liftM (A.object . map mapF) $
        replicateM n $ (,) <$> (arbitrary :: Gen String) <*> simpleAndArrays

-- | Checks if a given list has no duplicates in _O(n log n)_.
hasNoDups
  :: (Ord a)
  => [a] -> Bool
hasNoDups = go Set.empty
  where
    go _ [] = True
    go s (x:xs)
      | s' <- Set.insert x s
      , Set.size s' > Set.size s = go s' xs
      | otherwise = False

instance ApproxEq TI.Day where
  (=~) = (==)

arbitraryReduced :: Arbitrary a => Int -> Gen a
arbitraryReduced n = resize (n `div` 2) arbitrary

arbitraryReducedMaybe :: Arbitrary a => Int -> Gen (Maybe a)
arbitraryReducedMaybe 0 = elements [Nothing]
arbitraryReducedMaybe n = arbitraryReduced n

arbitraryReducedMaybeValue :: Int -> Gen (Maybe A.Value)
arbitraryReducedMaybeValue 0 = elements [Nothing]
arbitraryReducedMaybeValue n = do
  generated <- arbitraryReduced n
  if generated == Just A.Null
    then return Nothing
    else return generated

-- * Models

instance Arbitrary DTOFilingMetadataDto where
  arbitrary = sized genDTOFilingMetadataDto

genDTOFilingMetadataDto :: Int -> Gen DTOFilingMetadataDto
genDTOFilingMetadataDto n =
  DTOFilingMetadataDto
    <$> arbitraryReducedMaybe n -- dTOFilingMetadataDtoCik :: Maybe Integer
    <*> arbitraryReducedMaybe n -- dTOFilingMetadataDtoAccessionNumber :: Maybe Text
    <*> arbitraryReducedMaybe n -- dTOFilingMetadataDtoFilingDate :: Maybe Date
    <*> arbitraryReducedMaybe n -- dTOFilingMetadataDtoReportDate :: Maybe Date
    <*> arbitraryReducedMaybe n -- dTOFilingMetadataDtoAcceptanceDateTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- dTOFilingMetadataDtoAct :: Maybe Text
    <*> arbitraryReducedMaybe n -- dTOFilingMetadataDtoForm :: Maybe Text
    <*> arbitraryReducedMaybe n -- dTOFilingMetadataDtoFileNumber :: Maybe Text
    <*> arbitraryReducedMaybe n -- dTOFilingMetadataDtoFilmNumber :: Maybe Text
    <*> arbitraryReducedMaybe n -- dTOFilingMetadataDtoItems :: Maybe Text
    <*> arbitraryReducedMaybe n -- dTOFilingMetadataDtoCoreType :: Maybe Text
    <*> arbitraryReducedMaybe n -- dTOFilingMetadataDtoSize :: Maybe Int
    <*> arbitraryReducedMaybe n -- dTOFilingMetadataDtoIsXbrl :: Maybe Bool
    <*> arbitraryReducedMaybe n -- dTOFilingMetadataDtoIsInlineXbrl :: Maybe Bool
    <*> arbitraryReducedMaybe n -- dTOFilingMetadataDtoPrimaryDocument :: Maybe Text
    <*> arbitraryReducedMaybe n -- dTOFilingMetadataDtoPrimaryDocDescription :: Maybe Text
    <*> arbitraryReducedMaybe n -- dTOFilingMetadataDtoSourceFile :: Maybe Text
  
instance Arbitrary DTOSecFilingResultDto where
  arbitrary = sized genDTOSecFilingResultDto

genDTOSecFilingResultDto :: Int -> Gen DTOSecFilingResultDto
genDTOSecFilingResultDto n =
  DTOSecFilingResultDto
    <$> arbitraryReducedMaybe n -- dTOSecFilingResultDtoAccessionNumber :: Maybe Text
    <*> arbitraryReducedMaybe n -- dTOSecFilingResultDtoFormType :: Maybe Text
    <*> arbitraryReducedMaybe n -- dTOSecFilingResultDtoFilingDate :: Maybe Date
    <*> arbitraryReducedMaybe n -- dTOSecFilingResultDtoCompanyName :: Maybe Text
    <*> arbitraryReducedMaybe n -- dTOSecFilingResultDtoCik :: Maybe Integer
    <*> arbitraryReducedMaybe n -- dTOSecFilingResultDtoDocumentFilename :: Maybe Text
    <*> arbitraryReducedMaybe n -- dTOSecFilingResultDtoDocumentDescription :: Maybe Text
    <*> arbitraryReducedMaybe n -- dTOSecFilingResultDtoSourceFile :: Maybe Text
  
instance Arbitrary MvcProblemDetails where
  arbitrary = sized genMvcProblemDetails

genMvcProblemDetails :: Int -> Gen MvcProblemDetails
genMvcProblemDetails n =
  MvcProblemDetails
    <$> arbitraryReducedMaybe n -- mvcProblemDetailsType :: Maybe Text
    <*> arbitraryReducedMaybe n -- mvcProblemDetailsTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- mvcProblemDetailsStatus :: Maybe Int
    <*> arbitraryReducedMaybe n -- mvcProblemDetailsDetail :: Maybe Text
    <*> arbitraryReducedMaybe n -- mvcProblemDetailsInstance :: Maybe Text
  
instance Arbitrary MvcValidationProblemDetails where
  arbitrary = sized genMvcValidationProblemDetails

genMvcValidationProblemDetails :: Int -> Gen MvcValidationProblemDetails
genMvcValidationProblemDetails n =
  MvcValidationProblemDetails
    <$> arbitraryReducedMaybe n -- mvcValidationProblemDetailsType :: Maybe Text
    <*> arbitraryReducedMaybe n -- mvcValidationProblemDetailsTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- mvcValidationProblemDetailsStatus :: Maybe Int
    <*> arbitraryReducedMaybe n -- mvcValidationProblemDetailsDetail :: Maybe Text
    <*> arbitraryReducedMaybe n -- mvcValidationProblemDetailsInstance :: Maybe Text
    <*> arbitraryReducedMaybe n -- mvcValidationProblemDetailsErrors :: Maybe (Map.Map String [Text])
  



instance Arbitrary DTOExtractorType where
  arbitrary = arbitraryBoundedEnum

instance Arbitrary DTOFilingSortBy where
  arbitrary = arbitraryBoundedEnum

