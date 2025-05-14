-module(openapi_indexes_index_identifier).

-include("openapi.hrl").

-export([openapi_indexes_index_identifier/0]).

-export([openapi_indexes_index_identifier/1]).

-export_type([openapi_indexes_index_identifier/0]).

-type openapi_indexes_index_identifier() ::
  [ {'id', binary() }
  ].


openapi_indexes_index_identifier() ->
    openapi_indexes_index_identifier([]).

openapi_indexes_index_identifier(Fields) ->
  Default = [ {'id', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

