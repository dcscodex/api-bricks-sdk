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

import OMS-REST.Model
import OMS-REST.MimeTypes

main :: IO ()
main =
  hspec $ modifyMaxSize (const 10) $ do
    describe "JSON instances" $ do
      pure ()
      propMimeEq MimeJSON (Proxy :: Proxy Balance)
      propMimeEq MimeJSON (Proxy :: Proxy BalanceData)
      propMimeEq MimeJSON (Proxy :: Proxy CancelAllOrder)
      propMimeEq MimeJSON (Proxy :: Proxy CancelOrder)
      propMimeEq MimeJSON (Proxy :: Proxy CreateOrder400)
      propMimeEq MimeJSON (Proxy :: Proxy Messages)
      propMimeEq MimeJSON (Proxy :: Proxy MessagesInfo)
      propMimeEq MimeJSON (Proxy :: Proxy MessagesOk)
      propMimeEq MimeJSON (Proxy :: Proxy NewOrder)
      propMimeEq MimeJSON (Proxy :: Proxy Order)
      propMimeEq MimeJSON (Proxy :: Proxy OrderData)
      propMimeEq MimeJSON (Proxy :: Proxy OrderLive)
      propMimeEq MimeJSON (Proxy :: Proxy OrderStatus)
      propMimeEq MimeJSON (Proxy :: Proxy Position)
      propMimeEq MimeJSON (Proxy :: Proxy PositionData)
      propMimeEq MimeJSON (Proxy :: Proxy TimeInForce)
      
