-module(openapi_v1_symbol).

-include("openapi.hrl").

-export([openapi_v1_symbol/0]).

-export([openapi_v1_symbol/1]).

-export_type([openapi_v1_symbol/0]).

-type openapi_v1_symbol() ::
  [ {'symbol_id', binary() }
  | {'exchange_id', binary() }
  | {'symbol_type', binary() }
  | {'asset_id_base', binary() }
  | {'asset_id_quote', binary() }
  | {'asset_id_unit', binary() }
  | {'future_contract_unit', float() }
  | {'future_contract_unit_asset', binary() }
  | {'future_delivery_time', datetime() }
  | {'option_type_is_call', boolean() }
  | {'option_strike_price', float() }
  | {'option_contract_unit', float() }
  | {'option_exercise_style', binary() }
  | {'option_expiration_time', datetime() }
  | {'contract_delivery_time', datetime() }
  | {'contract_unit', float() }
  | {'contract_unit_asset', binary() }
  | {'contract_id', binary() }
  | {'contract_display_name', binary() }
  | {'contract_display_description', binary() }
  | {'data_start', binary() }
  | {'data_end', binary() }
  | {'data_quote_start', datetime() }
  | {'data_quote_end', datetime() }
  | {'data_orderbook_start', datetime() }
  | {'data_orderbook_end', datetime() }
  | {'data_trade_start', datetime() }
  | {'data_trade_end', datetime() }
  | {'index_id', binary() }
  | {'index_display_name', binary() }
  | {'index_display_description', binary() }
  | {'volume_1hrs', float() }
  | {'volume_1hrs_usd', float() }
  | {'volume_1day', float() }
  | {'volume_1day_usd', float() }
  | {'volume_1mth', float() }
  | {'volume_1mth_usd', float() }
  | {'price', float() }
  | {'symbol_id_exchange', binary() }
  | {'asset_id_base_exchange', binary() }
  | {'asset_id_quote_exchange', binary() }
  | {'price_precision', float() }
  | {'size_precision', float() }
  | {'raw_kvp', map() }
  | {'volume_to_usd', float() }
  ].


openapi_v1_symbol() ->
    openapi_v1_symbol([]).

openapi_v1_symbol(Fields) ->
  Default = [ {'symbol_id', binary() }
            , {'exchange_id', binary() }
            , {'symbol_type', binary() }
            , {'asset_id_base', binary() }
            , {'asset_id_quote', binary() }
            , {'asset_id_unit', binary() }
            , {'future_contract_unit', float() }
            , {'future_contract_unit_asset', binary() }
            , {'future_delivery_time', datetime() }
            , {'option_type_is_call', boolean() }
            , {'option_strike_price', float() }
            , {'option_contract_unit', float() }
            , {'option_exercise_style', binary() }
            , {'option_expiration_time', datetime() }
            , {'contract_delivery_time', datetime() }
            , {'contract_unit', float() }
            , {'contract_unit_asset', binary() }
            , {'contract_id', binary() }
            , {'contract_display_name', binary() }
            , {'contract_display_description', binary() }
            , {'data_start', binary() }
            , {'data_end', binary() }
            , {'data_quote_start', datetime() }
            , {'data_quote_end', datetime() }
            , {'data_orderbook_start', datetime() }
            , {'data_orderbook_end', datetime() }
            , {'data_trade_start', datetime() }
            , {'data_trade_end', datetime() }
            , {'index_id', binary() }
            , {'index_display_name', binary() }
            , {'index_display_description', binary() }
            , {'volume_1hrs', float() }
            , {'volume_1hrs_usd', float() }
            , {'volume_1day', float() }
            , {'volume_1day_usd', float() }
            , {'volume_1mth', float() }
            , {'volume_1mth_usd', float() }
            , {'price', float() }
            , {'symbol_id_exchange', binary() }
            , {'asset_id_base_exchange', binary() }
            , {'asset_id_quote_exchange', binary() }
            , {'price_precision', float() }
            , {'size_precision', float() }
            , {'raw_kvp', map() }
            , {'volume_to_usd', float() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

