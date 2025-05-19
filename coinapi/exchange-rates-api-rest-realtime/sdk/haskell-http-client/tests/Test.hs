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

import ExchangeRatesRealtimeREST.Model
import ExchangeRatesRealtimeREST.MimeTypes

main :: IO ()
main =
  hspec $ modifyMaxSize (const 10) $ do
    describe "JSON instances" $ do
      pure ()
      propMimeEq MimeJSON (Proxy :: Proxy V1Asset)
      propMimeEq MimeJSON (Proxy :: Proxy V1ChainNetworkAddress)
      propMimeEq MimeJSON (Proxy :: Proxy V1ExchangeRate)
      propMimeEq MimeJSON (Proxy :: Proxy V1ExchangeRates)
      propMimeEq MimeJSON (Proxy :: Proxy V1ExchangeRatesRate)
      propMimeEq MimeJSON (Proxy :: Proxy V1Icon)
      
