-module(openapi_v1_last_trade).

-export([encode/1]).

-export_type([openapi_v1_last_trade/0]).

-type openapi_v1_last_trade() ::
    #{ 'time_exchange' => openapi_date_time:openapi_date_time(),
       'time_coinapi' => openapi_date_time:openapi_date_time(),
       'uuid' => openapi_u_uid:openapi_u_uid(),
       'price' => float(),
       'size' => float(),
       'taker_side' => binary()
     }.

encode(#{ 'time_exchange' := TimeExchange,
          'time_coinapi' := TimeCoinapi,
          'uuid' := Uuid,
          'price' := Price,
          'size' := Size,
          'taker_side' := TakerSide
        }) ->
    #{ 'time_exchange' => TimeExchange,
       'time_coinapi' => TimeCoinapi,
       'uuid' => Uuid,
       'price' => Price,
       'size' => Size,
       'taker_side' => TakerSide
     }.
