-module(openapi_v1_timeseries_period).

-include("openapi.hrl").

-export([openapi_v1_timeseries_period/0]).

-export([openapi_v1_timeseries_period/1]).

-export_type([openapi_v1_timeseries_period/0]).

-type openapi_v1_timeseries_period() ::
  [ {'period_id', binary() }
  | {'length_seconds', integer() }
  | {'length_months', integer() }
  | {'unit_count', integer() }
  | {'unit_name', binary() }
  | {'display_name', binary() }
  ].


openapi_v1_timeseries_period() ->
    openapi_v1_timeseries_period([]).

openapi_v1_timeseries_period(Fields) ->
  Default = [ {'period_id', binary() }
            , {'length_seconds', integer() }
            , {'length_months', integer() }
            , {'unit_count', integer() }
            , {'unit_name', binary() }
            , {'display_name', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

