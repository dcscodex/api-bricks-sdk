-module(openapi_position).

-include("openapi.hrl").

-export([openapi_position/0]).

-export([openapi_position/1]).

-export_type([openapi_position/0]).

-type openapi_position() ::
  [ {'type', binary() }
  | {'exchange_name', binary() }
  | {'data', list(openapi_position_data:openapi_position_data()) }
  ].


openapi_position() ->
    openapi_position([]).

openapi_position(Fields) ->
  Default = [ {'type', binary() }
            , {'exchange_name', binary() }
            , {'data', list(openapi_position_data:openapi_position_data()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

