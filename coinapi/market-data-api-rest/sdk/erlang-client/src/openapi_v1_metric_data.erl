-module(openapi_v1_metric_data).

-export([encode/1]).

-export_type([openapi_v1_metric_data/0]).

-type openapi_v1_metric_data() ::
    #{ 'symbol_id' => binary(),
       'time' => openapi_date_time:openapi_date_time(),
       'value' => float()
     }.

encode(#{ 'symbol_id' := SymbolId,
          'time' := Time,
          'value' := Value
        }) ->
    #{ 'symbol_id' => SymbolId,
       'time' => Time,
       'value' => Value
     }.
