-module(openapi_v1_order_book_depth).

-include("openapi.hrl").

-export([openapi_v1_order_book_depth/0]).

-export([openapi_v1_order_book_depth/1]).

-export_type([openapi_v1_order_book_depth/0]).

-type openapi_v1_order_book_depth() ::
  [ {'symbol_id', binary() }
  | {'time_exchange', datetime() }
  | {'time_coinapi', datetime() }
  | {'ask_levels', integer() }
  | {'bid_levels', integer() }
  | {'ask_depth', float() }
  | {'bid_depth', float() }
  ].


openapi_v1_order_book_depth() ->
    openapi_v1_order_book_depth([]).

openapi_v1_order_book_depth(Fields) ->
  Default = [ {'symbol_id', binary() }
            , {'time_exchange', datetime() }
            , {'time_coinapi', datetime() }
            , {'ask_levels', integer() }
            , {'bid_levels', integer() }
            , {'ask_depth', float() }
            , {'bid_depth', float() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

