-module(openapi_options_strike).

-include("openapi.hrl").

-export([openapi_options_strike/0]).

-export([openapi_options_strike/1]).

-export_type([openapi_options_strike/0]).

-type openapi_options_strike() ::
  [ {'strike_price', float() }
  | {'call', openapi_v1_quote_trade:openapi_v1_quote_trade() }
  | {'put', openapi_v1_quote_trade:openapi_v1_quote_trade() }
  ].


openapi_options_strike() ->
    openapi_options_strike([]).

openapi_options_strike(Fields) ->
  Default = [ {'strike_price', float() }
            , {'call', openapi_v1_quote_trade:openapi_v1_quote_trade() }
            , {'put', openapi_v1_quote_trade:openapi_v1_quote_trade() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

