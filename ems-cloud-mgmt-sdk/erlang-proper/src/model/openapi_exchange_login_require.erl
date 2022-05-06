-module(openapi_exchange_login_require).

-include("openapi.hrl").

-export([openapi_exchange_login_require/0]).

-export([openapi_exchange_login_require/1]).

-export_type([openapi_exchange_login_require/0]).

-type openapi_exchange_login_require() ::
  [ {'exchange_id', binary() }
  | {'location_id', binary() }
  | {'required_parameters', list(binary()) }
  ].


openapi_exchange_login_require() ->
    openapi_exchange_login_require([]).

openapi_exchange_login_require(Fields) ->
  Default = [ {'exchange_id', binary() }
            , {'location_id', binary() }
            , {'required_parameters', list(binary()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

