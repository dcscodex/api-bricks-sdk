-module(openapi_cancel_order).

-include("openapi.hrl").

-export([openapi_cancel_order/0]).

-export([openapi_cancel_order/1]).

-export_type([openapi_cancel_order/0]).

-type openapi_cancel_order() ::
  [ {'exchange_id', binary() }
  | {'exchange_order_id', binary() }
  | {'client_order_id', binary() }
  ].


openapi_cancel_order() ->
    openapi_cancel_order([]).

openapi_cancel_order(Fields) ->
  Default = [ {'exchange_id', binary() }
            , {'exchange_order_id', binary() }
            , {'client_order_id', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

