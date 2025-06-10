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

import REST.Model
import REST.MimeTypes

main :: IO ()
main =
  hspec $ modifyMaxSize (const 10) $ do
    describe "JSON instances" $ do
      pure ()
      propMimeEq MimeJSON (Proxy :: Proxy ModelsExchangeTimeseriesItem)
      propMimeEq MimeJSON (Proxy :: Proxy OptionsOptionExchangeGroup)
      propMimeEq MimeJSON (Proxy :: Proxy OptionsStrike)
      propMimeEq MimeJSON (Proxy :: Proxy V1Asset)
      propMimeEq MimeJSON (Proxy :: Proxy V1Chain)
      propMimeEq MimeJSON (Proxy :: Proxy V1ChainNetworkAddress)
      propMimeEq MimeJSON (Proxy :: Proxy V1Exchange)
      propMimeEq MimeJSON (Proxy :: Proxy V1ExchangeRate)
      propMimeEq MimeJSON (Proxy :: Proxy V1ExchangeRates)
      propMimeEq MimeJSON (Proxy :: Proxy V1ExchangeRatesRate)
      propMimeEq MimeJSON (Proxy :: Proxy V1ExchangeRatesTimeseriesItem)
      propMimeEq MimeJSON (Proxy :: Proxy V1ExternalAsset)
      propMimeEq MimeJSON (Proxy :: Proxy V1ExternalExchange)
      propMimeEq MimeJSON (Proxy :: Proxy V1GeneralData)
      propMimeEq MimeJSON (Proxy :: Proxy V1Icon)
      propMimeEq MimeJSON (Proxy :: Proxy V1LastTrade)
      propMimeEq MimeJSON (Proxy :: Proxy V1ListingItem)
      propMimeEq MimeJSON (Proxy :: Proxy V1Metric)
      propMimeEq MimeJSON (Proxy :: Proxy V1MetricData)
      propMimeEq MimeJSON (Proxy :: Proxy V1MetricInfo)
      propMimeEq MimeJSON (Proxy :: Proxy V1OrderBook)
      propMimeEq MimeJSON (Proxy :: Proxy V1OrderBookBase)
      propMimeEq MimeJSON (Proxy :: Proxy V1OrderBookDepth)
      propMimeEq MimeJSON (Proxy :: Proxy V1Quote)
      propMimeEq MimeJSON (Proxy :: Proxy V1QuoteTrade)
      propMimeEq MimeJSON (Proxy :: Proxy V1Symbol)
      propMimeEq MimeJSON (Proxy :: Proxy V1SymbolMapping)
      propMimeEq MimeJSON (Proxy :: Proxy V1TimeseriesItem)
      propMimeEq MimeJSON (Proxy :: Proxy V1TimeseriesPeriod)
      propMimeEq MimeJSON (Proxy :: Proxy V1Trade)
      
