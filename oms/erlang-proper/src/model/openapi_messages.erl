-module(openapi_messages).

-include("openapi.hrl").

-export([openapi_messages/0]).

-export([openapi_messages/1]).

-export_type([openapi_messages/0]).

-type openapi_messages() ::
  [ {'type', binary() }
  | {'exchange_id', binary() }
  | {'message', binary() }
  ].


openapi_messages() ->
    openapi_messages([]).

openapi_messages(Fields) ->
  Default = [ {'type', binary() }
            , {'exchange_id', binary() }
            , {'message', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

