-module(openapi_messages_info).

-include("openapi.hrl").

-export([openapi_messages_info/0]).

-export([openapi_messages_info/1]).

-export_type([openapi_messages_info/0]).

-type openapi_messages_info() ::
  [ {'type', binary() }
  | {'exchange_id', binary() }
  | {'error_message', binary() }
  ].


openapi_messages_info() ->
    openapi_messages_info([]).

openapi_messages_info(Fields) ->
  Default = [ {'type', binary() }
            , {'exchange_id', binary() }
            , {'error_message', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

