-module(openapi_messages).

-export([encode/1]).

-export_type([openapi_messages/0]).

-type openapi_messages() ::
    #{ 'type' => binary(),
       'exchange_id' => binary(),
       'message' => binary()
     }.

encode(#{ 'type' := Type,
          'exchange_id' := ExchangeId,
          'message' := Message
        }) ->
    #{ 'type' => Type,
       'exchange_id' => ExchangeId,
       'message' => Message
     }.
