{-# LANGUAGE OverloadedStrings #-}

module Main where

import CoinApi
import qualified CoinApi.Monadic as M
import Data.Time
import Control.Monad.State (liftIO)

key = "73034021-0EBC-493D-8A00-E0F138111F41"
asset_id_base = "BTC"
asset_id_quote = "USD"
symbol_id = "BITSTAMP_SPOT_BTC_USD"
period_id = "1HRS"
time_start = UTCTime (fromGregorian 2016 01 01) (fromIntegral 0)
time_end = UTCTime (fromGregorian 2016 01 03) (fromIntegral 0)
limit = 100 :: Int

-- using pure interface
pure :: IO ()
pure = do
  putStrLn "list_all_exchanges:"
  ex <- metadata_list_exchanges key
  case ex of
    Right result -> mapM_ print $ take 2 result
    Left  err    -> putStrLn err
  putStrLn ""

  putStrLn "list_all_assets:"
  ex <- metadata_list_assets key
  case ex of
    Right result -> mapM_ print $ take 2 result
    Left  err    -> putStrLn err
  putStrLn ""

  putStrLn "list_all_symbols:"
  ex <- metadata_list_symbols key
  case ex of
    Right result -> mapM_ print $ take 2 result
    Left  err    -> putStrLn err
  putStrLn ""

  putStrLn "get_specific_rate:"
  ex <- metadata_list_symbols key
  case ex of
    Right result -> mapM_ print $ take 2 result
    Left  err    -> putStrLn err
  putStrLn ""

  putStrLn "get_specific_rate_t:"
  ex <- exchange_rates_get_specific_rate_t key asset_id_base asset_id_quote time_start
  case ex of
    Right result -> print result
    Left  err    -> putStrLn err
  putStrLn ""

  putStrLn $ "get_all_current_rates:"
  ex <- exchange_rates_get_all_current_rates key asset_id_base
  case ex of
    Right result -> mapM_ print $ take 2 result
    Left  err    -> putStrLn err
  putStrLn ""

  putStrLn "list_all_periods:"
  ex <- ohlcv_list_all_periods key
  case ex of
    Right result -> mapM_ print $ take 2 result
    Left  err    -> putStrLn err
  putStrLn ""

  putStrLn "quotes_latest_data:"
  ex <- quotes_latest_data key
  case ex of
    Right result -> mapM_ print $ take 2 result
    Left  err    -> putStrLn err
  putStrLn ""

  putStrLn "quotes_latest_data_s:"
  ex <- quotes_latest_data_s key symbol_id
  case ex of
    Right result -> mapM_ print $ take 2 result
    Left  err    -> putStrLn err
  putStrLn ""

  putStrLn "quotes_latest_data_l:"
  ex <- quotes_latest_data_l key limit
  case ex of
    Right result -> mapM_ print $ take 2 result
    Left  err    -> putStrLn err
  putStrLn ""

  putStrLn "quotes_latest_data_sl:"
  ex <- quotes_latest_data_sl key symbol_id limit
  case ex of
    Right result -> mapM_ print $ take 2 result
    Left  err    -> putStrLn err
  putStrLn ""

  putStrLn "quotes_historical_data:"
  ex <- quotes_historical_data key symbol_id time_start
  case ex of
    Right result -> mapM_ print $ take 2 result
    Left  err    -> putStrLn err
  putStrLn ""

  putStrLn "quotes_historical_data_e:"
  ex <- quotes_historical_data_e key symbol_id time_start time_end
  case ex of
    Right result -> mapM_ print $ take 2 result
    Left  err    -> putStrLn err
  putStrLn ""

  putStrLn "quotes_historical_data_l:"
  ex <- quotes_historical_data_l key symbol_id time_start limit
  case ex of
    Right result -> mapM_ print $ take 2 result
    Left  err    -> putStrLn err
  putStrLn ""

  putStrLn "quotes_historical_data_el:"
  ex <- quotes_historical_data_el key symbol_id time_start time_end limit
  case ex of
    Right result -> mapM_ print $ take 2 result
    Left  err    -> putStrLn err
  putStrLn ""

  putStrLn "orderbooks_current_data:"
  ex <- orderbooks_current_data key
  case ex of
    Right result -> mapM_ print $ take 2 result
    Left  err    -> putStrLn err
  putStrLn ""

  putStrLn "orderbooks_current_data_s:"
  ex <- orderbooks_current_data_s key symbol_id
  case ex of
    Right result -> print result
    Left  err    -> putStrLn err
  putStrLn ""

  putStrLn "orderbooks_latest_data:"
  ex <- orderbooks_latest_data key symbol_id
  case ex of
    Right result -> mapM_ print $ take 2 result
    Left  err    -> putStrLn err
  putStrLn ""

  putStrLn "orderbooks_latest_data_l:"
  ex <- orderbooks_latest_data_l key symbol_id limit
  case ex of
    Right result -> mapM_ print $ take 2 result
    Left  err    -> putStrLn err
  putStrLn ""

  putStrLn "orderbooks_historical_data:"
  ex <- orderbooks_historical_data key symbol_id time_start
  case ex of
    Right result -> mapM_ print $ take 2 result
    Left  err    -> putStrLn err
  putStrLn ""

  putStrLn "orderbooks_historical_data_e:"
  ex <- orderbooks_historical_data_e key symbol_id time_start time_end
  case ex of
    Right result -> mapM_ print $ take 2 result
    Left  err    -> putStrLn err
  putStrLn ""

  putStrLn "orderbooks_historical_data_l:"
  ex <- orderbooks_historical_data_l key symbol_id time_start limit
  case ex of
    Right result -> mapM_ print $ take 2 result
    Left  err    -> putStrLn err
  putStrLn ""

  putStrLn "orderbooks_historical_data_el:"
  ex <- orderbooks_historical_data_el key symbol_id time_start time_end limit
  case ex of
    Right result -> mapM_ print $ take 2 result
    Left  err    -> putStrLn err
  putStrLn ""

-- using monadic interface
monadic :: IO ()
monadic = M.withApiKey key $ do
  ex <- M.metadata_list_exchanges
  liftIO $ do putStrLn "list_all_exchanges:"
              case ex of
                Right result -> mapM_ print $ take 2 result
                Left  err    -> putStrLn err
              putStrLn ""

  ex <- M.metadata_list_assets
  liftIO $ do putStrLn "list_all_assets:"
              case ex of
                Right result -> mapM_ print $ take 2 result
                Left  err    -> putStrLn err
              putStrLn ""

  ex <- M.metadata_list_symbols
  liftIO $ do putStrLn "list_all_symbols:"
              case ex of
                Right result -> mapM_ print $ take 2 result
                Left  err    -> putStrLn err
              putStrLn ""

  ex <- M.metadata_list_symbols
  liftIO $ do putStrLn "get_specific_rate:"
              case ex of
                Right result -> mapM_ print $ take 2 result
                Left  err    -> putStrLn err
              putStrLn ""

  ex <- M.exchange_rates_get_specific_rate_t asset_id_base asset_id_quote time_start
  liftIO $ do putStrLn "get_specific_rate_t:"
              case ex of
                Right result -> print result
                Left  err    -> putStrLn err
              putStrLn ""

  ex <- M.exchange_rates_get_all_current_rates asset_id_base
  liftIO $ do putStrLn $ "get_all_current_rates:"
              case ex of
                Right result -> mapM_ print $ take 2 result
                Left  err    -> putStrLn err
              putStrLn ""

  ex <- M.ohlcv_list_all_periods
  liftIO $ do putStrLn "list_all_periods:"
              case ex of
                Right result -> mapM_ print $ take 2 result
                Left  err    -> putStrLn err
              putStrLn ""

  ex <- M.quotes_latest_data
  liftIO $ do putStrLn "quotes_latest_data:"
              case ex of
                Right result -> mapM_ print $ take 2 result
                Left  err    -> putStrLn err
              putStrLn ""

  ex <- M.quotes_latest_data_s symbol_id
  liftIO $ do putStrLn "quotes_latest_data_s:"
              case ex of
                Right result -> mapM_ print $ take 2 result
                Left  err    -> putStrLn err
              putStrLn ""

  ex <- M.quotes_latest_data_l limit
  liftIO $ do putStrLn "quotes_latest_data_l:"
              case ex of
                Right result -> mapM_ print $ take 2 result
                Left  err    -> putStrLn err
              putStrLn ""

  ex <- M.quotes_latest_data_sl symbol_id limit
  liftIO $ do putStrLn "quotes_latest_data_sl:"
              case ex of
                Right result -> mapM_ print $ take 2 result
                Left  err    -> putStrLn err
              putStrLn ""

  ex <- M.quotes_historical_data symbol_id time_start
  liftIO $ do putStrLn "quotes_historical_data:"
              case ex of
                Right result -> mapM_ print $ take 2 result
                Left  err    -> putStrLn err
              putStrLn ""

  ex <- M.quotes_historical_data_e symbol_id time_start time_end
  liftIO $ do putStrLn "quotes_historical_data_e:"
              case ex of
                Right result -> mapM_ print $ take 2 result
                Left  err    -> putStrLn err
              putStrLn ""

  ex <- M.quotes_historical_data_l symbol_id time_start limit
  liftIO $ do putStrLn "quotes_historical_data_l:"
              case ex of
                Right result -> mapM_ print $ take 2 result
                Left  err    -> putStrLn err
              putStrLn ""

  ex <- M.quotes_historical_data_el symbol_id time_start time_end limit
  liftIO $ do putStrLn "quotes_historical_data_el:"
              case ex of
                Right result -> mapM_ print $ take 2 result
                Left  err    -> putStrLn err
              putStrLn ""

  ex <- M.orderbooks_current_data
  liftIO $ do putStrLn "orderbooks_current_data:"
              case ex of
                Right result -> mapM_ print $ take 2 result
                Left  err    -> putStrLn err
              putStrLn ""

  ex <- M.orderbooks_current_data_s symbol_id
  liftIO $ do putStrLn "orderbooks_current_data_s:"
              case ex of
                Right result -> print result
                Left  err    -> putStrLn err
              putStrLn ""

  ex <- M.orderbooks_latest_data symbol_id
  liftIO $ do putStrLn "orderbooks_latest_data:"
              case ex of
                Right result -> mapM_ print $ take 2 result
                Left  err    -> putStrLn err
              putStrLn ""

  ex <- M.orderbooks_latest_data_l symbol_id limit
  liftIO $ do putStrLn "orderbooks_latest_data_l:"
              case ex of
                Right result -> mapM_ print $ take 2 result
                Left  err    -> putStrLn err
              putStrLn ""

  ex <- M.orderbooks_historical_data symbol_id time_start
  liftIO $ do putStrLn "orderbooks_historical_data:"
              case ex of
                Right result -> mapM_ print $ take 2 result
                Left  err    -> putStrLn err
              putStrLn ""

  ex <- M.orderbooks_historical_data_e symbol_id time_start time_end
  liftIO $ do putStrLn "orderbooks_historical_data_e:"
              case ex of
                Right result -> mapM_ print $ take 2 result
                Left  err    -> putStrLn err
              putStrLn ""

  ex <- M.orderbooks_historical_data_l symbol_id time_start limit
  liftIO $ do putStrLn "orderbooks_historical_data_l:"
              case ex of
                Right result -> mapM_ print $ take 2 result
                Left  err    -> putStrLn err
              putStrLn ""

  ex <- M.orderbooks_historical_data_el symbol_id time_start time_end limit
  liftIO $ do putStrLn "orderbooks_historical_data_el:"
              case ex of
                Right result -> mapM_ print $ take 2 result
                Left  err    -> putStrLn err
              putStrLn ""

main = do putStrLn "Pure interface:"
          Main.pure
          putStrLn "Monadic interface:"
          Main.monadic
