{-# LANGUAGE OverloadedStrings #-}

module CoinApi.Types.OHLCV where

import CoinApi.Types.Internal

data OHLCV = OHLCV { time_period_start :: !UTCTime
                   , time_period_end   :: !UTCTime
                   , time_open         :: !UTCTime
                   , time_close        :: !UTCTime
                   , price_open        :: !Scientific
                   , price_high        :: !Scientific
                   , price_low         :: !Scientific
                   , price_close       :: !Scientific
                   , volume_traded     :: !Scientific
                   , trades_count      :: !Int }
  deriving (Show, Eq)

instance FromJSON OHLCV where
  parseJSON = withObject "OHLCV" $ \o -> OHLCV
                                         <$> fmap fromTime (o .: "time_period_start")
                                         <*> fmap fromTime (o .: "time_period_end")
                                         <*> fmap fromTime (o .: "time_open")
                                         <*> fmap fromTime (o .: "time_close")
                                         <*> o .: "price_open"
                                         <*> o .: "price_high"
                                         <*> o .: "price_low"
                                         <*> o .: "price_close"
                                         <*> o .: "volume_traded"
                                         <*> o .: "trades_count"
