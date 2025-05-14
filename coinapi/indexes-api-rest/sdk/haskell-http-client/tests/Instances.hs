{-# LANGUAGE CPP #-}
{-# OPTIONS_GHC -fno-warn-unused-imports -fno-warn-unused-matches #-}

module Instances where

import IndexesREST.Model
import IndexesREST.Core

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

instance Arbitrary IndexesIndexDefinitionInputData where
  arbitrary = sized genIndexesIndexDefinitionInputData

genIndexesIndexDefinitionInputData :: Int -> Gen IndexesIndexDefinitionInputData
genIndexesIndexDefinitionInputData n =
  IndexesIndexDefinitionInputData
    <$> arbitraryReducedMaybe n -- indexesIndexDefinitionInputDataExchangeId :: Maybe Text
    <*> arbitraryReducedMaybe n -- indexesIndexDefinitionInputDataExchangeSymbolId :: Maybe Text
    <*> arbitraryReducedMaybe n -- indexesIndexDefinitionInputDataBaseAssetId :: Maybe Text
    <*> arbitraryReducedMaybe n -- indexesIndexDefinitionInputDataQuoteAssetId :: Maybe Text
    <*> arbitraryReducedMaybe n -- indexesIndexDefinitionInputDataBeginDate :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- indexesIndexDefinitionInputDataEndDate :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- indexesIndexDefinitionInputDataStatus :: Maybe Text
    <*> arbitraryReducedMaybe n -- indexesIndexDefinitionInputDataStatusInfo :: Maybe Text
    <*> arbitraryReducedMaybe n -- indexesIndexDefinitionInputDataLastModificationTime :: Maybe DateTime
  
instance Arbitrary IndexesIndexDefinitionSnapshotEntry where
  arbitrary = sized genIndexesIndexDefinitionSnapshotEntry

genIndexesIndexDefinitionSnapshotEntry :: Int -> Gen IndexesIndexDefinitionSnapshotEntry
genIndexesIndexDefinitionSnapshotEntry n =
  IndexesIndexDefinitionSnapshotEntry
    <$> arbitraryReducedMaybe n -- indexesIndexDefinitionSnapshotEntryIndexId :: Maybe Text
    <*> arbitraryReducedMaybe n -- indexesIndexDefinitionSnapshotEntryTimestamp :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- indexesIndexDefinitionSnapshotEntryValue :: Maybe Double
  
instance Arbitrary IndexesIndexIdentifier where
  arbitrary = sized genIndexesIndexIdentifier

genIndexesIndexIdentifier :: Int -> Gen IndexesIndexIdentifier
genIndexesIndexIdentifier n =
  IndexesIndexIdentifier
    <$> arbitraryReducedMaybe n -- indexesIndexIdentifierId :: Maybe Text
  
instance Arbitrary IndexesIndexMultiAssetWeight where
  arbitrary = sized genIndexesIndexMultiAssetWeight

genIndexesIndexMultiAssetWeight :: Int -> Gen IndexesIndexMultiAssetWeight
genIndexesIndexMultiAssetWeight n =
  IndexesIndexMultiAssetWeight
    <$> arbitraryReducedMaybe n -- indexesIndexMultiAssetWeightIndexId :: Maybe Text
    <*> arbitraryReducedMaybe n -- indexesIndexMultiAssetWeightAssetId :: Maybe Text
    <*> arbitraryReducedMaybe n -- indexesIndexMultiAssetWeightWeight :: Maybe Double
  
instance Arbitrary IndexesIndexTimeseriesItem where
  arbitrary = sized genIndexesIndexTimeseriesItem

genIndexesIndexTimeseriesItem :: Int -> Gen IndexesIndexTimeseriesItem
genIndexesIndexTimeseriesItem n =
  IndexesIndexTimeseriesItem
    <$> arbitraryReducedMaybe n -- indexesIndexTimeseriesItemTimePeriodStart :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- indexesIndexTimeseriesItemTimePeriodEnd :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- indexesIndexTimeseriesItemTimeOpen :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- indexesIndexTimeseriesItemTimeClose :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- indexesIndexTimeseriesItemValueOpen :: Maybe Double
    <*> arbitraryReducedMaybe n -- indexesIndexTimeseriesItemValueHigh :: Maybe Double
    <*> arbitraryReducedMaybe n -- indexesIndexTimeseriesItemValueLow :: Maybe Double
    <*> arbitraryReducedMaybe n -- indexesIndexTimeseriesItemValueClose :: Maybe Double
    <*> arbitraryReducedMaybe n -- indexesIndexTimeseriesItemValueCount :: Maybe Integer
  
instance Arbitrary IndexesIndexValue where
  arbitrary = sized genIndexesIndexValue

genIndexesIndexValue :: Int -> Gen IndexesIndexValue
genIndexesIndexValue n =
  IndexesIndexValue
    <$> arbitraryReducedMaybe n -- indexesIndexValueTimestamp :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- indexesIndexValueValue :: Maybe Double
    <*> arbitraryReducedMaybe n -- indexesIndexValueComposition :: Maybe [IndexesIndexValueComponent]
  
instance Arbitrary IndexesIndexValueComponent where
  arbitrary = sized genIndexesIndexValueComponent

genIndexesIndexValueComponent :: Int -> Gen IndexesIndexValueComponent
genIndexesIndexValueComponent n =
  IndexesIndexValueComponent
    <$> arbitraryReducedMaybe n -- indexesIndexValueComponentComponentId :: Maybe Text
    <*> arbitraryReducedMaybe n -- indexesIndexValueComponentComponentValue :: Maybe Double
  
instance Arbitrary MetadataExchange where
  arbitrary = sized genMetadataExchange

genMetadataExchange :: Int -> Gen MetadataExchange
genMetadataExchange n =
  MetadataExchange
    <$> arbitraryReducedMaybe n -- metadataExchangeExchangeId :: Maybe Text
    <*> arbitraryReducedMaybe n -- metadataExchangeWebsite :: Maybe Text
    <*> arbitraryReducedMaybe n -- metadataExchangeName :: Maybe Text
  
instance Arbitrary MetadataTimeseriesPeriod where
  arbitrary = sized genMetadataTimeseriesPeriod

genMetadataTimeseriesPeriod :: Int -> Gen MetadataTimeseriesPeriod
genMetadataTimeseriesPeriod n =
  MetadataTimeseriesPeriod
    <$> arbitraryReducedMaybe n -- metadataTimeseriesPeriodPeriodId :: Maybe Text
    <*> arbitraryReducedMaybe n -- metadataTimeseriesPeriodLengthSeconds :: Maybe Int
    <*> arbitraryReducedMaybe n -- metadataTimeseriesPeriodLengthMonths :: Maybe Int
    <*> arbitraryReducedMaybe n -- metadataTimeseriesPeriodUnitCount :: Maybe Int
    <*> arbitraryReducedMaybe n -- metadataTimeseriesPeriodUnitName :: Maybe Text
    <*> arbitraryReducedMaybe n -- metadataTimeseriesPeriodDisplayName :: Maybe Text
  



