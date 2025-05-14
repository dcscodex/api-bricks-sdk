{-# LANGUAGE OverloadedStrings #-}

module CoinApi (ApiKey (..)
               ,metadata_list_exchanges
               ,metadata_list_assets
               ,metadata_list_symbols
               ,exchange_rates_get_specific_rate
               ,exchange_rates_get_specific_rate_t
               ,exchange_rates_get_all_current_rates
               ,ohlcv_list_all_periods
               ,ohlcv_latest_data
               ,ohlcv_latest_data_l
               ,ohlcv_historical_data
               ,ohlcv_historical_data_e
               ,ohlcv_historical_data_l
               ,ohlcv_historical_data_el
               ,trades_latest_data
               ,trades_latest_data_l
               ,trades_latest_data_s
               ,trades_latest_data_sl
               ,trades_historical_data
               ,trades_historical_data_e
               ,trades_historical_data_l
               ,trades_historical_data_el
               ,quotes_current_data
               ,quotes_current_data_s
               ,quotes_latest_data
               ,quotes_latest_data_s
               ,quotes_latest_data_l
               ,quotes_latest_data_sl
               ,quotes_historical_data
               ,quotes_historical_data_e
               ,quotes_historical_data_l
               ,quotes_historical_data_el
               ,orderbooks_current_data
               ,orderbooks_current_data_s
               ,orderbooks_latest_data
               ,orderbooks_latest_data_l
               ,orderbooks_historical_data
               ,orderbooks_historical_data_e
               ,orderbooks_historical_data_l
               ,orderbooks_historical_data_el) where

import Debug.Trace

-- CoinApi types

import CoinApi.Types.Asset (Asset)
import qualified CoinApi.Types.Asset as Asset

import CoinApi.Types.Exchange (Exchange)
import qualified CoinApi.Types.Exchange as Exchange

import CoinApi.Types.Message (Message)
import qualified CoinApi.Types.Message as Message

import CoinApi.Types.OHLCV (OHLCV)
import qualified CoinApi.Types.OHLCV as OHLCV

import CoinApi.Types.Orderbook (Orderbook)
import qualified CoinApi.Types.Orderbook as Orderbook

import CoinApi.Types.Period (Period)
import qualified CoinApi.Types.Period as Period

import CoinApi.Types.Quote (Quote)
import qualified CoinApi.Types.Quote as Quote

import CoinApi.Types.Rate (Rate)
import qualified CoinApi.Types.Rate as Rate

import CoinApi.Types.Symbol (Symbol, SymbolType (..))
import qualified CoinApi.Types.Symbol as Symbol

import CoinApi.Types.Trade (Trade)
import qualified CoinApi.Types.Trade as Trade

----

import Data.Aeson
import Data.Aeson.Types
import Data.Time
import Data.Text (Text, unpack)
import qualified Data.ByteString.Lazy as L
import qualified Data.ByteString.Char8 as C8
import qualified Data.Vector as V
import Control.Monad
import Control.Monad.IO.Class
import Network.HTTP.Simple
import Network.HTTP.Conduit
import Network.HTTP.Types

type ApiKey = String

coinAPIHost :: String
coinAPIHost = "https://rest.coinapi.io"

showTime :: UTCTime -> String
showTime time = take (length str - 5) str ++ "Z"
  where str = formatTime defaultTimeLocale "%0Y-%m-%dT%T.%q" time

request :: (MonadIO m, FromJSON a) => ApiKey -> String -> m (Either String a)
request apiKey path = do response <- httpLBS req
                         let msg    = statusMessage status
                             status = getResponseStatus response
                             body   = getResponseBody response
                         return $ if status == ok200
                                  then eitherDecode body
                                  else let msg = eitherDecode body :: Either String Message
                                       in case msg of
                                            Right msg -> Left $ "Bad request: " ++ (unpack $ Message.fromMessage msg)
                                            Left err  -> Left err
  where initReq = parseRequest_ $ coinAPIHost ++ path
        req = initReq { requestHeaders = [("X-CoinAPI-Key", C8.pack apiKey)] }

-----

metadata_list_exchanges :: MonadIO m => ApiKey -> m (Either String [Exchange])
metadata_list_exchanges apiKey = request apiKey "/v1/exchanges"

metadata_list_assets :: MonadIO m => ApiKey -> m (Either String [Asset])
metadata_list_assets apiKey = request apiKey "/v1/assets"

metadata_list_symbols :: MonadIO m => ApiKey -> m (Either String [Symbol])
metadata_list_symbols apiKey = request apiKey "/v1/symbols"

exchange_rates_get_specific_rate :: MonadIO m => ApiKey -> String -> String -> m (Either String Rate)
exchange_rates_get_specific_rate apiKey asset_id_base asset_id_quote =
  request apiKey ("/v1/exchangerate/" ++ asset_id_base ++ "/" ++ asset_id_quote)

exchange_rates_get_specific_rate_t :: MonadIO m => ApiKey -> String -> String -> UTCTime -> m (Either String Rate)
exchange_rates_get_specific_rate_t apiKey asset_id_base asset_id_quote time =
  request apiKey ("/v1/exchangerate/" ++ asset_id_base ++
                   "/" ++ asset_id_quote ++
                   "?time=" ++ showTime time)

exchange_rates_get_all_current_rates :: MonadIO m => ApiKey -> String -> m (Either String [Rate])
exchange_rates_get_all_current_rates apiKey asset_id_base =
  (>>= parseEither parseRates) <$> request apiKey ("/v1/exchangerate/" ++ asset_id_base)
  where parseRates v = do (base, rates) <- parseObject v
                          rates' <- withArray "rates" (return . V.toList) rates
                          parseList base rates'

        parseObject :: Value -> Parser (Text, Value)
        parseObject = withObject "" $ \o -> do
          base <- o .: "asset_id_base"
          rates <- o .: "rates"
          return (base, rates)

        parseList :: Text -> [Value] -> Parser [Rate]
        parseList base = mapM (withObject "Rate" $ \o -> Rate.Rate
                                                           <$> o .: "time"
                                                           <*> return base
                                                           <*> o .: "asset_id_quote"
                                                           <*> o .: "rate")


ohlcv_list_all_periods :: MonadIO m => ApiKey -> m (Either String [Period])
ohlcv_list_all_periods apiKey = request apiKey "/v1/ohlcv/periods"

ohlcv_latest_data :: MonadIO m => ApiKey -> String -> String -> m (Either String [OHLCV])
ohlcv_latest_data apiKey symbol_id period_id = request apiKey ("/v1/ohlcv/" ++
                                                               symbol_id ++ "/" ++
                                                               "latest?period_id=" ++ period_id)

ohlcv_latest_data_l :: MonadIO m => ApiKey -> String -> String -> Int -> m (Either String [OHLCV])
ohlcv_latest_data_l apiKey symbol_id period_id limit = request apiKey ("/v1/ohlcv/" ++
                                                                       symbol_id ++ "/" ++
                                                                       "latest?period_id=" ++ period_id ++
                                                                       "&amp;limit=" ++ show limit)

ohlcv_historical_data :: MonadIO m => ApiKey -> String -> String -> UTCTime -> m (Either String [OHLCV])
ohlcv_historical_data apiKey symbol_id period_id time_start = request apiKey ("/v1/ohlcv/" ++
                                                                              symbol_id ++ "/" ++
                                                                              "history?period_id=" ++ period_id ++
                                                                              "&amp;time_start=" ++ showTime time_start)

ohlcv_historical_data_e :: MonadIO m => ApiKey -> String -> String -> UTCTime -> UTCTime -> m (Either String [OHLCV])
ohlcv_historical_data_e apiKey symbol_id period_id time_start time_end = request apiKey ("/v1/ohlcv/" ++
                                                                                         symbol_id ++ "/" ++
                                                                                         "history?period_id=" ++ period_id ++
                                                                                         "&amp;time_start=" ++ showTime time_start ++
                                                                                         "&amp;time_end=" ++ showTime time_end)

ohlcv_historical_data_l :: MonadIO m => ApiKey -> String -> String -> UTCTime -> Int -> m (Either String [OHLCV])
ohlcv_historical_data_l apiKey symbol_id period_id time_start limit = request apiKey ("/v1/ohlcv/" ++
                                                                                      symbol_id ++ "/" ++
                                                                                      "history?period_id=" ++ period_id ++
                                                                                      "&amp;time_start=" ++ showTime time_start ++
                                                                                      "&amp;limit=" ++ show limit)

ohlcv_historical_data_el :: MonadIO m => ApiKey -> String -> String -> UTCTime -> UTCTime -> Int -> m (Either String [OHLCV])
ohlcv_historical_data_el apiKey symbol_id period_id time_start time_end limit = request apiKey ("/v1/ohlcv/" ++
                                                                                                symbol_id ++ "/" ++
                                                                                                "history?period_id=" ++ period_id ++
                                                                                                "&amp;time_start=" ++ showTime time_start ++
                                                                                                "&amp;time_end=" ++ showTime time_end ++
                                                                                                "&amp;limit=" ++ show limit)

trades_latest_data :: MonadIO m => ApiKey -> m (Either String [Trade])
trades_latest_data apiKey = request apiKey "/v1/trades/latest"

trades_latest_data_s :: MonadIO m => ApiKey -> String -> m (Either String [Trade])
trades_latest_data_s apiKey symbol_id = request apiKey ("/v1/trades/" ++ symbol_id ++ "/latest")

trades_latest_data_l :: MonadIO m => ApiKey -> Int -> m (Either String [Trade])
trades_latest_data_l apiKey limit = request apiKey ("/v1/trades/latest?limit=" ++ show limit)

trades_latest_data_sl :: MonadIO m => ApiKey -> String -> Int -> m (Either String [Trade])
trades_latest_data_sl apiKey symbol_id limit = request apiKey ("/v1/trades/" ++ symbol_id ++ "/latest?limit=" ++ show limit)

trades_historical_data :: MonadIO m => ApiKey -> String -> UTCTime -> m (Either String [Trade])
trades_historical_data apiKey symbol_id time_start = request apiKey ("/v1/trades/" ++ symbol_id ++
                                                                      "/history?time_start=" ++ showTime time_start)

trades_historical_data_e :: MonadIO m => ApiKey -> String -> UTCTime -> UTCTime -> m (Either String [Trade])
trades_historical_data_e apiKey symbol_id time_start time_end = request apiKey ("/v1/trades/" ++ symbol_id ++
                                                                                "/history?time_start=" ++ showTime time_start ++
                                                                                "&amp;time_end=" ++ showTime time_end)
                                                                                

trades_historical_data_l :: MonadIO m => ApiKey -> String -> UTCTime -> Int -> m (Either String [Trade])
trades_historical_data_l apiKey symbol_id time_start limit = request apiKey ("/v1/trades/" ++ symbol_id ++
                                                                             "/history?time_start=" ++ showTime time_start ++
                                                                             "&amp;limit=" ++ show limit)

trades_historical_data_el :: MonadIO m => ApiKey -> String -> UTCTime -> UTCTime -> Int -> m (Either String [Trade])
trades_historical_data_el apiKey symbol_id time_start time_end limit = request apiKey ("/v1/trades/" ++ symbol_id ++
                                                                                       "/history?time_start=" ++ showTime time_start ++
                                                                                       "&amp;time_end=" ++ showTime time_end ++
                                                                                       "&amp;limit=" ++ show limit)

quotes_current_data :: MonadIO m => ApiKey -> m (Either String [Quote])
quotes_current_data apiKey = request apiKey "/v1/quotes/current"

quotes_current_data_s :: MonadIO m => ApiKey -> String -> m (Either String Quote)
quotes_current_data_s apiKey symbol_id = request apiKey ("/v1/quotes/" ++ symbol_id ++ "/current")

quotes_latest_data :: MonadIO m => ApiKey -> m (Either String [Quote])
quotes_latest_data apiKey = request apiKey "/v1/quotes/latest"

quotes_latest_data_s :: MonadIO m => ApiKey -> String -> m (Either String [Quote])
quotes_latest_data_s apiKey symbol_id = request apiKey ("/v1/quotes/" ++ symbol_id ++ "/latest")

quotes_latest_data_l :: MonadIO m => ApiKey -> Int -> m (Either String [Quote])
quotes_latest_data_l apiKey limit = request apiKey ("/v1/quotes/latest?limit=" ++ show limit)

quotes_latest_data_sl :: MonadIO m => ApiKey -> String -> Int -> m (Either String [Quote])
quotes_latest_data_sl apiKey symbol_id limit = request apiKey ("/v1/quotes/" ++ symbol_id ++ "/latest?limit=" ++ show limit)

quotes_historical_data :: MonadIO m => ApiKey -> String -> UTCTime -> m (Either String [Quote])
quotes_historical_data apiKey symbol_id time_start = request apiKey ("/v1/quotes/" ++ symbol_id ++
                                                                    "/history?time_start=" ++ showTime time_start)

quotes_historical_data_e :: MonadIO m => ApiKey -> String -> UTCTime -> UTCTime -> m (Either String [Quote])
quotes_historical_data_e apiKey symbol_id time_start time_end = request apiKey ("/v1/quotes/" ++ symbol_id ++
                                                                                "/history?time_start=" ++ showTime time_start ++
                                                                                "&amp;time_end=" ++ showTime time_end)

quotes_historical_data_l :: MonadIO m => ApiKey -> String -> UTCTime -> Int -> m (Either String [Quote])
quotes_historical_data_l apiKey symbol_id time_start limit = request apiKey ("/v1/quotes/" ++ symbol_id ++
                                                                             "/history?time_start=" ++ showTime time_start ++
                                                                             "&amp;limit=" ++ show limit)

quotes_historical_data_el :: MonadIO m => ApiKey -> String -> UTCTime -> UTCTime -> Int -> m (Either String [Quote])
quotes_historical_data_el apiKey symbol_id time_start time_end limit = request apiKey ("/v1/quotes/" ++ symbol_id ++
                                                                                       "/history?time_start=" ++ showTime time_start ++
                                                                                       "&amp;time_end=" ++ showTime time_end ++
                                                                                       "&amp;limit=" ++ show limit)

orderbooks_current_data :: MonadIO m => ApiKey -> m (Either String [Orderbook])
orderbooks_current_data apiKey = request apiKey "/v1/orderbooks/current"

orderbooks_current_data_s :: MonadIO m => ApiKey -> String -> m (Either String Orderbook)
orderbooks_current_data_s apiKey symbol_id = request apiKey ("/v1/orderbooks/" ++ symbol_id ++ "/current")

orderbooks_latest_data :: MonadIO m => ApiKey -> String -> m (Either String [Orderbook])
orderbooks_latest_data apiKey symbol_id = request apiKey ("/v1/orderbooks/" ++ symbol_id ++ "/latest")

orderbooks_latest_data_l :: MonadIO m => ApiKey -> String -> Int -> m (Either String [Orderbook])
orderbooks_latest_data_l apiKey symbol_id limit = request apiKey ("/v1/orderbooks/" ++ symbol_id ++ "/latest?limit=" ++ show limit)

orderbooks_historical_data :: MonadIO m => ApiKey -> String -> UTCTime -> m (Either String [Orderbook])
orderbooks_historical_data apiKey symbol_id time_start = request apiKey ("/v1/orderbooks/" ++ symbol_id ++
                                                                         "/history?time_start=" ++ showTime time_start)

orderbooks_historical_data_e :: MonadIO m => ApiKey -> String -> UTCTime -> UTCTime -> m (Either String [Orderbook])
orderbooks_historical_data_e apiKey symbol_id time_start time_end = request apiKey ("/v1/orderbooks/" ++ symbol_id ++
                                                                                    "/history?time_start=" ++ showTime time_start ++
                                                                                    "&amp;time_end=" ++ showTime time_end)

orderbooks_historical_data_l :: MonadIO m => ApiKey -> String -> UTCTime -> Int -> m (Either String [Orderbook])
orderbooks_historical_data_l apiKey symbol_id time_start limit = request apiKey ("/v1/orderbooks/" ++ symbol_id ++
                                                                                 "/history?time_start=" ++ showTime time_start ++
                                                                                 "&amp;limit=" ++ show limit)

orderbooks_historical_data_el :: MonadIO m => ApiKey -> String -> UTCTime -> UTCTime -> Int -> m (Either String [Orderbook])
orderbooks_historical_data_el apiKey symbol_id time_start time_end limit = request apiKey ("/v1/orderbooks/" ++ symbol_id ++
                                                                                           "/history?time_start=" ++ showTime time_start ++
                                                                                           "&amp;time_end=" ++ showTime time_end ++
                                                                                           "&amp;limit=" ++ show limit)

