-module(openapi_v1_order_book).

-include("openapi.hrl").

-export([openapi_v1_order_book/0]).

-export([openapi_v1_order_book/1]).

-export_type([openapi_v1_order_book/0]).

-type openapi_v1_order_book() ::
  [ {'symbol_id', binary() }
  | {'time_exchange', datetime() }
  | {'time_coinapi', datetime() }
  | {'asks', openapi_any_type:openapi_any_type() }
  | {'bids', openapi_any_type:openapi_any_type() }
  ].


openapi_v1_order_book() ->
    openapi_v1_order_book([]).

openapi_v1_order_book(Fields) ->
  Default = [ {'symbol_id', binary() }
            , {'time_exchange', datetime() }
            , {'time_coinapi', datetime() }
            , {'asks', openapi_any_type:openapi_any_type() }
            , {'bids', openapi_any_type:openapi_any_type() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

