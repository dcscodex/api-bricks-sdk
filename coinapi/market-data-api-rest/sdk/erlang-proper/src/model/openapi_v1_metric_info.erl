-module(openapi_v1_metric_info).

-include("openapi.hrl").

-export([openapi_v1_metric_info/0]).

-export([openapi_v1_metric_info/1]).

-export_type([openapi_v1_metric_info/0]).

-type openapi_v1_metric_info() ::
  [ {'metric_id', binary() }
  | {'description', binary() }
  | {'source_id', binary() }
  ].


openapi_v1_metric_info() ->
    openapi_v1_metric_info([]).

openapi_v1_metric_info(Fields) ->
  Default = [ {'metric_id', binary() }
            , {'description', binary() }
            , {'source_id', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

