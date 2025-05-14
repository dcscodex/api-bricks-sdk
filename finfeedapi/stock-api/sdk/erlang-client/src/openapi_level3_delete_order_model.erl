-module(openapi_level3_delete_order_model).

-export([encode/1]).

-export_type([openapi_level3_delete_order_model/0]).

-type openapi_level3_delete_order_model() ::
    #{ 'symbol' => binary(),
       'timestamp_nanos' => integer(),
       'timestamp' => openapi_date_time:openapi_date_time(),
       'order_id_reference' => integer()
     }.

encode(#{ 'symbol' := Symbol,
          'timestamp_nanos' := TimestampNanos,
          'timestamp' := Timestamp,
          'order_id_reference' := OrderIdReference
        }) ->
    #{ 'symbol' => Symbol,
       'timestamp_nanos' => TimestampNanos,
       'timestamp' => Timestamp,
       'order_id_reference' => OrderIdReference
     }.
