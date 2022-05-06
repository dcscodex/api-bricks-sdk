-module(openapi_update_account).

-include("openapi.hrl").

-export([openapi_update_account/0]).

-export([openapi_update_account/1]).

-export_type([openapi_update_account/0]).

-type openapi_update_account() ::
  [ {'exchange_id', binary() }
  | {'parameters', list(openapi_key_value:openapi_key_value()) }
  ].


openapi_update_account() ->
    openapi_update_account([]).

openapi_update_account(Fields) ->
  Default = [ {'exchange_id', binary() }
            , {'parameters', list(openapi_key_value:openapi_key_value()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

