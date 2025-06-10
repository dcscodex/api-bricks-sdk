-module(openapi_v1_order_book_base).

-include("openapi.hrl").

-export([openapi_v1_order_book_base/0]).

-export([openapi_v1_order_book_base/1]).

-export_type([openapi_v1_order_book_base/0]).

-type openapi_v1_order_book_base() ::
  [ {'symbol_id', binary() }
  | {'time_exchange', datetime() }
  | {'time_coinapi', datetime() }
  | {'asks', openapi_any_type:openapi_any_type() }
  | {'bids', openapi_any_type:openapi_any_type() }
  ].


openapi_v1_order_book_base() ->
    openapi_v1_order_book_base([]).

openapi_v1_order_book_base(Fields) ->
  Default = [ {'symbol_id', binary() }
            , {'time_exchange', datetime() }
            , {'time_coinapi', datetime() }
            , {'asks', openapi_any_type:openapi_any_type() }
            , {'bids', openapi_any_type:openapi_any_type() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

