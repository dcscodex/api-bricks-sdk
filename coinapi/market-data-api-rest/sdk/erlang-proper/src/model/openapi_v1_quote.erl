-module(openapi_v1_quote).

-include("openapi.hrl").

-export([openapi_v1_quote/0]).

-export([openapi_v1_quote/1]).

-export_type([openapi_v1_quote/0]).

-type openapi_v1_quote() ::
  [ {'symbol_id', binary() }
  | {'time_exchange', datetime() }
  | {'time_coinapi', datetime() }
  | {'ask_price', float() }
  | {'ask_size', float() }
  | {'bid_price', float() }
  | {'bid_size', float() }
  ].


openapi_v1_quote() ->
    openapi_v1_quote([]).

openapi_v1_quote(Fields) ->
  Default = [ {'symbol_id', binary() }
            , {'time_exchange', datetime() }
            , {'time_coinapi', datetime() }
            , {'ask_price', float() }
            , {'ask_size', float() }
            , {'bid_price', float() }
            , {'bid_size', float() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

