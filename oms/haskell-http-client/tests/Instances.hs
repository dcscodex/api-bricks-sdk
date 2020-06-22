{-# OPTIONS_GHC -fno-warn-unused-imports -fno-warn-unused-matches #-}

module Instances where

import OMS-RESTAPI...@.Model
import OMS-RESTAPI...@.Core

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
 
instance Arbitrary Balance where
  arbitrary = sized genBalance

genBalance :: Int -> Gen Balance
genBalance n =
  Balance
    <$> arbitraryReducedMaybe n -- balanceType :: Maybe Text
    <*> arbitraryReducedMaybe n -- balanceExchangeName :: Maybe Text
    <*> arbitraryReducedMaybe n -- balanceData :: Maybe [BalanceData]
  
instance Arbitrary BalanceData where
  arbitrary = sized genBalanceData

genBalanceData :: Int -> Gen BalanceData
genBalanceData n =
  BalanceData
    <$> arbitraryReducedMaybe n -- balanceDataId :: Maybe Text
    <*> arbitraryReducedMaybe n -- balanceDataSymbolExchange :: Maybe Text
    <*> arbitraryReducedMaybe n -- balanceDataSymbolCoinapi :: Maybe Text
    <*> arbitraryReducedMaybe n -- balanceDataBalance :: Maybe Float
    <*> arbitraryReducedMaybe n -- balanceDataAvailable :: Maybe Float
    <*> arbitraryReducedMaybe n -- balanceDataLocked :: Maybe Float
    <*> arbitraryReducedMaybe n -- balanceDataUpdateOrigin :: Maybe E'UpdateOrigin
  
instance Arbitrary CancelAllOrder where
  arbitrary = sized genCancelAllOrder

genCancelAllOrder :: Int -> Gen CancelAllOrder
genCancelAllOrder n =
  CancelAllOrder
    <$> arbitraryReducedMaybe n -- cancelAllOrderExchangeId :: Maybe Text
  
instance Arbitrary CancelOrder where
  arbitrary = sized genCancelOrder

genCancelOrder :: Int -> Gen CancelOrder
genCancelOrder n =
  CancelOrder
    <$> arbitraryReducedMaybe n -- cancelOrderExchangeId :: Maybe Text
    <*> arbitraryReducedMaybe n -- cancelOrderExchangeOrderId :: Maybe Text
    <*> arbitraryReducedMaybe n -- cancelOrderClientOrderId :: Maybe Text
  
instance Arbitrary CreateOrder400 where
  arbitrary = sized genCreateOrder400

genCreateOrder400 :: Int -> Gen CreateOrder400
genCreateOrder400 n =
  CreateOrder400
    <$> arbitraryReducedMaybe n -- createOrder400Type :: Maybe Text
    <*> arbitraryReducedMaybe n -- createOrder400Title :: Maybe Text
    <*> arbitraryReducedMaybe n -- createOrder400Status :: Maybe Double
    <*> arbitraryReducedMaybe n -- createOrder400TraceId :: Maybe Text
    <*> arbitraryReducedMaybe n -- createOrder400Errors :: Maybe Text
  
instance Arbitrary Messages where
  arbitrary = sized genMessages

genMessages :: Int -> Gen Messages
genMessages n =
  Messages
    <$> arbitraryReducedMaybe n -- messagesType :: Maybe Text
    <*> arbitraryReducedMaybe n -- messagesExchangeId :: Maybe Text
    <*> arbitraryReducedMaybe n -- messagesMessage :: Maybe Text
  
instance Arbitrary MessagesInfo where
  arbitrary = sized genMessagesInfo

genMessagesInfo :: Int -> Gen MessagesInfo
genMessagesInfo n =
  MessagesInfo
    <$> arbitraryReducedMaybe n -- messagesInfoType :: Maybe Text
    <*> arbitraryReducedMaybe n -- messagesInfoExchangeId :: Maybe Text
    <*> arbitraryReducedMaybe n -- messagesInfoErrorMessage :: Maybe Text
  
instance Arbitrary MessagesOk where
  arbitrary = sized genMessagesOk

genMessagesOk :: Int -> Gen MessagesOk
genMessagesOk n =
  MessagesOk
    <$> arbitraryReducedMaybe n -- messagesOkType :: Maybe Text
    <*> arbitraryReducedMaybe n -- messagesOkExchangeId :: Maybe Text
    <*> arbitraryReducedMaybe n -- messagesOkMessage :: Maybe Text
  
instance Arbitrary NewOrder where
  arbitrary = sized genNewOrder

genNewOrder :: Int -> Gen NewOrder
genNewOrder n =
  NewOrder
    <$> arbitraryReducedMaybe n -- newOrderExchangeId :: Maybe Text
    <*> arbitraryReducedMaybe n -- newOrderClientOrderId :: Maybe Text
    <*> arbitraryReducedMaybe n -- newOrderSymbolExchange :: Maybe Text
    <*> arbitraryReducedMaybe n -- newOrderSymbolCoinapi :: Maybe Text
    <*> arbitraryReducedMaybe n -- newOrderAmountOrder :: Maybe Double
    <*> arbitraryReducedMaybe n -- newOrderPrice :: Maybe Double
    <*> arbitraryReducedMaybe n -- newOrderSide :: Maybe E'Side
    <*> arbitraryReducedMaybe n -- newOrderOrderType :: Maybe E'OrderType
    <*> arbitraryReducedMaybe n -- newOrderTimeInForce :: Maybe TimeInForce
    <*> arbitraryReducedMaybe n -- newOrderExpireTime :: Maybe Date
    <*> arbitraryReducedMaybe n -- newOrderExecInst :: Maybe [E'ExecInst]
  
instance Arbitrary Order where
  arbitrary = sized genOrder

genOrder :: Int -> Gen Order
genOrder n =
  Order
    <$> arbitraryReducedMaybe n -- orderType :: Maybe Text
    <*> arbitraryReducedMaybe n -- orderExchangeName :: Maybe Text
    <*> arbitraryReducedMaybe n -- orderData :: Maybe [OrderData]
  
instance Arbitrary OrderData where
  arbitrary = sized genOrderData

genOrderData :: Int -> Gen OrderData
genOrderData n =
  OrderData
    <$> arbitraryReducedMaybe n -- orderDataExchangeId :: Maybe Text
    <*> arbitraryReducedMaybe n -- orderDataId :: Maybe Text
    <*> arbitraryReducedMaybe n -- orderDataClientOrderIdFormatExchange :: Maybe Text
    <*> arbitraryReducedMaybe n -- orderDataExchangeOrderId :: Maybe Text
    <*> arbitraryReducedMaybe n -- orderDataAmountOpen :: Maybe Double
    <*> arbitraryReducedMaybe n -- orderDataAmountFilled :: Maybe Double
    <*> arbitraryReducedMaybe n -- orderDataStatus :: Maybe OrderStatus
    <*> arbitraryReducedMaybe n -- orderDataTimeOrder :: Maybe [[Text]]
    <*> arbitraryReducedMaybe n -- orderDataErrorMessage :: Maybe Text
    <*> arbitraryReducedMaybe n -- orderDataClientOrderId :: Maybe Text
    <*> arbitraryReducedMaybe n -- orderDataSymbolExchange :: Maybe Text
    <*> arbitraryReducedMaybe n -- orderDataSymbolCoinapi :: Maybe Text
    <*> arbitraryReducedMaybe n -- orderDataAmountOrder :: Maybe Double
    <*> arbitraryReducedMaybe n -- orderDataPrice :: Maybe Double
    <*> arbitraryReducedMaybe n -- orderDataSide :: Maybe E'Side
    <*> arbitraryReducedMaybe n -- orderDataOrderType :: Maybe E'OrderType
    <*> arbitraryReducedMaybe n -- orderDataTimeInForce :: Maybe TimeInForce
    <*> arbitraryReducedMaybe n -- orderDataExpireTime :: Maybe Date
    <*> arbitraryReducedMaybe n -- orderDataExecInst :: Maybe [E'ExecInst]
  
instance Arbitrary OrderLive where
  arbitrary = sized genOrderLive

genOrderLive :: Int -> Gen OrderLive
genOrderLive n =
  OrderLive
    <$> arbitraryReducedMaybe n -- orderLiveType :: Maybe Text
    <*> arbitraryReducedMaybe n -- orderLiveExchangeId :: Maybe Text
    <*> arbitraryReducedMaybe n -- orderLiveId :: Maybe Text
    <*> arbitraryReducedMaybe n -- orderLiveClientOrderIdFormatExchange :: Maybe Text
    <*> arbitraryReducedMaybe n -- orderLiveExchangeOrderId :: Maybe Text
    <*> arbitraryReducedMaybe n -- orderLiveAmountOpen :: Maybe Double
    <*> arbitraryReducedMaybe n -- orderLiveAmountFilled :: Maybe Double
    <*> arbitraryReducedMaybe n -- orderLiveStatus :: Maybe OrderStatus
    <*> arbitraryReducedMaybe n -- orderLiveTimeOrder :: Maybe [[Text]]
    <*> arbitraryReducedMaybe n -- orderLiveErrorMessage :: Maybe Text
    <*> arbitraryReducedMaybe n -- orderLiveClientOrderId :: Maybe Text
    <*> arbitraryReducedMaybe n -- orderLiveSymbolExchange :: Maybe Text
    <*> arbitraryReducedMaybe n -- orderLiveSymbolCoinapi :: Maybe Text
    <*> arbitraryReducedMaybe n -- orderLiveAmountOrder :: Maybe Double
    <*> arbitraryReducedMaybe n -- orderLivePrice :: Maybe Double
    <*> arbitraryReducedMaybe n -- orderLiveSide :: Maybe E'Side
    <*> arbitraryReducedMaybe n -- orderLiveOrderType :: Maybe E'OrderType
    <*> arbitraryReducedMaybe n -- orderLiveTimeInForce :: Maybe TimeInForce
    <*> arbitraryReducedMaybe n -- orderLiveExpireTime :: Maybe Date
    <*> arbitraryReducedMaybe n -- orderLiveExecInst :: Maybe [E'ExecInst]
  
instance Arbitrary Position where
  arbitrary = sized genPosition

genPosition :: Int -> Gen Position
genPosition n =
  Position
    <$> arbitraryReducedMaybe n -- positionType :: Maybe Text
    <*> arbitraryReducedMaybe n -- positionExchangeName :: Maybe Text
    <*> arbitraryReducedMaybe n -- positionData :: Maybe [PositionData]
  
instance Arbitrary PositionData where
  arbitrary = sized genPositionData

genPositionData :: Int -> Gen PositionData
genPositionData n =
  PositionData
    <$> arbitraryReducedMaybe n -- positionDataId :: Maybe Text
    <*> arbitraryReducedMaybe n -- positionDataSymbolExchange :: Maybe Text
    <*> arbitraryReducedMaybe n -- positionDataSymbolCoinapi :: Maybe Text
    <*> arbitraryReducedMaybe n -- positionDataAvgEntryPrice :: Maybe Double
    <*> arbitraryReducedMaybe n -- positionDataQuantity :: Maybe Double
    <*> arbitraryReducedMaybe n -- positionDataIsBuy :: Maybe Bool
    <*> arbitraryReducedMaybe n -- positionDataUnrealisedPnL :: Maybe Double
    <*> arbitraryReducedMaybe n -- positionDataLeverage :: Maybe Double
    <*> arbitraryReducedMaybe n -- positionDataCrossMargin :: Maybe Bool
    <*> arbitraryReducedMaybe n -- positionDataLiquidationPrice :: Maybe Double
    <*> arbitraryReducedMaybe n -- positionDataRawData :: Maybe Text
  



instance Arbitrary E'ExecInst where
  arbitrary = arbitraryBoundedEnum

instance Arbitrary E'OrderType where
  arbitrary = arbitraryBoundedEnum

instance Arbitrary E'Side where
  arbitrary = arbitraryBoundedEnum

instance Arbitrary E'UpdateOrigin where
  arbitrary = arbitraryBoundedEnum

instance Arbitrary OrderStatus where
  arbitrary = arbitraryBoundedEnum

instance Arbitrary TimeInForce where
  arbitrary = arbitraryBoundedEnum

