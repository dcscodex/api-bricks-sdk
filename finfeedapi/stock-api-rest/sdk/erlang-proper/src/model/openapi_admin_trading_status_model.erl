-module(openapi_admin_trading_status_model).

-include("openapi.hrl").

-export([openapi_admin_trading_status_model/0]).

-export([openapi_admin_trading_status_model/1]).

-export_type([openapi_admin_trading_status_model/0]).

-type openapi_admin_trading_status_model() ::
  [ {'symbol', binary() }
  | {'timestamp_nanos', integer() }
  | {'timestamp', datetime() }
  | {'is_trading_live', boolean() }
  | {'is_trading_halted', boolean() }
  | {'is_trading_in_order_acceptance_period', boolean() }
  | {'is_trading_paused', boolean() }
  | {'is_reason_halt_news_pending', boolean() }
  | {'is_reason_ipo_not_yet_trading', boolean() }
  | {'is_reason_ipo_deferred', boolean() }
  | {'is_reason_halt_news_dissemination', boolean() }
  | {'is_reason_ipo_order_acceptance_period', boolean() }
  | {'is_reason_ipo_pre_launch_period', boolean() }
  | {'is_reason_market_wide_circuit_breaker_level1', boolean() }
  | {'is_reason_market_wide_circuit_breaker_level2', boolean() }
  | {'is_reason_market_wide_circuit_breaker_level3', boolean() }
  | {'is_reason_not_applicable', boolean() }
  | {'is_reason_not_available', boolean() }
  ].


openapi_admin_trading_status_model() ->
    openapi_admin_trading_status_model([]).

openapi_admin_trading_status_model(Fields) ->
  Default = [ {'symbol', binary() }
            , {'timestamp_nanos', integer() }
            , {'timestamp', datetime() }
            , {'is_trading_live', boolean() }
            , {'is_trading_halted', boolean() }
            , {'is_trading_in_order_acceptance_period', boolean() }
            , {'is_trading_paused', boolean() }
            , {'is_reason_halt_news_pending', boolean() }
            , {'is_reason_ipo_not_yet_trading', boolean() }
            , {'is_reason_ipo_deferred', boolean() }
            , {'is_reason_halt_news_dissemination', boolean() }
            , {'is_reason_ipo_order_acceptance_period', boolean() }
            , {'is_reason_ipo_pre_launch_period', boolean() }
            , {'is_reason_market_wide_circuit_breaker_level1', boolean() }
            , {'is_reason_market_wide_circuit_breaker_level2', boolean() }
            , {'is_reason_market_wide_circuit_breaker_level3', boolean() }
            , {'is_reason_not_applicable', boolean() }
            , {'is_reason_not_available', boolean() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

