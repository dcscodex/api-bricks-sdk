-module(openapi_dto_extractor_type).

-include("openapi.hrl").

-export([openapi_dto_extractor_type/0]).

-export_type([openapi_dto_extractor_type/0]).

-type openapi_dto_extractor_type() ::
  binary().

openapi_dto_extractor_type() ->
  elements([<<"text">>, <<"html">>]).

