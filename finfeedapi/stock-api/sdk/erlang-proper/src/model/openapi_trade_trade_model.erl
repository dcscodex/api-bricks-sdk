-module(openapi_trade_trade_model).

-include("openapi.hrl").

-export([openapi_trade_trade_model/0]).

-export([openapi_trade_trade_model/1]).

-export_type([openapi_trade_trade_model/0]).

-type openapi_trade_trade_model() ::
  [ {'is_trade_break', boolean() }
  | {'symbol', binary() }
  | {'timestamp_nanos', integer() }
  | {'timestamp', datetime() }
  | {'size', integer() }
  | {'price', float() }
  | {'trade_id', integer() }
  | {'is_intermarket_sweep', boolean() }
  | {'is_extended_hours_trade', boolean() }
  | {'is_odd_lot_trade', boolean() }
  | {'is_trade_through_exempt', boolean() }
  | {'is_single_price_cross_trade', boolean() }
  ].


openapi_trade_trade_model() ->
    openapi_trade_trade_model([]).

openapi_trade_trade_model(Fields) ->
  Default = [ {'is_trade_break', boolean() }
            , {'symbol', binary() }
            , {'timestamp_nanos', integer() }
            , {'timestamp', datetime() }
            , {'size', integer() }
            , {'price', float() }
            , {'trade_id', integer() }
            , {'is_intermarket_sweep', boolean() }
            , {'is_extended_hours_trade', boolean() }
            , {'is_odd_lot_trade', boolean() }
            , {'is_trade_through_exempt', boolean() }
            , {'is_single_price_cross_trade', boolean() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

