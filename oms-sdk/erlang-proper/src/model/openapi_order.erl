-module(openapi_order).

-include("openapi.hrl").

-export([openapi_order/0]).

-export([openapi_order/1]).

-export_type([openapi_order/0]).

-type openapi_order() ::
  [ {'type', binary() }
  | {'exchange_name', binary() }
  | {'data', list(openapi_order_data:openapi_order_data()) }
  ].


openapi_order() ->
    openapi_order([]).

openapi_order(Fields) ->
  Default = [ {'type', binary() }
            , {'exchange_name', binary() }
            , {'data', list(openapi_order_data:openapi_order_data()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

