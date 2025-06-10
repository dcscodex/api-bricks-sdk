-module(openapi_v1_order_book).

-export([encode/1]).

-export_type([openapi_v1_order_book/0]).

-type openapi_v1_order_book() ::
    #{ 'symbol_id' => binary(),
       'time_exchange' => openapi_date_time:openapi_date_time(),
       'time_coinapi' => openapi_date_time:openapi_date_time(),
       'asks' => openapi_any_type:openapi_any_type(),
       'bids' => openapi_any_type:openapi_any_type()
     }.

encode(#{ 'symbol_id' := SymbolId,
          'time_exchange' := TimeExchange,
          'time_coinapi' := TimeCoinapi,
          'asks' := Asks,
          'bids' := Bids
        }) ->
    #{ 'symbol_id' => SymbolId,
       'time_exchange' => TimeExchange,
       'time_coinapi' => TimeCoinapi,
       'asks' => Asks,
       'bids' => Bids
     }.
