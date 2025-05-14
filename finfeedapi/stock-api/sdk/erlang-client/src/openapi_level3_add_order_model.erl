-module(openapi_level3_add_order_model).

-export([encode/1]).

-export_type([openapi_level3_add_order_model/0]).

-type openapi_level3_add_order_model() ::
    #{ 'symbol' => binary(),
       'timestamp_nanos' => integer(),
       'timestamp' => openapi_date_time:openapi_date_time(),
       'is_side_buy' => boolean(),
       'size' => integer(),
       'price' => float(),
       'order_id' => integer()
     }.

encode(#{ 'symbol' := Symbol,
          'timestamp_nanos' := TimestampNanos,
          'timestamp' := Timestamp,
          'is_side_buy' := IsSideBuy,
          'size' := Size,
          'price' := Price,
          'order_id' := OrderId
        }) ->
    #{ 'symbol' => Symbol,
       'timestamp_nanos' => TimestampNanos,
       'timestamp' => Timestamp,
       'is_side_buy' => IsSideBuy,
       'size' => Size,
       'price' => Price,
       'order_id' => OrderId
     }.
