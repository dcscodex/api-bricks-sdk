{-# LANGUAGE OverloadedStrings #-}

module CoinApi.Types.Symbol where

import CoinApi.Types.Internal
import Text.Read (readEither)
import Data.Aeson.Types

data SymbolType = SPOT | FUTURE | OPTION
  deriving (Show, Read, Eq)

instance FromJSON SymbolType where
  parseJSON = withText "SymbolType" $ \text -> case readEither (unpack text) of
                                                 Right sym -> return sym
                                                 Left err  -> fail err

data Symbol = Symbol { symbol_id              :: !Text
                     , exchange_id            :: !Text
                     , symbol_type            :: !SymbolType
                     , asset_id_base          :: !Text
                     , asset_id_quote         :: !Text
                     , future_delivery_time   :: !UTCTime
                     , option_type_is_call    :: !Bool
                     , option_strike_price    :: !Scientific
                     , option_contract_unit   :: !Int
                     , option_exercise_style  :: !Text
                     , option_expiration_time :: !UTCTime }
  deriving (Show, Eq)

instance FromJSON Symbol where
  parseJSON = withObject "Symbol" $ \o -> Symbol
                                          <$> o .: "symbol_id"
                                          <*> o .: "exchange_id"
                                          <*> o .: "symbol_type"
                                          <*> o .: "asset_id_base"
                                          <*> o .: "asset_id_quote"
                                          <*> fmap fromTime (o .:: "future_delivery_time")
                                          <*> o .:: "option_type_is_call"
                                          <*> o .:: "option_strike_price"
                                          <*> o .:: "option_contract_unit"
                                          <*> o .:: "option_exercise_style"
                                          <*> fmap fromTime (o .:: "option_expiration_time")
