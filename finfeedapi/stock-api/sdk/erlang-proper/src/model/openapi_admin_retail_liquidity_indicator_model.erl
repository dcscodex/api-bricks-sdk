-module(openapi_admin_retail_liquidity_indicator_model).

-include("openapi.hrl").

-export([openapi_admin_retail_liquidity_indicator_model/0]).

-export([openapi_admin_retail_liquidity_indicator_model/1]).

-export_type([openapi_admin_retail_liquidity_indicator_model/0]).

-type openapi_admin_retail_liquidity_indicator_model() ::
  [ {'symbol', binary() }
  | {'timestamp_nanos', integer() }
  | {'timestamp', datetime() }
  | {'retail_liquidity_indicator', integer() }
  | {'retail_liquidity_indicator_code', binary() }
  | {'retail_liquidity_indicator_text', binary() }
  | {'is_retail_indicator_not_applicable', boolean() }
  | {'is_retail_indicator_buy_interest', boolean() }
  | {'is_retail_indicator_sell_interest', boolean() }
  | {'is_retail_indicator_buy_and_sell_interest', boolean() }
  ].


openapi_admin_retail_liquidity_indicator_model() ->
    openapi_admin_retail_liquidity_indicator_model([]).

openapi_admin_retail_liquidity_indicator_model(Fields) ->
  Default = [ {'symbol', binary() }
            , {'timestamp_nanos', integer() }
            , {'timestamp', datetime() }
            , {'retail_liquidity_indicator', integer() }
            , {'retail_liquidity_indicator_code', binary() }
            , {'retail_liquidity_indicator_text', binary() }
            , {'is_retail_indicator_not_applicable', boolean() }
            , {'is_retail_indicator_buy_interest', boolean() }
            , {'is_retail_indicator_sell_interest', boolean() }
            , {'is_retail_indicator_buy_and_sell_interest', boolean() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

