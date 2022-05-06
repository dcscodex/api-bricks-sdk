-module(openapi_key_value).

-include("openapi.hrl").

-export([openapi_key_value/0]).

-export([openapi_key_value/1]).

-export_type([openapi_key_value/0]).

-type openapi_key_value() ::
  [ {'key', binary() }
  | {'value', binary() }
  ].


openapi_key_value() ->
    openapi_key_value([]).

openapi_key_value(Fields) ->
  Default = [ {'key', binary() }
            , {'value', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

