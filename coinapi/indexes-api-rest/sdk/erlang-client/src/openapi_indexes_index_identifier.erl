-module(openapi_indexes_index_identifier).

-export([encode/1]).

-export_type([openapi_indexes_index_identifier/0]).

-type openapi_indexes_index_identifier() ::
    #{ 'id' => binary()
     }.

encode(#{ 'id' := Id
        }) ->
    #{ 'id' => Id
     }.
