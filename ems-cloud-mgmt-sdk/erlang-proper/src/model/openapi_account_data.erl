-module(openapi_account_data).

-include("openapi.hrl").

-export([openapi_account_data/0]).

-export([openapi_account_data/1]).

-export_type([openapi_account_data/0]).

-type openapi_account_data() ::
  [ {'exchange_id', binary() }
  | {'parameters', list(openapi_key_value:openapi_key_value()) }
  ].


openapi_account_data() ->
    openapi_account_data([]).

openapi_account_data(Fields) ->
  Default = [ {'exchange_id', binary() }
            , {'parameters', list(openapi_key_value:openapi_key_value()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

