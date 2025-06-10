-module(openapi_v1_quote_trade).

-include("openapi.hrl").

-export([openapi_v1_quote_trade/0]).

-export([openapi_v1_quote_trade/1]).

-export_type([openapi_v1_quote_trade/0]).

-type openapi_v1_quote_trade() ::
  [ {'symbol_id', binary() }
  | {'time_exchange', datetime() }
  | {'time_coinapi', datetime() }
  | {'ask_price', float() }
  | {'ask_size', float() }
  | {'bid_price', float() }
  | {'bid_size', float() }
  | {'last_trade', openapi_v1_last_trade:openapi_v1_last_trade() }
  ].


openapi_v1_quote_trade() ->
    openapi_v1_quote_trade([]).

openapi_v1_quote_trade(Fields) ->
  Default = [ {'symbol_id', binary() }
            , {'time_exchange', datetime() }
            , {'time_coinapi', datetime() }
            , {'ask_price', float() }
            , {'ask_size', float() }
            , {'bid_price', float() }
            , {'bid_size', float() }
            , {'last_trade', openapi_v1_last_trade:openapi_v1_last_trade() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

