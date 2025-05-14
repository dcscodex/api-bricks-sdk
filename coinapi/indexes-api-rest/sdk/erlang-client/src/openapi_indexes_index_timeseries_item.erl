-module(openapi_indexes_index_timeseries_item).

-export([encode/1]).

-export_type([openapi_indexes_index_timeseries_item/0]).

-type openapi_indexes_index_timeseries_item() ::
    #{ 'time_period_start' => openapi_date_time:openapi_date_time(),
       'time_period_end' => openapi_date_time:openapi_date_time(),
       'time_open' => openapi_date_time:openapi_date_time(),
       'time_close' => openapi_date_time:openapi_date_time(),
       'value_open' => float(),
       'value_high' => float(),
       'value_low' => float(),
       'value_close' => float(),
       'value_count' => integer()
     }.

encode(#{ 'time_period_start' := TimePeriodStart,
          'time_period_end' := TimePeriodEnd,
          'time_open' := TimeOpen,
          'time_close' := TimeClose,
          'value_open' := ValueOpen,
          'value_high' := ValueHigh,
          'value_low' := ValueLow,
          'value_close' := ValueClose,
          'value_count' := ValueCount
        }) ->
    #{ 'time_period_start' => TimePeriodStart,
       'time_period_end' => TimePeriodEnd,
       'time_open' => TimeOpen,
       'time_close' => TimeClose,
       'value_open' => ValueOpen,
       'value_high' => ValueHigh,
       'value_low' => ValueLow,
       'value_close' => ValueClose,
       'value_count' => ValueCount
     }.
