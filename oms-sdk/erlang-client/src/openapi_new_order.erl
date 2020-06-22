-module(openapi_new_order).

-export([encode/1]).

-export_type([openapi_new_order/0]).

-type openapi_new_order() ::
    #{ 'exchange_id' => binary(),
       'client_order_id' => binary(),
       'symbol_exchange' => binary(),
       'symbol_coinapi' => binary(),
       'amount_order' => integer(),
       'price' => integer(),
       'side' => binary(),
       'order_type' => binary(),
       'time_in_force' => openapi_time_in_force:openapi_time_in_force(),
       'expire_time' => calendar:date(),
       'exec_inst' => list()
     }.

encode(#{ 'exchange_id' := ExchangeId,
          'client_order_id' := ClientOrderId,
          'symbol_exchange' := SymbolExchange,
          'symbol_coinapi' := SymbolCoinapi,
          'amount_order' := AmountOrder,
          'price' := Price,
          'side' := Side,
          'order_type' := OrderType,
          'time_in_force' := TimeInForce,
          'expire_time' := ExpireTime,
          'exec_inst' := ExecInst
        }) ->
    #{ 'exchange_id' => ExchangeId,
       'client_order_id' => ClientOrderId,
       'symbol_exchange' => SymbolExchange,
       'symbol_coinapi' => SymbolCoinapi,
       'amount_order' => AmountOrder,
       'price' => Price,
       'side' => Side,
       'order_type' => OrderType,
       'time_in_force' => TimeInForce,
       'expire_time' => ExpireTime,
       'exec_inst' => ExecInst
     }.
