-module(openapi_level3_add_order_model).

-include("openapi.hrl").

-export([openapi_level3_add_order_model/0]).

-export([openapi_level3_add_order_model/1]).

-export_type([openapi_level3_add_order_model/0]).

-type openapi_level3_add_order_model() ::
  [ {'symbol', binary() }
  | {'timestamp_nanos', integer() }
  | {'timestamp', datetime() }
  | {'is_side_buy', boolean() }
  | {'size', integer() }
  | {'price', float() }
  | {'order_id', integer() }
  ].


openapi_level3_add_order_model() ->
    openapi_level3_add_order_model([]).

openapi_level3_add_order_model(Fields) ->
  Default = [ {'symbol', binary() }
            , {'timestamp_nanos', integer() }
            , {'timestamp', datetime() }
            , {'is_side_buy', boolean() }
            , {'size', integer() }
            , {'price', float() }
            , {'order_id', integer() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

