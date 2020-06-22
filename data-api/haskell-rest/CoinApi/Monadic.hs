{-# LANGUAGE OverloadedStrings #-}

module CoinApi.Monadic where

-- CoinApi types

import CoinApi.Types.Asset (Asset)
import qualified CoinApi.Types.Asset as Asset

import CoinApi.Types.Exchange (Exchange)
import qualified CoinApi.Types.Exchange as Exchange

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

import CoinApi as CA
import Data.Time
import Control.Monad.State

type CoinApi = StateT ApiKey

withApiKey :: MonadIO m => ApiKey -> CoinApi m a -> m a
withApiKey = flip evalStateT

metadata_list_exchanges :: MonadIO m => CoinApi m (Either String [Exchange]) 
metadata_list_exchanges = get >>= CA.metadata_list_exchanges

metadata_list_assets :: MonadIO m => CoinApi m (Either String [Asset]) 
metadata_list_assets = get >>= CA.metadata_list_assets

metadata_list_symbols :: MonadIO m => CoinApi m (Either String [Symbol])
metadata_list_symbols = get >>= CA.metadata_list_symbols

exchange_rates_get_specific_rate :: MonadIO m => String -> String -> CoinApi m (Either String Rate)
exchange_rates_get_specific_rate asset_id_base asset_id_quote = get >>= (\key -> CA.exchange_rates_get_specific_rate key asset_id_base asset_id_quote)

exchange_rates_get_specific_rate_t :: MonadIO m => String -> String -> UTCTime -> CoinApi m (Either String Rate)
exchange_rates_get_specific_rate_t asset_id_base asset_id_quote time = get >>= (\key -> CA.exchange_rates_get_specific_rate_t key asset_id_base asset_id_quote time)

exchange_rates_get_all_current_rates :: MonadIO m => String -> CoinApi m (Either String [Rate])
exchange_rates_get_all_current_rates asset_id_base = get >>= (\key -> CA.exchange_rates_get_all_current_rates key asset_id_base)


ohlcv_list_all_periods :: MonadIO m => CoinApi m (Either String [Period])
ohlcv_list_all_periods = get >>= CA.ohlcv_list_all_periods

ohlcv_latest_data :: MonadIO m => String -> String -> CoinApi m (Either String [OHLCV])
ohlcv_latest_data symbol_id period_id = get >>= (\key -> CA.ohlcv_latest_data key symbol_id period_id)

ohlcv_latest_data_l :: MonadIO m => String -> String -> Int -> CoinApi m (Either String [OHLCV])
ohlcv_latest_data_l symbol_id period_id limit = get >>= (\key -> CA.ohlcv_latest_data_l key symbol_id period_id limit)

ohlcv_historical_data :: MonadIO m => String -> String -> UTCTime -> CoinApi m (Either String [OHLCV])
ohlcv_historical_data symbol_id period_id time_start = get >>= (\key -> CA.ohlcv_historical_data key symbol_id period_id time_start)

ohlcv_historical_data_e :: MonadIO m => String -> String -> UTCTime -> UTCTime -> CoinApi m (Either String [OHLCV])
ohlcv_historical_data_e symbol_id period_id time_start time_end = get >>= (\key -> CA.ohlcv_historical_data_e key symbol_id period_id time_start time_end)

ohlcv_historical_data_l :: MonadIO m => String -> String -> UTCTime -> Int -> CoinApi m (Either String [OHLCV])
ohlcv_historical_data_l symbol_id period_id time_start limit = get >>= (\key -> CA.ohlcv_historical_data_l key symbol_id period_id time_start limit)

ohlcv_historical_data_el :: MonadIO m => String -> String -> UTCTime -> UTCTime -> Int -> CoinApi m (Either String [OHLCV])
ohlcv_historical_data_el symbol_id period_id time_start time_end limit = get >>= (\key -> CA.ohlcv_historical_data_el key symbol_id period_id time_start time_end limit)

trades_latest_data :: MonadIO m => CoinApi m (Either String [Trade])
trades_latest_data = get >>= CA.trades_latest_data

trades_latest_data_s :: MonadIO m => String -> CoinApi m (Either String [Trade])
trades_latest_data_s symbol_id = get >>= (\key -> CA.trades_latest_data_s key symbol_id)

trades_latest_data_l :: MonadIO m => Int -> CoinApi m (Either String [Trade])
trades_latest_data_l limit = get >>= (\key -> CA.trades_latest_data_l key limit)

trades_latest_data_sl :: MonadIO m => String -> Int -> CoinApi m (Either String [Trade])
trades_latest_data_sl symbol_id limit = get >>= (\key -> CA.trades_latest_data_sl key symbol_id limit)

trades_historical_data :: MonadIO m => String -> UTCTime -> CoinApi m (Either String [Trade])
trades_historical_data symbol_id time_start = get >>= (\key -> CA.trades_historical_data key symbol_id time_start)

trades_historical_data_e :: MonadIO m => String -> UTCTime -> UTCTime -> CoinApi m (Either String [Trade])
trades_historical_data_e symbol_id time_start time_end = get >>= (\key -> CA.trades_historical_data_e key symbol_id time_start time_end)

trades_historical_data_l :: MonadIO m => String -> UTCTime -> Int -> CoinApi m (Either String [Trade])
trades_historical_data_l symbol_id time_start limit = get >>= (\key -> CA.trades_historical_data_l key symbol_id time_start limit)

trades_historical_data_el :: MonadIO m => String -> UTCTime -> UTCTime -> Int -> CoinApi m (Either String [Trade])
trades_historical_data_el symbol_id time_start time_end limit = get >>= (\key -> CA.trades_historical_data_el key symbol_id time_start time_end limit)

quotes_current_data :: MonadIO m => CoinApi m (Either String [Quote])
quotes_current_data = get >>= CA.quotes_current_data

quotes_current_data_s :: MonadIO m => String -> CoinApi m (Either String Quote)
quotes_current_data_s symbol_id = get >>= (\key -> CA.quotes_current_data_s key symbol_id)

quotes_latest_data :: MonadIO m => CoinApi m (Either String [Quote])
quotes_latest_data = get >>= CA.quotes_latest_data

quotes_latest_data_s :: MonadIO m => String -> CoinApi m (Either String [Quote])
quotes_latest_data_s symbol_id = get >>= (\key -> CA.quotes_latest_data_s key symbol_id)

quotes_latest_data_l :: MonadIO m => Int -> CoinApi m (Either String [Quote])
quotes_latest_data_l limit = get >>= (\key -> CA.quotes_latest_data_l key limit)

quotes_latest_data_sl :: MonadIO m => String -> Int -> CoinApi m (Either String [Quote])
quotes_latest_data_sl symbol_id limit = get >>= (\key -> CA.quotes_latest_data_sl key symbol_id limit)

quotes_historical_data :: MonadIO m => String -> UTCTime -> CoinApi m (Either String [Quote])
quotes_historical_data symbol_id time_start = get >>= (\key -> CA.quotes_historical_data key symbol_id time_start)

quotes_historical_data_e :: MonadIO m => String -> UTCTime -> UTCTime -> CoinApi m (Either String [Quote])
quotes_historical_data_e symbol_id time_start time_end = get >>= (\key -> CA.quotes_historical_data_e key symbol_id time_start time_end)

quotes_historical_data_l :: MonadIO m => String -> UTCTime -> Int -> CoinApi m (Either String [Quote])
quotes_historical_data_l symbol_id time_start limit = get >>= (\key -> CA.quotes_historical_data_l key symbol_id time_start limit)

quotes_historical_data_el :: MonadIO m => String -> UTCTime -> UTCTime -> Int -> CoinApi m (Either String [Quote])
quotes_historical_data_el symbol_id time_start time_end limit = get >>= (\key -> CA.quotes_historical_data_el key symbol_id time_start time_end limit)

orderbooks_current_data :: MonadIO m => CoinApi m (Either String [Orderbook])
orderbooks_current_data = get >>= CA.orderbooks_current_data

orderbooks_current_data_s :: MonadIO m => String -> CoinApi m (Either String Orderbook)
orderbooks_current_data_s symbol_id = get >>= (\key -> CA.orderbooks_current_data_s key symbol_id)

orderbooks_latest_data :: MonadIO m => String -> CoinApi m (Either String [Orderbook])
orderbooks_latest_data symbol_id = get >>= (\key -> CA.orderbooks_latest_data key symbol_id)

orderbooks_latest_data_l :: MonadIO m => String -> Int -> CoinApi m (Either String [Orderbook])
orderbooks_latest_data_l symbol_id limit = get >>= (\key -> CA.orderbooks_latest_data_l key symbol_id limit)

orderbooks_historical_data :: MonadIO m => String -> UTCTime -> CoinApi m (Either String [Orderbook])
orderbooks_historical_data symbol_id time_start = get >>= (\key -> CA.orderbooks_historical_data key symbol_id time_start)

orderbooks_historical_data_e :: MonadIO m => String -> UTCTime -> UTCTime -> CoinApi m (Either String [Orderbook])
orderbooks_historical_data_e symbol_id time_start time_end = get >>= (\key -> CA.orderbooks_historical_data_e key symbol_id time_start time_end)

orderbooks_historical_data_l :: MonadIO m => String -> UTCTime -> Int -> CoinApi m (Either String [Orderbook])
orderbooks_historical_data_l symbol_id time_start limit = get >>= (\key -> CA.orderbooks_historical_data_l key symbol_id time_start limit)

orderbooks_historical_data_el :: MonadIO m => String -> UTCTime -> UTCTime -> Int -> CoinApi m (Either String [Orderbook])
orderbooks_historical_data_el symbol_id time_start time_end limit = get >>= (\key -> CA.orderbooks_historical_data_el key symbol_id time_start time_end limit)
