-module(openapi_account_info).

-include("openapi.hrl").

-export([openapi_account_info/0]).

-export([openapi_account_info/1]).

-export_type([openapi_account_info/0]).

-type openapi_account_info() ::
  [ {'exchange_id', binary() }
  ].


openapi_account_info() ->
    openapi_account_info([]).

openapi_account_info(Fields) ->
  Default = [ {'exchange_id', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

