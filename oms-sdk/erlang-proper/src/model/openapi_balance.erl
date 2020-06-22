-module(openapi_balance).

-include("openapi.hrl").

-export([openapi_balance/0]).

-export([openapi_balance/1]).

-export_type([openapi_balance/0]).

-type openapi_balance() ::
  [ {'type', binary() }
  | {'exchange_name', binary() }
  | {'data', list(openapi_balance_data:openapi_balance_data()) }
  ].


openapi_balance() ->
    openapi_balance([]).

openapi_balance(Fields) ->
  Default = [ {'type', binary() }
            , {'exchange_name', binary() }
            , {'data', list(openapi_balance_data:openapi_balance_data()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

