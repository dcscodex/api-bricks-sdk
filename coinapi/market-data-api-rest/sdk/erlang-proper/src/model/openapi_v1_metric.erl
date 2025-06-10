-module(openapi_v1_metric).

-include("openapi.hrl").

-export([openapi_v1_metric/0]).

-export([openapi_v1_metric/1]).

-export_type([openapi_v1_metric/0]).

-type openapi_v1_metric() ::
  [ {'metric_id', binary() }
  | {'description', binary() }
  ].


openapi_v1_metric() ->
    openapi_v1_metric([]).

openapi_v1_metric(Fields) ->
  Default = [ {'metric_id', binary() }
            , {'description', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

