{-# LANGUAGE OverloadedStrings #-}

module CoinApi.Types.Quote where

import CoinApi.Types.Internal
import CoinApi.Types.Trade
import Data.Aeson.Types

data Quote = Quote { symbol_id     :: !Text
                   , time_exchange :: !UTCTime
                   , time_coinapi  :: !UTCTime
                   , ask_price     :: !Scientific
                   , ask_size      :: !Scientific
                   , bid_price     :: !Scientific
                   , bid_size      :: !Scientific
                   , last_trade    :: Maybe Trade }
  deriving (Show, Eq)

instance FromJSON Quote where
  parseJSON = withObject "Quote" $ \o -> do symbol_id <- o .: "symbol_id"
                                            Quote symbol_id
                                              <$> fmap fromTime (o .: "time_exchange")
                                              <*> fmap fromTime (o .: "time_coinapi")
                                              <*> o .: "ask_price"
                                              <*> o .: "ask_size"
                                              <*> o .: "bid_price"
                                              <*> o .: "bid_size"
                                              <*> (parseLastTrade symbol_id =<< (o .:? "last_trade"))
    where parseLastTrade _         Nothing  = return Nothing
          parseLastTrade symbol_id (Just o) = Just <$> (Trade symbol_id
                                                        <$> fmap fromTime (o .: "time_exchange")
                                                        <*> fmap fromTime (o .: "time_coinapi")
                                                        <*> o .: "uuid"
                                                        <*> o .: "price"
                                                        <*> o .: "size"
                                                        <*> o .: "taker_side")
