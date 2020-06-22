-module(openapi_cancel_order).

-export([encode/1]).

-export_type([openapi_cancel_order/0]).

-type openapi_cancel_order() ::
    #{ 'exchange_id' => binary(),
       'exchange_order_id' => binary(),
       'client_order_id' => binary()
     }.

encode(#{ 'exchange_id' := ExchangeId,
          'exchange_order_id' := ExchangeOrderId,
          'client_order_id' := ClientOrderId
        }) ->
    #{ 'exchange_id' => ExchangeId,
       'exchange_order_id' => ExchangeOrderId,
       'client_order_id' => ClientOrderId
     }.
