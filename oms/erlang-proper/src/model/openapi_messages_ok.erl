-module(openapi_messages_ok).

-include("openapi.hrl").

-export([openapi_messages_ok/0]).

-export([openapi_messages_ok/1]).

-export_type([openapi_messages_ok/0]).

-type openapi_messages_ok() ::
  [ {'type', binary() }
  | {'exchange_id', binary() }
  | {'message', binary() }
  ].


openapi_messages_ok() ->
    openapi_messages_ok([]).

openapi_messages_ok(Fields) ->
  Default = [ {'type', binary() }
            , {'exchange_id', binary() }
            , {'message', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

