-module(openapi_v1_timeseries_item).

-export([encode/1]).

-export_type([openapi_v1_timeseries_item/0]).

-type openapi_v1_timeseries_item() ::
    #{ 'time_period_start' => openapi_date_time:openapi_date_time(),
       'time_period_end' => openapi_date_time:openapi_date_time(),
       'time_open' => openapi_date_time:openapi_date_time(),
       'time_close' => openapi_date_time:openapi_date_time(),
       'price_open' => float(),
       'price_high' => float(),
       'price_low' => float(),
       'price_close' => float(),
       'volume_traded' => float(),
       'trades_count' => integer()
     }.

encode(#{ 'time_period_start' := TimePeriodStart,
          'time_period_end' := TimePeriodEnd,
          'time_open' := TimeOpen,
          'time_close' := TimeClose,
          'price_open' := PriceOpen,
          'price_high' := PriceHigh,
          'price_low' := PriceLow,
          'price_close' := PriceClose,
          'volume_traded' := VolumeTraded,
          'trades_count' := TradesCount
        }) ->
    #{ 'time_period_start' => TimePeriodStart,
       'time_period_end' => TimePeriodEnd,
       'time_open' => TimeOpen,
       'time_close' => TimeClose,
       'price_open' => PriceOpen,
       'price_high' => PriceHigh,
       'price_low' => PriceLow,
       'price_close' => PriceClose,
       'volume_traded' => VolumeTraded,
       'trades_count' => TradesCount
     }.
