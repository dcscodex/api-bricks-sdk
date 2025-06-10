-module(openapi_v1_metric).

-export([encode/1]).

-export_type([openapi_v1_metric/0]).

-type openapi_v1_metric() ::
    #{ 'metric_id' => binary(),
       'description' => binary()
     }.

encode(#{ 'metric_id' := MetricId,
          'description' := Description
        }) ->
    #{ 'metric_id' => MetricId,
       'description' => Description
     }.
