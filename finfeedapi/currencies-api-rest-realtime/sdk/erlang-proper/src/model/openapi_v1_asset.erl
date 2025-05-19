-module(openapi_v1_asset).

-include("openapi.hrl").

-export([openapi_v1_asset/0]).

-export([openapi_v1_asset/1]).

-export_type([openapi_v1_asset/0]).

-type openapi_v1_asset() ::
  [ {'asset_id', binary() }
  | {'name', binary() }
  | {'type_is_crypto', integer() }
  | {'data_quote_start', datetime() }
  | {'data_quote_end', datetime() }
  | {'data_orderbook_start', datetime() }
  | {'data_orderbook_end', datetime() }
  | {'data_trade_start', datetime() }
  | {'data_trade_end', datetime() }
  | {'data_symbols_count', integer() }
  | {'volume_1hrs_usd', float() }
  | {'volume_1day_usd', float() }
  | {'volume_1mth_usd', float() }
  | {'price_usd', float() }
  | {'id_icon', openapi_u_uid:openapi_u_uid() }
  | {'supply_current', float() }
  | {'supply_total', float() }
  | {'supply_max', float() }
  | {'chain_addresses', list(openapi_v1_chain_network_address:openapi_v1_chain_network_address()) }
  | {'data_start', binary() }
  | {'data_end', binary() }
  ].


openapi_v1_asset() ->
    openapi_v1_asset([]).

openapi_v1_asset(Fields) ->
  Default = [ {'asset_id', binary() }
            , {'name', binary() }
            , {'type_is_crypto', integer() }
            , {'data_quote_start', datetime() }
            , {'data_quote_end', datetime() }
            , {'data_orderbook_start', datetime() }
            , {'data_orderbook_end', datetime() }
            , {'data_trade_start', datetime() }
            , {'data_trade_end', datetime() }
            , {'data_symbols_count', integer() }
            , {'volume_1hrs_usd', float() }
            , {'volume_1day_usd', float() }
            , {'volume_1mth_usd', float() }
            , {'price_usd', float() }
            , {'id_icon', binary() }
            , {'supply_current', float() }
            , {'supply_total', float() }
            , {'supply_max', float() }
            , {'chain_addresses', list(openapi_v1_chain_network_address:openapi_v1_chain_network_address()) }
            , {'data_start', binary() }
            , {'data_end', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

