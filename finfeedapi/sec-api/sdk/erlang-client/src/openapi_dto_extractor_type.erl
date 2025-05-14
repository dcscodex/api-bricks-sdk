-module(openapi_dto_extractor_type).

-export([encode/1]).

-export_type([openapi_dto_extractor_type/0]).

-type openapi_dto_extractor_type() ::
    #{ 
     }.

encode(#{ 
        }) ->
    #{ 
     }.
