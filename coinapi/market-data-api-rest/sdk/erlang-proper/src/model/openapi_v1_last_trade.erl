-module(openapi_v1_last_trade).

-include("openapi.hrl").

-export([openapi_v1_last_trade/0]).

-export([openapi_v1_last_trade/1]).

-export_type([openapi_v1_last_trade/0]).

-type openapi_v1_last_trade() ::
  [ {'time_exchange', datetime() }
  | {'time_coinapi', datetime() }
  | {'uuid', openapi_u_uid:openapi_u_uid() }
  | {'price', float() }
  | {'size', float() }
  | {'taker_side', binary() }
  ].


openapi_v1_last_trade() ->
    openapi_v1_last_trade([]).

openapi_v1_last_trade(Fields) ->
  Default = [ {'time_exchange', datetime() }
            , {'time_coinapi', datetime() }
            , {'uuid', binary() }
            , {'price', float() }
            , {'size', float() }
            , {'taker_side', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

