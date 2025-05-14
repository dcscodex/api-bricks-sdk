-module(openapi_level2_price_level_update_model).

-export([encode/1]).

-export_type([openapi_level2_price_level_update_model/0]).

-type openapi_level2_price_level_update_model() ::
    #{ 'symbol' => binary(),
       'timestamp_nanos' => integer(),
       'timestamp' => openapi_date_time:openapi_date_time(),
       'is_side_buy' => boolean(),
       'is_event_processing_complete' => boolean(),
       'size' => integer(),
       'price' => float()
     }.

encode(#{ 'symbol' := Symbol,
          'timestamp_nanos' := TimestampNanos,
          'timestamp' := Timestamp,
          'is_side_buy' := IsSideBuy,
          'is_event_processing_complete' := IsEventProcessingComplete,
          'size' := Size,
          'price' := Price
        }) ->
    #{ 'symbol' => Symbol,
       'timestamp_nanos' => TimestampNanos,
       'timestamp' => Timestamp,
       'is_side_buy' => IsSideBuy,
       'is_event_processing_complete' => IsEventProcessingComplete,
       'size' => Size,
       'price' => Price
     }.
