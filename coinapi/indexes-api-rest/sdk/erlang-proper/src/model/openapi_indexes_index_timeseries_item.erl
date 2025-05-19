-module(openapi_indexes_index_timeseries_item).

-include("openapi.hrl").

-export([openapi_indexes_index_timeseries_item/0]).

-export([openapi_indexes_index_timeseries_item/1]).

-export_type([openapi_indexes_index_timeseries_item/0]).

-type openapi_indexes_index_timeseries_item() ::
  [ {'time_period_start', datetime() }
  | {'time_period_end', datetime() }
  | {'time_open', datetime() }
  | {'time_close', datetime() }
  | {'value_open', float() }
  | {'value_high', float() }
  | {'value_low', float() }
  | {'value_close', float() }
  | {'value_count', integer() }
  ].


openapi_indexes_index_timeseries_item() ->
    openapi_indexes_index_timeseries_item([]).

openapi_indexes_index_timeseries_item(Fields) ->
  Default = [ {'time_period_start', datetime() }
            , {'time_period_end', datetime() }
            , {'time_open', datetime() }
            , {'time_close', datetime() }
            , {'value_open', float() }
            , {'value_high', float() }
            , {'value_low', float() }
            , {'value_close', float() }
            , {'value_count', integer() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

