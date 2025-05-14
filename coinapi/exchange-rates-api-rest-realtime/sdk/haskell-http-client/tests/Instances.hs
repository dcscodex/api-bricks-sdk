{-# LANGUAGE CPP #-}
{-# OPTIONS_GHC -fno-warn-unused-imports -fno-warn-unused-matches #-}

module Instances where

import ExchangeRatesRealtimeREST.Model
import ExchangeRatesRealtimeREST.Core

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

instance Arbitrary V1Asset where
  arbitrary = sized genV1Asset

genV1Asset :: Int -> Gen V1Asset
genV1Asset n =
  V1Asset
    <$> arbitraryReducedMaybe n -- v1AssetAssetId :: Maybe Text
    <*> arbitraryReducedMaybe n -- v1AssetName :: Maybe Text
    <*> arbitraryReducedMaybe n -- v1AssetTypeIsCrypto :: Maybe Int
    <*> arbitraryReducedMaybe n -- v1AssetDataQuoteStart :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- v1AssetDataQuoteEnd :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- v1AssetDataOrderbookStart :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- v1AssetDataOrderbookEnd :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- v1AssetDataTradeStart :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- v1AssetDataTradeEnd :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- v1AssetDataSymbolsCount :: Maybe Integer
    <*> arbitraryReducedMaybe n -- v1AssetVolume1hrsUsd :: Maybe Double
    <*> arbitraryReducedMaybe n -- v1AssetVolume1dayUsd :: Maybe Double
    <*> arbitraryReducedMaybe n -- v1AssetVolume1mthUsd :: Maybe Double
    <*> arbitraryReducedMaybe n -- v1AssetPriceUsd :: Maybe Double
    <*> arbitraryReducedMaybe n -- v1AssetIdIcon :: Maybe Text
    <*> arbitraryReducedMaybe n -- v1AssetSupplyCurrent :: Maybe Double
    <*> arbitraryReducedMaybe n -- v1AssetSupplyTotal :: Maybe Double
    <*> arbitraryReducedMaybe n -- v1AssetSupplyMax :: Maybe Double
    <*> arbitraryReducedMaybe n -- v1AssetChainAddresses :: Maybe [V1ChainNetworkAddress]
    <*> arbitraryReducedMaybe n -- v1AssetDataStart :: Maybe Text
    <*> arbitraryReducedMaybe n -- v1AssetDataEnd :: Maybe Text
  
instance Arbitrary V1ChainNetworkAddress where
  arbitrary = sized genV1ChainNetworkAddress

genV1ChainNetworkAddress :: Int -> Gen V1ChainNetworkAddress
genV1ChainNetworkAddress n =
  V1ChainNetworkAddress
    <$> arbitraryReducedMaybe n -- v1ChainNetworkAddressChainId :: Maybe Text
    <*> arbitraryReducedMaybe n -- v1ChainNetworkAddressNetworkId :: Maybe Text
    <*> arbitraryReducedMaybe n -- v1ChainNetworkAddressAddress :: Maybe Text
  
instance Arbitrary V1ExchangeRate where
  arbitrary = sized genV1ExchangeRate

genV1ExchangeRate :: Int -> Gen V1ExchangeRate
genV1ExchangeRate n =
  V1ExchangeRate
    <$> arbitraryReducedMaybe n -- v1ExchangeRateTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- v1ExchangeRateAssetIdBase :: Maybe Text
    <*> arbitraryReducedMaybe n -- v1ExchangeRateAssetIdQuote :: Maybe Text
    <*> arbitraryReducedMaybe n -- v1ExchangeRateRate :: Maybe Double
  
instance Arbitrary V1ExchangeRates where
  arbitrary = sized genV1ExchangeRates

genV1ExchangeRates :: Int -> Gen V1ExchangeRates
genV1ExchangeRates n =
  V1ExchangeRates
    <$> arbitraryReducedMaybe n -- v1ExchangeRatesAssetIdBase :: Maybe Text
    <*> arbitraryReducedMaybe n -- v1ExchangeRatesRates :: Maybe [V1ExchangeRatesRate]
  
instance Arbitrary V1ExchangeRatesRate where
  arbitrary = sized genV1ExchangeRatesRate

genV1ExchangeRatesRate :: Int -> Gen V1ExchangeRatesRate
genV1ExchangeRatesRate n =
  V1ExchangeRatesRate
    <$> arbitraryReducedMaybe n -- v1ExchangeRatesRateTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- v1ExchangeRatesRateAssetIdQuote :: Maybe Text
    <*> arbitraryReducedMaybe n -- v1ExchangeRatesRateRate :: Maybe Double
  
instance Arbitrary V1Icon where
  arbitrary = sized genV1Icon

genV1Icon :: Int -> Gen V1Icon
genV1Icon n =
  V1Icon
    <$> arbitraryReducedMaybe n -- v1IconExchangeId :: Maybe Text
    <*> arbitraryReducedMaybe n -- v1IconAssetId :: Maybe Text
    <*> arbitraryReducedMaybe n -- v1IconUrl :: Maybe Text
  



