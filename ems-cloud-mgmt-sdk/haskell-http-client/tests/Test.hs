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

import EMS-ManagedCloudREST.Model
import EMS-ManagedCloudREST.MimeTypes

main :: IO ()
main =
  hspec $ modifyMaxSize (const 10) $ do
    describe "JSON instances" $ do
      pure ()
      propMimeEq MimeJSON (Proxy :: Proxy AccountData)
      propMimeEq MimeJSON (Proxy :: Proxy AccountEndpoint)
      propMimeEq MimeJSON (Proxy :: Proxy AccountInfo)
      propMimeEq MimeJSON (Proxy :: Proxy ExchangeLoginRequire)
      propMimeEq MimeJSON (Proxy :: Proxy GetAccount)
      propMimeEq MimeJSON (Proxy :: Proxy KeyValue)
      propMimeEq MimeJSON (Proxy :: Proxy Locations)
      propMimeEq MimeJSON (Proxy :: Proxy UpdateAccount)
      
