-module(openapi_severity).

-include("openapi.hrl").

-export([openapi_severity/0]).

-export_type([openapi_severity/0]).

-type openapi_severity() ::
  binary().

openapi_severity() ->
  elements([<<"INFO">>, <<"WARNING">>, <<"ERROR">>]).

