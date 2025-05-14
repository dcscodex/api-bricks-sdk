{-# LANGUAGE OverloadedStrings #-}

module CoinApi.Types.Rate where

import CoinApi.Types.Internal

data Rate = Rate { time           :: !UTCTime
                 , asset_id_base  :: !Text
                 , asset_id_quote :: !Text
                 , rate           :: !Scientific }
  deriving (Show, Eq)

instance FromJSON Rate where
  parseJSON = withObject "Rate" $ \o -> Rate
                                        <$> fmap fromTime (o .: "time")
                                        <*> o .: "asset_id_base"
                                        <*> o .: "asset_id_quote"
                                        <*> o .: "rate"
