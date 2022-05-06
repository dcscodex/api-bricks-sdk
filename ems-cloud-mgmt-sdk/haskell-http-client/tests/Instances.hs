{-# OPTIONS_GHC -fno-warn-unused-imports -fno-warn-unused-matches #-}

module Instances where

import EMS-ManagedCloudREST.Model
import EMS-ManagedCloudREST.Core

import qualified Data.Aeson as A
import qualified Data.ByteString.Lazy as BL
import qualified Data.HashMap.Strict as HM
import qualified Data.Set as Set
import qualified Data.Text as T
import qualified Data.Time as TI
import qualified Data.Vector as V

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

-- | A naive Arbitrary instance for A.Value:
instance Arbitrary A.Value where
  arbitrary = frequency [(3, simpleTypes), (1, arrayTypes), (1, objectTypes)]
    where
      simpleTypes :: Gen A.Value
      simpleTypes =
        frequency
          [ (1, return A.Null)
          , (2, liftM A.Bool (arbitrary :: Gen Bool))
          , (2, liftM (A.Number . fromIntegral) (arbitrary :: Gen Int))
          , (2, liftM (A.String . T.pack) (arbitrary :: Gen String))
          ]
      mapF (k, v) = (T.pack k, v)
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

instance Arbitrary AccountData where
  arbitrary = sized genAccountData

genAccountData :: Int -> Gen AccountData
genAccountData n =
  AccountData
    <$> arbitraryReducedMaybe n -- accountDataExchangeId :: Maybe Text
    <*> arbitraryReducedMaybe n -- accountDataParameters :: Maybe [KeyValue]
  
instance Arbitrary AccountEndpoint where
  arbitrary = sized genAccountEndpoint

genAccountEndpoint :: Int -> Gen AccountEndpoint
genAccountEndpoint n =
  AccountEndpoint
    <$> arbitraryReducedMaybe n -- accountEndpointExchangeId :: Maybe Text
    <*> arbitraryReducedMaybe n -- accountEndpointLocationId :: Maybe Text
    <*> arbitraryReducedMaybe n -- accountEndpointEndpointSchema :: Maybe Text
    <*> arbitraryReducedMaybe n -- accountEndpointEndpointHost :: Maybe Text
    <*> arbitraryReducedMaybe n -- accountEndpointEndpointUrl :: Maybe Text
  
instance Arbitrary AccountInfo where
  arbitrary = sized genAccountInfo

genAccountInfo :: Int -> Gen AccountInfo
genAccountInfo n =
  AccountInfo
    <$> arbitraryReducedMaybe n -- accountInfoExchangeId :: Maybe Text
  
instance Arbitrary ExchangeLoginRequire where
  arbitrary = sized genExchangeLoginRequire

genExchangeLoginRequire :: Int -> Gen ExchangeLoginRequire
genExchangeLoginRequire n =
  ExchangeLoginRequire
    <$> arbitraryReducedMaybe n -- exchangeLoginRequireExchangeId :: Maybe Text
    <*> arbitraryReducedMaybe n -- exchangeLoginRequireLocationId :: Maybe Text
    <*> arbitraryReducedMaybe n -- exchangeLoginRequireRequiredParameters :: Maybe [Text]
  
instance Arbitrary GetAccount where
  arbitrary = sized genGetAccount

genGetAccount :: Int -> Gen GetAccount
genGetAccount n =
  GetAccount
    <$> arbitraryReducedMaybe n -- getAccountExchangeId :: Maybe Text
    <*> arbitraryReducedMaybe n -- getAccountParameters :: Maybe [KeyValue]
  
instance Arbitrary KeyValue where
  arbitrary = sized genKeyValue

genKeyValue :: Int -> Gen KeyValue
genKeyValue n =
  KeyValue
    <$> arbitraryReducedMaybe n -- keyValueKey :: Maybe Text
    <*> arbitraryReducedMaybe n -- keyValueValue :: Maybe Text
  
instance Arbitrary Locations where
  arbitrary = sized genLocations

genLocations :: Int -> Gen Locations
genLocations n =
  Locations
    <$> arbitraryReducedMaybe n -- locationsLocationId :: Maybe Text
    <*> arbitraryReducedMaybe n -- locationsRegionName :: Maybe Text
    <*> arbitraryReducedMaybe n -- locationsProviderName :: Maybe Text
  
instance Arbitrary UpdateAccount where
  arbitrary = sized genUpdateAccount

genUpdateAccount :: Int -> Gen UpdateAccount
genUpdateAccount n =
  UpdateAccount
    <$> arbitraryReducedMaybe n -- updateAccountExchangeId :: Maybe Text
    <*> arbitraryReducedMaybe n -- updateAccountParameters :: Maybe [KeyValue]
  



