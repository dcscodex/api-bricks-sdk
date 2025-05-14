{-# LANGUAGE OverloadedStrings #-}

module CoinApi.Types.Trade where

import CoinApi.Types.Internal
import Text.Read (readEither)
import Data.Aeson.Types

data TakerSide = BUY | SELL | BUY_ESTIMATED | SELL_ESTIMATED | UNKNOWN
  deriving (Show, Read, Eq)

instance FromJSON TakerSide where
  parseJSON = withText "TakerSide" $ \text -> case readEither (unpack text) of
                                                Right ts -> return ts
                                                Left err -> fail err

data Trade = Trade { symbol_id     :: !Text
                   , time_exchange :: !UTCTime
                   , time_coinapi  :: !UTCTime
                   , uuid          :: !Text
                   , price         :: !Scientific
                   , size          :: !Scientific
                   , taker_side    :: !TakerSide }
  deriving (Show, Eq)

instance FromJSON Trade where
  parseJSON = withObject "Trade" $ \o -> Trade
                                         <$> o .: "symbol_id"
                                         <*> fmap fromTime (o .: "time_exchange")
                                         <*> fmap fromTime (o .: "time_coinapi")
                                         <*> o .: "uuid"
                                         <*> o .: "price"
                                         <*> o .: "size"
                                         <*> o .: "taker_side"
