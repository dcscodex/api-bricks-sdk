{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE TypeSynonymInstances #-}

module CoinApi.Types.Internal (module Data.Aeson
                              ,module Data.Text
                              ,module Data.Time
                              ,module Data.Scientific
                              ,Default (..)
                              ,Time (..)
                              ,fromTime
                              ,numToBool
                              ,(.::)) where

import qualified Data.ByteString.Lazy as L
import Data.Aeson
import Data.Aeson.Types
import Data.Text (Text, unpack)
import Data.Time
import Data.Scientific
import Control.Applicative

import Debug.Trace

class Default a where
  def :: a

instance Default [a] where
  def = []

instance Default Text where
  def = ""

instance Default Bool where
  def = False

instance Default Int where
  def = 0

instance Default Scientific where
  def = 0

instance Default Integer where
  def = 0

instance Default Time where
  def = Time $ UTCTime (ModifiedJulianDay 0) (fromIntegral 0)

numToBool :: Int -> Bool
numToBool = (== 1)

newtype Time = Time UTCTime
  deriving (Show, Eq)

fromTime :: Time -> UTCTime
fromTime (Time t) = t

instance FromJSON Time where
  parseJSON = withText "UTCTime" $ \text -> let parseT format = parseTimeM True defaultTimeLocale format (unpack text)
                                            in case parseT "%FT%T%QZ" <|>
                                                    parseT "%FT%T%Qz" <|>
                                                    parseT "%FT%T%Q" of
                                                 Just time -> return $ Time time
                                                 Nothing   -> fail "Error parsing UTCTime"

(.::) :: (Default a, FromJSON a) => Object -> Text -> Parser a
object .:: text = object .:? text .!= def
