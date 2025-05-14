-module(openapi_indexes_index_definition_snapshot_entry).

-export([encode/1]).

-export_type([openapi_indexes_index_definition_snapshot_entry/0]).

-type openapi_indexes_index_definition_snapshot_entry() ::
    #{ 'index_id' => binary(),
       'timestamp' => openapi_date_time:openapi_date_time(),
       'value' => float()
     }.

encode(#{ 'index_id' := IndexId,
          'timestamp' := Timestamp,
          'value' := Value
        }) ->
    #{ 'index_id' => IndexId,
       'timestamp' => Timestamp,
       'value' => Value
     }.
