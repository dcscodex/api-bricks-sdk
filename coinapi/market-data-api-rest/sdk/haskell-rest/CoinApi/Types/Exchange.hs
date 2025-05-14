{-# LANGUAGE OverloadedStrings #-}

module CoinApi.Types.Exchange where

import CoinApi.Types.Internal

data Exchange = Exchange { exchange_id :: !Text
                         , website     :: !Text
                         , name        :: !Text }
  deriving (Show, Eq)

instance FromJSON Exchange where
  parseJSON = withObject "Exchange" $ \o -> Exchange
                                            <$> o .: "exchange_id"
                                            <*> o .: "website"
                                            <*> o .:: "name"
