-module(openapi_get_account).

-include("openapi.hrl").

-export([openapi_get_account/0]).

-export([openapi_get_account/1]).

-export_type([openapi_get_account/0]).

-type openapi_get_account() ::
  [ {'exchange_id', binary() }
  | {'parameters', list(openapi_key_value:openapi_key_value()) }
  ].


openapi_get_account() ->
    openapi_get_account([]).

openapi_get_account(Fields) ->
  Default = [ {'exchange_id', binary() }
            , {'parameters', list(openapi_key_value:openapi_key_value()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

