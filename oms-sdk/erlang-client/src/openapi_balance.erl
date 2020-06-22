-module(openapi_balance).

-export([encode/1]).

-export_type([openapi_balance/0]).

-type openapi_balance() ::
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
