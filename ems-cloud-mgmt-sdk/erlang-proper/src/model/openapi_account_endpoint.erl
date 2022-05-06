-module(openapi_account_endpoint).

-include("openapi.hrl").

-export([openapi_account_endpoint/0]).

-export([openapi_account_endpoint/1]).

-export_type([openapi_account_endpoint/0]).

-type openapi_account_endpoint() ::
  [ {'exchange_id', binary() }
  | {'location_id', binary() }
  | {'endpoint_schema', binary() }
  | {'endpoint_host', binary() }
  | {'endpoint_url', binary() }
  ].


openapi_account_endpoint() ->
    openapi_account_endpoint([]).

openapi_account_endpoint(Fields) ->
  Default = [ {'exchange_id', binary() }
            , {'location_id', binary() }
            , {'endpoint_schema', binary() }
            , {'endpoint_host', binary() }
            , {'endpoint_url', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

