{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE PartialTypeSignatures #-}

module Main where

import Data.Typeable (Proxy(..))
import Test.Hspec
import Test.Hspec.QuickCheck

import PropMime
import Instances ()

import FinFeedAPIStockREST.Model
import FinFeedAPIStockREST.MimeTypes

main :: IO ()
main =
  hspec $ modifyMaxSize (const 10) $ do
    describe "JSON instances" $ do
      pure ()
      propMimeEq MimeJSON (Proxy :: Proxy AdminAdminMessageModel)
      propMimeEq MimeJSON (Proxy :: Proxy AdminAuctionInformationModel)
      propMimeEq MimeJSON (Proxy :: Proxy AdminOfficialPriceModel)
      propMimeEq MimeJSON (Proxy :: Proxy AdminOperationalHaltStatusModel)
      propMimeEq MimeJSON (Proxy :: Proxy AdminRetailLiquidityIndicatorModel)
      propMimeEq MimeJSON (Proxy :: Proxy AdminSecurityDirectoryModel)
      propMimeEq MimeJSON (Proxy :: Proxy AdminSecurityEventModel)
      propMimeEq MimeJSON (Proxy :: Proxy AdminShortSalePriceTestStatusModel)
      propMimeEq MimeJSON (Proxy :: Proxy AdminSystemEventModel)
      propMimeEq MimeJSON (Proxy :: Proxy AdminTradingStatusModel)
      propMimeEq MimeJSON (Proxy :: Proxy FinFeedAPIExchangeModel)
      propMimeEq MimeJSON (Proxy :: Proxy FinFeedAPISymbolModel)
      propMimeEq MimeJSON (Proxy :: Proxy Level1QuoteUpdateModel)
      propMimeEq MimeJSON (Proxy :: Proxy Level2PriceLevelUpdateModel)
      propMimeEq MimeJSON (Proxy :: Proxy Level3AddOrderModel)
      propMimeEq MimeJSON (Proxy :: Proxy Level3ClearBookModel)
      propMimeEq MimeJSON (Proxy :: Proxy Level3DeleteOrderModel)
      propMimeEq MimeJSON (Proxy :: Proxy Level3ExecutedOrderModel)
      propMimeEq MimeJSON (Proxy :: Proxy Level3ModifyOrderModel)
      propMimeEq MimeJSON (Proxy :: Proxy Level3OrderBookModel)
      propMimeEq MimeJSON (Proxy :: Proxy OHLCVExchangeTimeseriesItem)
      propMimeEq MimeJSON (Proxy :: Proxy OHLCVTimeseriesItem)
      propMimeEq MimeJSON (Proxy :: Proxy OHLCVTimeseriesPeriod)
      propMimeEq MimeJSON (Proxy :: Proxy TradeTradeModel)
      
