-module(openapi_v1_trade).

-export([encode/1]).

-export_type([openapi_v1_trade/0]).

-type openapi_v1_trade() ::
    #{ 'symbol_id' => binary(),
       'time_exchange' => openapi_date_time:openapi_date_time(),
       'time_coinapi' => openapi_date_time:openapi_date_time(),
       'uuid' => openapi_u_uid:openapi_u_uid(),
       'price' => float(),
       'size' => float(),
       'taker_side' => binary(),
       'id_trade' => binary(),
       'id_order_maker' => binary(),
       'id_order_taker' => binary()
     }.

encode(#{ 'symbol_id' := SymbolId,
          'time_exchange' := TimeExchange,
          'time_coinapi' := TimeCoinapi,
          'uuid' := Uuid,
          'price' := Price,
          'size' := Size,
          'taker_side' := TakerSide,
          'id_trade' := IdTrade,
          'id_order_maker' := IdOrderMaker,
          'id_order_taker' := IdOrderTaker
        }) ->
    #{ 'symbol_id' => SymbolId,
       'time_exchange' => TimeExchange,
       'time_coinapi' => TimeCoinapi,
       'uuid' => Uuid,
       'price' => Price,
       'size' => Size,
       'taker_side' => TakerSide,
       'id_trade' => IdTrade,
       'id_order_maker' => IdOrderMaker,
       'id_order_taker' => IdOrderTaker
     }.
