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
      propMimeEq MimeJSON (Proxy :: Proxy DTOExtractorType)
      propMimeEq MimeJSON (Proxy :: Proxy DTOFilingMetadataDto)
      propMimeEq MimeJSON (Proxy :: Proxy DTOFilingSortBy)
      propMimeEq MimeJSON (Proxy :: Proxy DTOSecFilingResultDto)
      propMimeEq MimeJSON (Proxy :: Proxy MvcProblemDetails)
      propMimeEq MimeJSON (Proxy :: Proxy MvcValidationProblemDetails)
      
