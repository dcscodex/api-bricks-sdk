{-# LANGUAGE OverloadedStrings #-}

module CoinApi.Types.Orderbook where

import CoinApi.Types.Internal

data Pair = Pair { price :: !Scientific
                 , size  :: !Int }
  deriving (Show, Eq)

instance FromJSON Pair where
  parseJSON = withObject "Bid/ask" $ \o -> Pair <$> o .: "price" <*> o .: "size"

data Orderbook = Orderbook { symbol_id :: !Text
                           , time_exchange :: !UTCTime
                           , time_coinapi :: !UTCTime
                           , asks :: [Pair]
                           , bids :: [Pair] }
  deriving (Show, Eq)

instance FromJSON Orderbook where
  parseJSON = withObject "Orderbook" $ \o -> Orderbook
                                             <$> o .: "symbol_id"
                                             <*> fmap fromTime (o .: "time_exchange")
                                             <*> fmap fromTime (o .: "time_coinapi")
                                             <*> o .: "asks"
                                             <*> o .: "bids"
