{-# LANGUAGE CPP #-}
{-# OPTIONS_GHC -fno-warn-unused-imports -fno-warn-unused-matches #-}

module Instances where

import FinFeedAPIStockREST.Model
import FinFeedAPIStockREST.Core

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

instance Arbitrary AdminAdminMessageModel where
  arbitrary = sized genAdminAdminMessageModel

genAdminAdminMessageModel :: Int -> Gen AdminAdminMessageModel
genAdminAdminMessageModel n =
  AdminAdminMessageModel
    <$> arbitraryReducedMaybe n -- adminAdminMessageModelTradingStatus :: Maybe AdminTradingStatusModel
    <*> arbitraryReducedMaybe n -- adminAdminMessageModelOfficialPrice :: Maybe AdminOfficialPriceModel
    <*> arbitraryReducedMaybe n -- adminAdminMessageModelSecurityEvent :: Maybe AdminSecurityEventModel
    <*> arbitraryReducedMaybe n -- adminAdminMessageModelAuctionInformation :: Maybe AdminAuctionInformationModel
    <*> arbitraryReducedMaybe n -- adminAdminMessageModelShortSalePriceTest :: Maybe AdminShortSalePriceTestStatusModel
    <*> arbitraryReducedMaybe n -- adminAdminMessageModelOperationalHaltStatus :: Maybe AdminOperationalHaltStatusModel
    <*> arbitraryReducedMaybe n -- adminAdminMessageModelRetailLiquidityIndicator :: Maybe AdminRetailLiquidityIndicatorModel
    <*> arbitraryReducedMaybe n -- adminAdminMessageModelSystemEvent :: Maybe AdminSystemEventModel
    <*> arbitraryReducedMaybe n -- adminAdminMessageModelSecurityDirectory :: Maybe AdminSecurityDirectoryModel
  
instance Arbitrary AdminAuctionInformationModel where
  arbitrary = sized genAdminAuctionInformationModel

genAdminAuctionInformationModel :: Int -> Gen AdminAuctionInformationModel
genAdminAuctionInformationModel n =
  AdminAuctionInformationModel
    <$> arbitraryReducedMaybe n -- adminAuctionInformationModelSymbol :: Maybe Text
    <*> arbitraryReducedMaybe n -- adminAuctionInformationModelTimestampNanos :: Maybe Integer
    <*> arbitraryReducedMaybe n -- adminAuctionInformationModelTimestamp :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- adminAuctionInformationModelAuctionType :: Maybe Int
    <*> arbitraryReducedMaybe n -- adminAuctionInformationModelAuctionTypeCode :: Maybe Text
    <*> arbitraryReducedMaybe n -- adminAuctionInformationModelAuctionTypeText :: Maybe Text
    <*> arbitraryReducedMaybe n -- adminAuctionInformationModelIsAuctionTypeOpening :: Maybe Bool
    <*> arbitraryReducedMaybe n -- adminAuctionInformationModelIsAuctionTypeClosing :: Maybe Bool
    <*> arbitraryReducedMaybe n -- adminAuctionInformationModelIsAuctionTypeIpo :: Maybe Bool
    <*> arbitraryReducedMaybe n -- adminAuctionInformationModelIsAuctionTypeHalt :: Maybe Bool
    <*> arbitraryReducedMaybe n -- adminAuctionInformationModelIsAuctionTypeVolatility :: Maybe Bool
    <*> arbitraryReducedMaybe n -- adminAuctionInformationModelPairedShares :: Maybe Int
    <*> arbitraryReducedMaybe n -- adminAuctionInformationModelReferencePrice :: Maybe Double
    <*> arbitraryReducedMaybe n -- adminAuctionInformationModelIndicativeClearingPrice :: Maybe Double
    <*> arbitraryReducedMaybe n -- adminAuctionInformationModelImbalanceShares :: Maybe Int
    <*> arbitraryReducedMaybe n -- adminAuctionInformationModelImbalanceSide :: Maybe Int
    <*> arbitraryReducedMaybe n -- adminAuctionInformationModelImbalanceSideCode :: Maybe Text
    <*> arbitraryReducedMaybe n -- adminAuctionInformationModelImbalanceSideText :: Maybe Text
    <*> arbitraryReducedMaybe n -- adminAuctionInformationModelIsImbalanceSideBuy :: Maybe Bool
    <*> arbitraryReducedMaybe n -- adminAuctionInformationModelIsImbalanceSideSell :: Maybe Bool
    <*> arbitraryReducedMaybe n -- adminAuctionInformationModelIsImbalanceSideNone :: Maybe Bool
    <*> arbitraryReducedMaybe n -- adminAuctionInformationModelExtensionNumber :: Maybe Int
    <*> arbitraryReducedMaybe n -- adminAuctionInformationModelScheduledAuctionTimeSeconds :: Maybe Int
    <*> arbitraryReducedMaybe n -- adminAuctionInformationModelScheduledAuctionTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- adminAuctionInformationModelAuctionBookClearingPrice :: Maybe Double
    <*> arbitraryReducedMaybe n -- adminAuctionInformationModelCollarReferencePrice :: Maybe Double
    <*> arbitraryReducedMaybe n -- adminAuctionInformationModelLowerAuctionCollar :: Maybe Double
    <*> arbitraryReducedMaybe n -- adminAuctionInformationModelUpperAuctionCollar :: Maybe Double
  
instance Arbitrary AdminOfficialPriceModel where
  arbitrary = sized genAdminOfficialPriceModel

genAdminOfficialPriceModel :: Int -> Gen AdminOfficialPriceModel
genAdminOfficialPriceModel n =
  AdminOfficialPriceModel
    <$> arbitraryReducedMaybe n -- adminOfficialPriceModelSymbol :: Maybe Text
    <*> arbitraryReducedMaybe n -- adminOfficialPriceModelTimestampNanos :: Maybe Integer
    <*> arbitraryReducedMaybe n -- adminOfficialPriceModelTimestamp :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- adminOfficialPriceModelPriceType :: Maybe Int
    <*> arbitraryReducedMaybe n -- adminOfficialPriceModelPriceTypeCode :: Maybe Text
    <*> arbitraryReducedMaybe n -- adminOfficialPriceModelPriceTypeText :: Maybe Text
    <*> arbitraryReducedMaybe n -- adminOfficialPriceModelIsPriceTypeOpening :: Maybe Bool
    <*> arbitraryReducedMaybe n -- adminOfficialPriceModelIsPriceTypeClosing :: Maybe Bool
    <*> arbitraryReducedMaybe n -- adminOfficialPriceModelOfficialPrice :: Maybe Double
  
instance Arbitrary AdminOperationalHaltStatusModel where
  arbitrary = sized genAdminOperationalHaltStatusModel

genAdminOperationalHaltStatusModel :: Int -> Gen AdminOperationalHaltStatusModel
genAdminOperationalHaltStatusModel n =
  AdminOperationalHaltStatusModel
    <$> arbitraryReducedMaybe n -- adminOperationalHaltStatusModelSymbol :: Maybe Text
    <*> arbitraryReducedMaybe n -- adminOperationalHaltStatusModelTimestampNanos :: Maybe Integer
    <*> arbitraryReducedMaybe n -- adminOperationalHaltStatusModelTimestamp :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- adminOperationalHaltStatusModelOperationalHaltStatus :: Maybe Int
    <*> arbitraryReducedMaybe n -- adminOperationalHaltStatusModelOperationalHaltStatusCode :: Maybe Text
    <*> arbitraryReducedMaybe n -- adminOperationalHaltStatusModelOperationalHaltStatusText :: Maybe Text
    <*> arbitraryReducedMaybe n -- adminOperationalHaltStatusModelIsOperationallyHalted :: Maybe Bool
    <*> arbitraryReducedMaybe n -- adminOperationalHaltStatusModelIsNotOperationallyHalted :: Maybe Bool
  
instance Arbitrary AdminRetailLiquidityIndicatorModel where
  arbitrary = sized genAdminRetailLiquidityIndicatorModel

genAdminRetailLiquidityIndicatorModel :: Int -> Gen AdminRetailLiquidityIndicatorModel
genAdminRetailLiquidityIndicatorModel n =
  AdminRetailLiquidityIndicatorModel
    <$> arbitraryReducedMaybe n -- adminRetailLiquidityIndicatorModelSymbol :: Maybe Text
    <*> arbitraryReducedMaybe n -- adminRetailLiquidityIndicatorModelTimestampNanos :: Maybe Integer
    <*> arbitraryReducedMaybe n -- adminRetailLiquidityIndicatorModelTimestamp :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- adminRetailLiquidityIndicatorModelRetailLiquidityIndicator :: Maybe Int
    <*> arbitraryReducedMaybe n -- adminRetailLiquidityIndicatorModelRetailLiquidityIndicatorCode :: Maybe Text
    <*> arbitraryReducedMaybe n -- adminRetailLiquidityIndicatorModelRetailLiquidityIndicatorText :: Maybe Text
    <*> arbitraryReducedMaybe n -- adminRetailLiquidityIndicatorModelIsRetailIndicatorNotApplicable :: Maybe Bool
    <*> arbitraryReducedMaybe n -- adminRetailLiquidityIndicatorModelIsRetailIndicatorBuyInterest :: Maybe Bool
    <*> arbitraryReducedMaybe n -- adminRetailLiquidityIndicatorModelIsRetailIndicatorSellInterest :: Maybe Bool
    <*> arbitraryReducedMaybe n -- adminRetailLiquidityIndicatorModelIsRetailIndicatorBuyAndSellInterest :: Maybe Bool
  
instance Arbitrary AdminSecurityDirectoryModel where
  arbitrary = sized genAdminSecurityDirectoryModel

genAdminSecurityDirectoryModel :: Int -> Gen AdminSecurityDirectoryModel
genAdminSecurityDirectoryModel n =
  AdminSecurityDirectoryModel
    <$> arbitraryReducedMaybe n -- adminSecurityDirectoryModelSymbol :: Maybe Text
    <*> arbitraryReducedMaybe n -- adminSecurityDirectoryModelTimestampNanos :: Maybe Integer
    <*> arbitraryReducedMaybe n -- adminSecurityDirectoryModelTimestamp :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- adminSecurityDirectoryModelFlags :: Maybe Int
    <*> arbitraryReducedMaybe n -- adminSecurityDirectoryModelRoundLotSize :: Maybe Int
    <*> arbitraryReducedMaybe n -- adminSecurityDirectoryModelAdjustedPocPrice :: Maybe Double
    <*> arbitraryReducedMaybe n -- adminSecurityDirectoryModelLuldTier :: Maybe Int
    <*> arbitraryReducedMaybe n -- adminSecurityDirectoryModelLuldTierCode :: Maybe Text
    <*> arbitraryReducedMaybe n -- adminSecurityDirectoryModelLuldTierText :: Maybe Text
    <*> arbitraryReducedMaybe n -- adminSecurityDirectoryModelIsLuldTierNotApplicable :: Maybe Bool
    <*> arbitraryReducedMaybe n -- adminSecurityDirectoryModelIsLuldTier1 :: Maybe Bool
    <*> arbitraryReducedMaybe n -- adminSecurityDirectoryModelIsLuldTier2 :: Maybe Bool
  
instance Arbitrary AdminSecurityEventModel where
  arbitrary = sized genAdminSecurityEventModel

genAdminSecurityEventModel :: Int -> Gen AdminSecurityEventModel
genAdminSecurityEventModel n =
  AdminSecurityEventModel
    <$> arbitraryReducedMaybe n -- adminSecurityEventModelSymbol :: Maybe Text
    <*> arbitraryReducedMaybe n -- adminSecurityEventModelTimestampNanos :: Maybe Integer
    <*> arbitraryReducedMaybe n -- adminSecurityEventModelTimestamp :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- adminSecurityEventModelSecurityEvent :: Maybe Int
    <*> arbitraryReducedMaybe n -- adminSecurityEventModelSecurityEventCode :: Maybe Text
    <*> arbitraryReducedMaybe n -- adminSecurityEventModelSecurityEventText :: Maybe Text
    <*> arbitraryReducedMaybe n -- adminSecurityEventModelIsOpeningProcessComplete :: Maybe Bool
    <*> arbitraryReducedMaybe n -- adminSecurityEventModelIsClosingProcessComplete :: Maybe Bool
  
instance Arbitrary AdminShortSalePriceTestStatusModel where
  arbitrary = sized genAdminShortSalePriceTestStatusModel

genAdminShortSalePriceTestStatusModel :: Int -> Gen AdminShortSalePriceTestStatusModel
genAdminShortSalePriceTestStatusModel n =
  AdminShortSalePriceTestStatusModel
    <$> arbitraryReducedMaybe n -- adminShortSalePriceTestStatusModelSymbol :: Maybe Text
    <*> arbitraryReducedMaybe n -- adminShortSalePriceTestStatusModelTimestampNanos :: Maybe Integer
    <*> arbitraryReducedMaybe n -- adminShortSalePriceTestStatusModelTimestamp :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- adminShortSalePriceTestStatusModelShortSalePriceTestStatus :: Maybe Int
    <*> arbitraryReducedMaybe n -- adminShortSalePriceTestStatusModelShortSalePriceTestStatusCode :: Maybe Text
    <*> arbitraryReducedMaybe n -- adminShortSalePriceTestStatusModelShortSalePriceTestStatusText :: Maybe Text
    <*> arbitraryReducedMaybe n -- adminShortSalePriceTestStatusModelIsShortSalePriceTestNotInEffect :: Maybe Bool
    <*> arbitraryReducedMaybe n -- adminShortSalePriceTestStatusModelIsShortSalePriceTestInEffect :: Maybe Bool
    <*> arbitraryReducedMaybe n -- adminShortSalePriceTestStatusModelDetail :: Maybe Int
    <*> arbitraryReducedMaybe n -- adminShortSalePriceTestStatusModelDetailCode :: Maybe Text
    <*> arbitraryReducedMaybe n -- adminShortSalePriceTestStatusModelDetailText :: Maybe Text
    <*> arbitraryReducedMaybe n -- adminShortSalePriceTestStatusModelIsDetailNoPriceTest :: Maybe Bool
    <*> arbitraryReducedMaybe n -- adminShortSalePriceTestStatusModelIsDetailActivated :: Maybe Bool
    <*> arbitraryReducedMaybe n -- adminShortSalePriceTestStatusModelIsDetailContinued :: Maybe Bool
    <*> arbitraryReducedMaybe n -- adminShortSalePriceTestStatusModelIsDetailDeactivated :: Maybe Bool
    <*> arbitraryReducedMaybe n -- adminShortSalePriceTestStatusModelIsDetailNotAvailable :: Maybe Bool
  
instance Arbitrary AdminSystemEventModel where
  arbitrary = sized genAdminSystemEventModel

genAdminSystemEventModel :: Int -> Gen AdminSystemEventModel
genAdminSystemEventModel n =
  AdminSystemEventModel
    <$> arbitraryReducedMaybe n -- adminSystemEventModelTimestampNanos :: Maybe Integer
    <*> arbitraryReducedMaybe n -- adminSystemEventModelTimestamp :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- adminSystemEventModelSystemEvent :: Maybe Int
    <*> arbitraryReducedMaybe n -- adminSystemEventModelSystemEventCode :: Maybe Text
    <*> arbitraryReducedMaybe n -- adminSystemEventModelSystemEventText :: Maybe Text
    <*> arbitraryReducedMaybe n -- adminSystemEventModelIsSystemEventStartOfMessages :: Maybe Bool
    <*> arbitraryReducedMaybe n -- adminSystemEventModelIsSystemEventStartOfSystemHours :: Maybe Bool
    <*> arbitraryReducedMaybe n -- adminSystemEventModelIsSystemEventStartOfRegularMarketHours :: Maybe Bool
    <*> arbitraryReducedMaybe n -- adminSystemEventModelIsSystemEventEndOfRegularMarketHours :: Maybe Bool
    <*> arbitraryReducedMaybe n -- adminSystemEventModelIsSystemEventEndOfSystemHours :: Maybe Bool
    <*> arbitraryReducedMaybe n -- adminSystemEventModelIsSystemEventEndOfMessages :: Maybe Bool
  
instance Arbitrary AdminTradingStatusModel where
  arbitrary = sized genAdminTradingStatusModel

genAdminTradingStatusModel :: Int -> Gen AdminTradingStatusModel
genAdminTradingStatusModel n =
  AdminTradingStatusModel
    <$> arbitraryReducedMaybe n -- adminTradingStatusModelSymbol :: Maybe Text
    <*> arbitraryReducedMaybe n -- adminTradingStatusModelTimestampNanos :: Maybe Integer
    <*> arbitraryReducedMaybe n -- adminTradingStatusModelTimestamp :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- adminTradingStatusModelIsTradingLive :: Maybe Bool
    <*> arbitraryReducedMaybe n -- adminTradingStatusModelIsTradingHalted :: Maybe Bool
    <*> arbitraryReducedMaybe n -- adminTradingStatusModelIsTradingInOrderAcceptancePeriod :: Maybe Bool
    <*> arbitraryReducedMaybe n -- adminTradingStatusModelIsTradingPaused :: Maybe Bool
    <*> arbitraryReducedMaybe n -- adminTradingStatusModelIsReasonHaltNewsPending :: Maybe Bool
    <*> arbitraryReducedMaybe n -- adminTradingStatusModelIsReasonIpoNotYetTrading :: Maybe Bool
    <*> arbitraryReducedMaybe n -- adminTradingStatusModelIsReasonIpoDeferred :: Maybe Bool
    <*> arbitraryReducedMaybe n -- adminTradingStatusModelIsReasonHaltNewsDissemination :: Maybe Bool
    <*> arbitraryReducedMaybe n -- adminTradingStatusModelIsReasonIpoOrderAcceptancePeriod :: Maybe Bool
    <*> arbitraryReducedMaybe n -- adminTradingStatusModelIsReasonIpoPreLaunchPeriod :: Maybe Bool
    <*> arbitraryReducedMaybe n -- adminTradingStatusModelIsReasonMarketWideCircuitBreakerLevel1 :: Maybe Bool
    <*> arbitraryReducedMaybe n -- adminTradingStatusModelIsReasonMarketWideCircuitBreakerLevel2 :: Maybe Bool
    <*> arbitraryReducedMaybe n -- adminTradingStatusModelIsReasonMarketWideCircuitBreakerLevel3 :: Maybe Bool
    <*> arbitraryReducedMaybe n -- adminTradingStatusModelIsReasonNotApplicable :: Maybe Bool
    <*> arbitraryReducedMaybe n -- adminTradingStatusModelIsReasonNotAvailable :: Maybe Bool
  
instance Arbitrary FinFeedAPIExchangeModel where
  arbitrary = sized genFinFeedAPIExchangeModel

genFinFeedAPIExchangeModel :: Int -> Gen FinFeedAPIExchangeModel
genFinFeedAPIExchangeModel n =
  FinFeedAPIExchangeModel
    <$> arbitraryReducedMaybe n -- finFeedAPIExchangeModelExchangeId :: Maybe Text
    <*> arbitraryReducedMaybe n -- finFeedAPIExchangeModelLastDatapointDate :: Maybe Text
    <*> arbitraryReducedMaybe n -- finFeedAPIExchangeModelMic :: Maybe Text
    <*> arbitraryReducedMaybe n -- finFeedAPIExchangeModelOperatingMic :: Maybe Text
    <*> arbitraryReducedMaybe n -- finFeedAPIExchangeModelOprtSgmt :: Maybe Text
    <*> arbitraryReducedMaybe n -- finFeedAPIExchangeModelMarketNameInstitutionDescription :: Maybe Text
    <*> arbitraryReducedMaybe n -- finFeedAPIExchangeModelLegalEntityName :: Maybe Text
    <*> arbitraryReducedMaybe n -- finFeedAPIExchangeModelLei :: Maybe Text
    <*> arbitraryReducedMaybe n -- finFeedAPIExchangeModelMarketCategoryCode :: Maybe Text
    <*> arbitraryReducedMaybe n -- finFeedAPIExchangeModelAcronym :: Maybe Text
    <*> arbitraryReducedMaybe n -- finFeedAPIExchangeModelIsoCountryCode :: Maybe Text
    <*> arbitraryReducedMaybe n -- finFeedAPIExchangeModelCity :: Maybe Text
    <*> arbitraryReducedMaybe n -- finFeedAPIExchangeModelWebsite :: Maybe Text
    <*> arbitraryReducedMaybe n -- finFeedAPIExchangeModelStatus :: Maybe Text
    <*> arbitraryReducedMaybe n -- finFeedAPIExchangeModelCreationDate :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- finFeedAPIExchangeModelLastUpdateDate :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- finFeedAPIExchangeModelLastValidationDate :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- finFeedAPIExchangeModelExpiryDate :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- finFeedAPIExchangeModelComments :: Maybe Text
  
instance Arbitrary FinFeedAPISymbolModel where
  arbitrary = sized genFinFeedAPISymbolModel

genFinFeedAPISymbolModel :: Int -> Gen FinFeedAPISymbolModel
genFinFeedAPISymbolModel n =
  FinFeedAPISymbolModel
    <$> arbitraryReducedMaybe n -- finFeedAPISymbolModelSymbolId :: Maybe Text
    <*> arbitraryReducedMaybe n -- finFeedAPISymbolModelExchangeId :: Maybe Text
    <*> arbitraryReducedMaybe n -- finFeedAPISymbolModelSecurityCategory :: Maybe Text
    <*> arbitraryReducedMaybe n -- finFeedAPISymbolModelName :: Maybe Text
    <*> arbitraryReducedMaybe n -- finFeedAPISymbolModelDate :: Maybe Text
    <*> arbitraryReducedMaybe n -- finFeedAPISymbolModelAssetClass :: Maybe Text
    <*> arbitraryReducedMaybe n -- finFeedAPISymbolModelCfiCode :: Maybe Text
    <*> arbitraryReducedMaybe n -- finFeedAPISymbolModelCfiCategory :: Maybe Text
    <*> arbitraryReducedMaybe n -- finFeedAPISymbolModelCfiGroup :: Maybe Text
    <*> arbitraryReducedMaybe n -- finFeedAPISymbolModelCfiAttribute1 :: Maybe Text
    <*> arbitraryReducedMaybe n -- finFeedAPISymbolModelCfiAttribute2 :: Maybe Text
    <*> arbitraryReducedMaybe n -- finFeedAPISymbolModelCfiAttribute3 :: Maybe Text
    <*> arbitraryReducedMaybe n -- finFeedAPISymbolModelCfiAttribute4 :: Maybe Text
    <*> arbitraryReducedMaybe n -- finFeedAPISymbolModelCfiCategoryDesc :: Maybe Text
    <*> arbitraryReducedMaybe n -- finFeedAPISymbolModelCfiGroupDesc :: Maybe Text
  
instance Arbitrary Level1QuoteUpdateModel where
  arbitrary = sized genLevel1QuoteUpdateModel

genLevel1QuoteUpdateModel :: Int -> Gen Level1QuoteUpdateModel
genLevel1QuoteUpdateModel n =
  Level1QuoteUpdateModel
    <$> arbitraryReducedMaybe n -- level1QuoteUpdateModelSymbol :: Maybe Text
    <*> arbitraryReducedMaybe n -- level1QuoteUpdateModelTimestampNanos :: Maybe Integer
    <*> arbitraryReducedMaybe n -- level1QuoteUpdateModelTimestamp :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- level1QuoteUpdateModelIsSymbolAvailable :: Maybe Bool
    <*> arbitraryReducedMaybe n -- level1QuoteUpdateModelIsPrePostMarketSession :: Maybe Bool
    <*> arbitraryReducedMaybe n -- level1QuoteUpdateModelAskSize :: Maybe Int
    <*> arbitraryReducedMaybe n -- level1QuoteUpdateModelAskPrice :: Maybe Double
    <*> arbitraryReducedMaybe n -- level1QuoteUpdateModelBidPrice :: Maybe Double
    <*> arbitraryReducedMaybe n -- level1QuoteUpdateModelBidSize :: Maybe Int
  
instance Arbitrary Level2PriceLevelUpdateModel where
  arbitrary = sized genLevel2PriceLevelUpdateModel

genLevel2PriceLevelUpdateModel :: Int -> Gen Level2PriceLevelUpdateModel
genLevel2PriceLevelUpdateModel n =
  Level2PriceLevelUpdateModel
    <$> arbitraryReducedMaybe n -- level2PriceLevelUpdateModelSymbol :: Maybe Text
    <*> arbitraryReducedMaybe n -- level2PriceLevelUpdateModelTimestampNanos :: Maybe Integer
    <*> arbitraryReducedMaybe n -- level2PriceLevelUpdateModelTimestamp :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- level2PriceLevelUpdateModelIsSideBuy :: Maybe Bool
    <*> arbitraryReducedMaybe n -- level2PriceLevelUpdateModelIsEventProcessingComplete :: Maybe Bool
    <*> arbitraryReducedMaybe n -- level2PriceLevelUpdateModelSize :: Maybe Int
    <*> arbitraryReducedMaybe n -- level2PriceLevelUpdateModelPrice :: Maybe Double
  
instance Arbitrary Level3AddOrderModel where
  arbitrary = sized genLevel3AddOrderModel

genLevel3AddOrderModel :: Int -> Gen Level3AddOrderModel
genLevel3AddOrderModel n =
  Level3AddOrderModel
    <$> arbitraryReducedMaybe n -- level3AddOrderModelSymbol :: Maybe Text
    <*> arbitraryReducedMaybe n -- level3AddOrderModelTimestampNanos :: Maybe Integer
    <*> arbitraryReducedMaybe n -- level3AddOrderModelTimestamp :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- level3AddOrderModelIsSideBuy :: Maybe Bool
    <*> arbitraryReducedMaybe n -- level3AddOrderModelSize :: Maybe Int
    <*> arbitraryReducedMaybe n -- level3AddOrderModelPrice :: Maybe Double
    <*> arbitraryReducedMaybe n -- level3AddOrderModelOrderId :: Maybe Integer
  
instance Arbitrary Level3ClearBookModel where
  arbitrary = sized genLevel3ClearBookModel

genLevel3ClearBookModel :: Int -> Gen Level3ClearBookModel
genLevel3ClearBookModel n =
  Level3ClearBookModel
    <$> arbitraryReducedMaybe n -- level3ClearBookModelSymbol :: Maybe Text
    <*> arbitraryReducedMaybe n -- level3ClearBookModelTimestampNanos :: Maybe Integer
    <*> arbitraryReducedMaybe n -- level3ClearBookModelTimestamp :: Maybe DateTime
  
instance Arbitrary Level3DeleteOrderModel where
  arbitrary = sized genLevel3DeleteOrderModel

genLevel3DeleteOrderModel :: Int -> Gen Level3DeleteOrderModel
genLevel3DeleteOrderModel n =
  Level3DeleteOrderModel
    <$> arbitraryReducedMaybe n -- level3DeleteOrderModelSymbol :: Maybe Text
    <*> arbitraryReducedMaybe n -- level3DeleteOrderModelTimestampNanos :: Maybe Integer
    <*> arbitraryReducedMaybe n -- level3DeleteOrderModelTimestamp :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- level3DeleteOrderModelOrderIdReference :: Maybe Integer
  
instance Arbitrary Level3ExecutedOrderModel where
  arbitrary = sized genLevel3ExecutedOrderModel

genLevel3ExecutedOrderModel :: Int -> Gen Level3ExecutedOrderModel
genLevel3ExecutedOrderModel n =
  Level3ExecutedOrderModel
    <$> arbitraryReducedMaybe n -- level3ExecutedOrderModelSymbol :: Maybe Text
    <*> arbitraryReducedMaybe n -- level3ExecutedOrderModelTimestampNanos :: Maybe Integer
    <*> arbitraryReducedMaybe n -- level3ExecutedOrderModelTimestamp :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- level3ExecutedOrderModelOrderIdReference :: Maybe Integer
    <*> arbitraryReducedMaybe n -- level3ExecutedOrderModelSaleConditionFlags :: Maybe Int
    <*> arbitraryReducedMaybe n -- level3ExecutedOrderModelIsIntermarketSweep :: Maybe Bool
    <*> arbitraryReducedMaybe n -- level3ExecutedOrderModelIsExtendedHoursTrade :: Maybe Bool
    <*> arbitraryReducedMaybe n -- level3ExecutedOrderModelIsOddLotTrade :: Maybe Bool
    <*> arbitraryReducedMaybe n -- level3ExecutedOrderModelIsTradeThroughExempt :: Maybe Bool
    <*> arbitraryReducedMaybe n -- level3ExecutedOrderModelIsSinglePriceCrossTrade :: Maybe Bool
    <*> arbitraryReducedMaybe n -- level3ExecutedOrderModelSize :: Maybe Int
    <*> arbitraryReducedMaybe n -- level3ExecutedOrderModelPrice :: Maybe Double
    <*> arbitraryReducedMaybe n -- level3ExecutedOrderModelTradeId :: Maybe Integer
  
instance Arbitrary Level3ModifyOrderModel where
  arbitrary = sized genLevel3ModifyOrderModel

genLevel3ModifyOrderModel :: Int -> Gen Level3ModifyOrderModel
genLevel3ModifyOrderModel n =
  Level3ModifyOrderModel
    <$> arbitraryReducedMaybe n -- level3ModifyOrderModelSymbol :: Maybe Text
    <*> arbitraryReducedMaybe n -- level3ModifyOrderModelTimestampNanos :: Maybe Integer
    <*> arbitraryReducedMaybe n -- level3ModifyOrderModelTimestamp :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- level3ModifyOrderModelOrderIdReference :: Maybe Integer
    <*> arbitraryReducedMaybe n -- level3ModifyOrderModelIsPriorityReset :: Maybe Bool
    <*> arbitraryReducedMaybe n -- level3ModifyOrderModelSize :: Maybe Int
    <*> arbitraryReducedMaybe n -- level3ModifyOrderModelPrice :: Maybe Double
  
instance Arbitrary Level3OrderBookModel where
  arbitrary = sized genLevel3OrderBookModel

genLevel3OrderBookModel :: Int -> Gen Level3OrderBookModel
genLevel3OrderBookModel n =
  Level3OrderBookModel
    <$> arbitraryReducedMaybe n -- level3OrderBookModelAddOrder :: Maybe Level3AddOrderModel
    <*> arbitraryReducedMaybe n -- level3OrderBookModelDeleteOrder :: Maybe Level3DeleteOrderModel
    <*> arbitraryReducedMaybe n -- level3OrderBookModelModifyOrder :: Maybe Level3ModifyOrderModel
    <*> arbitraryReducedMaybe n -- level3OrderBookModelExecutedOrder :: Maybe Level3ExecutedOrderModel
    <*> arbitraryReducedMaybe n -- level3OrderBookModelClearBook :: Maybe Level3ClearBookModel
  
instance Arbitrary OHLCVExchangeTimeseriesItem where
  arbitrary = sized genOHLCVExchangeTimeseriesItem

genOHLCVExchangeTimeseriesItem :: Int -> Gen OHLCVExchangeTimeseriesItem
genOHLCVExchangeTimeseriesItem n =
  OHLCVExchangeTimeseriesItem
    <$> arbitraryReducedMaybe n -- oHLCVExchangeTimeseriesItemTimePeriodStart :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- oHLCVExchangeTimeseriesItemTimePeriodEnd :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- oHLCVExchangeTimeseriesItemTimeOpen :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- oHLCVExchangeTimeseriesItemTimeClose :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- oHLCVExchangeTimeseriesItemPriceOpen :: Maybe Double
    <*> arbitraryReducedMaybe n -- oHLCVExchangeTimeseriesItemPriceHigh :: Maybe Double
    <*> arbitraryReducedMaybe n -- oHLCVExchangeTimeseriesItemPriceLow :: Maybe Double
    <*> arbitraryReducedMaybe n -- oHLCVExchangeTimeseriesItemPriceClose :: Maybe Double
    <*> arbitraryReducedMaybe n -- oHLCVExchangeTimeseriesItemVolumeTraded :: Maybe Double
    <*> arbitraryReducedMaybe n -- oHLCVExchangeTimeseriesItemTradesCount :: Maybe Integer
    <*> arbitraryReducedMaybe n -- oHLCVExchangeTimeseriesItemSymbolIdExchange :: Maybe Text
  
instance Arbitrary OHLCVTimeseriesItem where
  arbitrary = sized genOHLCVTimeseriesItem

genOHLCVTimeseriesItem :: Int -> Gen OHLCVTimeseriesItem
genOHLCVTimeseriesItem n =
  OHLCVTimeseriesItem
    <$> arbitraryReducedMaybe n -- oHLCVTimeseriesItemTimePeriodStart :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- oHLCVTimeseriesItemTimePeriodEnd :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- oHLCVTimeseriesItemTimeOpen :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- oHLCVTimeseriesItemTimeClose :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- oHLCVTimeseriesItemPriceOpen :: Maybe Double
    <*> arbitraryReducedMaybe n -- oHLCVTimeseriesItemPriceHigh :: Maybe Double
    <*> arbitraryReducedMaybe n -- oHLCVTimeseriesItemPriceLow :: Maybe Double
    <*> arbitraryReducedMaybe n -- oHLCVTimeseriesItemPriceClose :: Maybe Double
    <*> arbitraryReducedMaybe n -- oHLCVTimeseriesItemVolumeTraded :: Maybe Double
    <*> arbitraryReducedMaybe n -- oHLCVTimeseriesItemTradesCount :: Maybe Integer
  
instance Arbitrary OHLCVTimeseriesPeriod where
  arbitrary = sized genOHLCVTimeseriesPeriod

genOHLCVTimeseriesPeriod :: Int -> Gen OHLCVTimeseriesPeriod
genOHLCVTimeseriesPeriod n =
  OHLCVTimeseriesPeriod
    <$> arbitraryReducedMaybe n -- oHLCVTimeseriesPeriodPeriodId :: Maybe Text
    <*> arbitraryReducedMaybe n -- oHLCVTimeseriesPeriodLengthSeconds :: Maybe Int
    <*> arbitraryReducedMaybe n -- oHLCVTimeseriesPeriodLengthMonths :: Maybe Int
    <*> arbitraryReducedMaybe n -- oHLCVTimeseriesPeriodUnitCount :: Maybe Int
    <*> arbitraryReducedMaybe n -- oHLCVTimeseriesPeriodUnitName :: Maybe Text
    <*> arbitraryReducedMaybe n -- oHLCVTimeseriesPeriodDisplayName :: Maybe Text
  
instance Arbitrary TradeTradeModel where
  arbitrary = sized genTradeTradeModel

genTradeTradeModel :: Int -> Gen TradeTradeModel
genTradeTradeModel n =
  TradeTradeModel
    <$> arbitraryReducedMaybe n -- tradeTradeModelIsTradeBreak :: Maybe Bool
    <*> arbitraryReducedMaybe n -- tradeTradeModelSymbol :: Maybe Text
    <*> arbitraryReducedMaybe n -- tradeTradeModelTimestampNanos :: Maybe Integer
    <*> arbitraryReducedMaybe n -- tradeTradeModelTimestamp :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- tradeTradeModelSize :: Maybe Int
    <*> arbitraryReducedMaybe n -- tradeTradeModelPrice :: Maybe Double
    <*> arbitraryReducedMaybe n -- tradeTradeModelTradeId :: Maybe Integer
    <*> arbitraryReducedMaybe n -- tradeTradeModelIsIntermarketSweep :: Maybe Bool
    <*> arbitraryReducedMaybe n -- tradeTradeModelIsExtendedHoursTrade :: Maybe Bool
    <*> arbitraryReducedMaybe n -- tradeTradeModelIsOddLotTrade :: Maybe Bool
    <*> arbitraryReducedMaybe n -- tradeTradeModelIsTradeThroughExempt :: Maybe Bool
    <*> arbitraryReducedMaybe n -- tradeTradeModelIsSinglePriceCrossTrade :: Maybe Bool
  



