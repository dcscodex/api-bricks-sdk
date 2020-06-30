-module(openapi_order_data).

-export([encode/1]).

-export_type([openapi_order_data/0]).

-type openapi_order_data() ::
    #{ 'exchange_id' => binary(),
       'id' => binary(),
       'client_order_id_format_exchange' => binary(),
       'exchange_order_id' => binary(),
       'amount_open' => integer(),
       'amount_filled' => integer(),
       'status' => openapi_order_status:openapi_order_status(),
       'time_order' => list(),
       'error_message' => binary(),
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
          'id' := Id,
          'client_order_id_format_exchange' := ClientOrderIdFormatExchange,
          'exchange_order_id' := ExchangeOrderId,
          'amount_open' := AmountOpen,
          'amount_filled' := AmountFilled,
          'status' := Status,
          'time_order' := TimeOrder,
          'error_message' := ErrorMessage,
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
       'id' => Id,
       'client_order_id_format_exchange' => ClientOrderIdFormatExchange,
       'exchange_order_id' => ExchangeOrderId,
       'amount_open' => AmountOpen,
       'amount_filled' => AmountFilled,
       'status' => Status,
       'time_order' => TimeOrder,
       'error_message' => ErrorMessage,
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
