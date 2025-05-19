-module(openapi_v1_timeseries_period).

-export([encode/1]).

-export_type([openapi_v1_timeseries_period/0]).

-type openapi_v1_timeseries_period() ::
    #{ 'period_id' => binary(),
       'length_seconds' => integer(),
       'length_months' => integer(),
       'unit_count' => integer(),
       'unit_name' => binary(),
       'display_name' => binary()
     }.

encode(#{ 'period_id' := PeriodId,
          'length_seconds' := LengthSeconds,
          'length_months' := LengthMonths,
          'unit_count' := UnitCount,
          'unit_name' := UnitName,
          'display_name' := DisplayName
        }) ->
    #{ 'period_id' => PeriodId,
       'length_seconds' => LengthSeconds,
       'length_months' => LengthMonths,
       'unit_count' => UnitCount,
       'unit_name' => UnitName,
       'display_name' => DisplayName
     }.
