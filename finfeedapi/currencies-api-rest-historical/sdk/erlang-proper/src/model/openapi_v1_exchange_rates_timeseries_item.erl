-module(openapi_v1_exchange_rates_timeseries_item).

-include("openapi.hrl").

-export([openapi_v1_exchange_rates_timeseries_item/0]).

-export([openapi_v1_exchange_rates_timeseries_item/1]).

-export_type([openapi_v1_exchange_rates_timeseries_item/0]).

-type openapi_v1_exchange_rates_timeseries_item() ::
  [ {'time_period_start', datetime() }
  | {'time_period_end', datetime() }
  | {'time_open', datetime() }
  | {'time_close', datetime() }
  | {'rate_open', float() }
  | {'rate_high', float() }
  | {'rate_low', float() }
  | {'rate_close', float() }
  ].


openapi_v1_exchange_rates_timeseries_item() ->
    openapi_v1_exchange_rates_timeseries_item([]).

openapi_v1_exchange_rates_timeseries_item(Fields) ->
  Default = [ {'time_period_start', datetime() }
            , {'time_period_end', datetime() }
            , {'time_open', datetime() }
            , {'time_close', datetime() }
            , {'rate_open', float() }
            , {'rate_high', float() }
            , {'rate_low', float() }
            , {'rate_close', float() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

