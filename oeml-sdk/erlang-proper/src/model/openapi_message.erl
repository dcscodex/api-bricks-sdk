-module(openapi_message).

-include("openapi.hrl").

-export([openapi_message/0]).

-export([openapi_message/1]).

-export_type([openapi_message/0]).

-type openapi_message() ::
  [ {'type', binary() }
  | {'severity', openapi_severity:openapi_severity() }
  | {'exchange_id', binary() }
  | {'message', binary() }
  ].


openapi_message() ->
    openapi_message([]).

openapi_message(Fields) ->
  Default = [ {'type', binary() }
            , {'severity', openapi_severity:openapi_severity() }
            , {'exchange_id', binary() }
            , {'message', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

