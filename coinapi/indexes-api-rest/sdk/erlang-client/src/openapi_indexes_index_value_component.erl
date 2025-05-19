-module(openapi_indexes_index_value_component).

-export([encode/1]).

-export_type([openapi_indexes_index_value_component/0]).

-type openapi_indexes_index_value_component() ::
    #{ 'component_id' => binary(),
       'component_value' => float()
     }.

encode(#{ 'component_id' := ComponentId,
          'component_value' := ComponentValue
        }) ->
    #{ 'component_id' => ComponentId,
       'component_value' => ComponentValue
     }.
