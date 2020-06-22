-module(openapi_cancel_all_order).

-export([encode/1]).

-export_type([openapi_cancel_all_order/0]).

-type openapi_cancel_all_order() ::
    #{ 'exchange_id' => binary()
     }.

encode(#{ 'exchange_id' := ExchangeId
        }) ->
    #{ 'exchange_id' => ExchangeId
     }.
