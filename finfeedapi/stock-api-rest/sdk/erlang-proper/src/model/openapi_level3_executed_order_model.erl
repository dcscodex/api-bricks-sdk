-module(openapi_level3_executed_order_model).

-include("openapi.hrl").

-export([openapi_level3_executed_order_model/0]).

-export([openapi_level3_executed_order_model/1]).

-export_type([openapi_level3_executed_order_model/0]).

-type openapi_level3_executed_order_model() ::
  [ {'symbol', binary() }
  | {'timestamp_nanos', integer() }
  | {'timestamp', datetime() }
  | {'order_id_reference', integer() }
  | {'sale_condition_flags', integer() }
  | {'is_intermarket_sweep', boolean() }
  | {'is_extended_hours_trade', boolean() }
  | {'is_odd_lot_trade', boolean() }
  | {'is_trade_through_exempt', boolean() }
  | {'is_single_price_cross_trade', boolean() }
  | {'size', integer() }
  | {'price', float() }
  | {'trade_id', integer() }
  ].


openapi_level3_executed_order_model() ->
    openapi_level3_executed_order_model([]).

openapi_level3_executed_order_model(Fields) ->
  Default = [ {'symbol', binary() }
            , {'timestamp_nanos', integer() }
            , {'timestamp', datetime() }
            , {'order_id_reference', integer() }
            , {'sale_condition_flags', integer() }
            , {'is_intermarket_sweep', boolean() }
            , {'is_extended_hours_trade', boolean() }
            , {'is_odd_lot_trade', boolean() }
            , {'is_trade_through_exempt', boolean() }
            , {'is_single_price_cross_trade', boolean() }
            , {'size', integer() }
            , {'price', float() }
            , {'trade_id', integer() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

