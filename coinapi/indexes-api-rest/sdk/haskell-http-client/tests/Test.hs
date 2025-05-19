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

import IndexesREST.Model
import IndexesREST.MimeTypes

main :: IO ()
main =
  hspec $ modifyMaxSize (const 10) $ do
    describe "JSON instances" $ do
      pure ()
      propMimeEq MimeJSON (Proxy :: Proxy IndexesIndexDefinitionInputData)
      propMimeEq MimeJSON (Proxy :: Proxy IndexesIndexDefinitionSnapshotEntry)
      propMimeEq MimeJSON (Proxy :: Proxy IndexesIndexIdentifier)
      propMimeEq MimeJSON (Proxy :: Proxy IndexesIndexMultiAssetWeight)
      propMimeEq MimeJSON (Proxy :: Proxy IndexesIndexTimeseriesItem)
      propMimeEq MimeJSON (Proxy :: Proxy IndexesIndexValue)
      propMimeEq MimeJSON (Proxy :: Proxy IndexesIndexValueComponent)
      propMimeEq MimeJSON (Proxy :: Proxy MetadataExchange)
      propMimeEq MimeJSON (Proxy :: Proxy MetadataTimeseriesPeriod)
      
