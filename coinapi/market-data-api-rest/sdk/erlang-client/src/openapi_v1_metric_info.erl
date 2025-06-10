-module(openapi_v1_metric_info).

-export([encode/1]).

-export_type([openapi_v1_metric_info/0]).

-type openapi_v1_metric_info() ::
    #{ 'metric_id' => binary(),
       'description' => binary(),
       'source_id' => binary()
     }.

encode(#{ 'metric_id' := MetricId,
          'description' := Description,
          'source_id' := SourceId
        }) ->
    #{ 'metric_id' => MetricId,
       'description' => Description,
       'source_id' => SourceId
     }.
