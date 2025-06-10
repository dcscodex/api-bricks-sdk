-module(openapi_v1_metric_data).

-include("openapi.hrl").

-export([openapi_v1_metric_data/0]).

-export([openapi_v1_metric_data/1]).

-export_type([openapi_v1_metric_data/0]).

-type openapi_v1_metric_data() ::
  [ {'symbol_id', binary() }
  | {'time', datetime() }
  | {'value', float() }
  ].


openapi_v1_metric_data() ->
    openapi_v1_metric_data([]).

openapi_v1_metric_data(Fields) ->
  Default = [ {'symbol_id', binary() }
            , {'time', datetime() }
            , {'value', float() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

