-module(openapi_indexes_index_value_component).

-include("openapi.hrl").

-export([openapi_indexes_index_value_component/0]).

-export([openapi_indexes_index_value_component/1]).

-export_type([openapi_indexes_index_value_component/0]).

-type openapi_indexes_index_value_component() ::
  [ {'component_id', binary() }
  | {'component_value', float() }
  ].


openapi_indexes_index_value_component() ->
    openapi_indexes_index_value_component([]).

openapi_indexes_index_value_component(Fields) ->
  Default = [ {'component_id', binary() }
            , {'component_value', float() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

