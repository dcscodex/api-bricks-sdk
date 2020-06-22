-module(openapi_messages_ok).

-export([encode/1]).

-export_type([openapi_messages_ok/0]).

-type openapi_messages_ok() ::
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
