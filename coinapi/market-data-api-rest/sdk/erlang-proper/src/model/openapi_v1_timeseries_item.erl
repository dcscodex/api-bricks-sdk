-module(openapi_v1_timeseries_item).

-include("openapi.hrl").

-export([openapi_v1_timeseries_item/0]).

-export([openapi_v1_timeseries_item/1]).

-export_type([openapi_v1_timeseries_item/0]).

-type openapi_v1_timeseries_item() ::
  [ {'time_period_start', datetime() }
  | {'time_period_end', datetime() }
  | {'time_open', datetime() }
  | {'time_close', datetime() }
  | {'price_open', float() }
  | {'price_high', float() }
  | {'price_low', float() }
  | {'price_close', float() }
  | {'volume_traded', float() }
  | {'trades_count', integer() }
  ].


openapi_v1_timeseries_item() ->
    openapi_v1_timeseries_item([]).

openapi_v1_timeseries_item(Fields) ->
  Default = [ {'time_period_start', datetime() }
            , {'time_period_end', datetime() }
            , {'time_open', datetime() }
            , {'time_close', datetime() }
            , {'price_open', float() }
            , {'price_high', float() }
            , {'price_low', float() }
            , {'price_close', float() }
            , {'volume_traded', float() }
            , {'trades_count', integer() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

