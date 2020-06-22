-module(openapi_order).

-export([encode/1]).

-export_type([openapi_order/0]).

-type openapi_order() ::
    #{ 'type' => binary(),
       'exchange_name' => binary(),
       'data' => list()
     }.

encode(#{ 'type' := Type,
          'exchange_name' := ExchangeName,
          'data' := Data
        }) ->
    #{ 'type' => Type,
       'exchange_name' => ExchangeName,
       'data' => Data
     }.
