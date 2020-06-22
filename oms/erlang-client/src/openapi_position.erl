-module(openapi_position).

-export([encode/1]).

-export_type([openapi_position/0]).

-type openapi_position() ::
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
