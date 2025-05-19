-module(openapi_v1_exchange_rates_timeseries_item).

-export([encode/1]).

-export_type([openapi_v1_exchange_rates_timeseries_item/0]).

-type openapi_v1_exchange_rates_timeseries_item() ::
    #{ 'time_period_start' => openapi_date_time:openapi_date_time(),
       'time_period_end' => openapi_date_time:openapi_date_time(),
       'time_open' => openapi_date_time:openapi_date_time(),
       'time_close' => openapi_date_time:openapi_date_time(),
       'rate_open' => float(),
       'rate_high' => float(),
       'rate_low' => float(),
       'rate_close' => float()
     }.

encode(#{ 'time_period_start' := TimePeriodStart,
          'time_period_end' := TimePeriodEnd,
          'time_open' := TimeOpen,
          'time_close' := TimeClose,
          'rate_open' := RateOpen,
          'rate_high' := RateHigh,
          'rate_low' := RateLow,
          'rate_close' := RateClose
        }) ->
    #{ 'time_period_start' => TimePeriodStart,
       'time_period_end' => TimePeriodEnd,
       'time_open' => TimeOpen,
       'time_close' => TimeClose,
       'rate_open' => RateOpen,
       'rate_high' => RateHigh,
       'rate_low' => RateLow,
       'rate_close' => RateClose
     }.
