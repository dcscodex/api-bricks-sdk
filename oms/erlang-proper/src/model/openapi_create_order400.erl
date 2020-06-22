-module(openapi_create_order400).

-include("openapi.hrl").

-export([openapi_create_order400/0]).

-export([openapi_create_order400/1]).

-export_type([openapi_create_order400/0]).

-type openapi_create_order400() ::
  [ {'type', binary() }
  | {'title', binary() }
  | {'status', integer() }
  | {'traceId', binary() }
  | {'errors', binary() }
  ].


openapi_create_order400() ->
    openapi_create_order400([]).

openapi_create_order400(Fields) ->
  Default = [ {'type', binary() }
            , {'title', binary() }
            , {'status', integer() }
            , {'traceId', binary() }
            , {'errors', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

