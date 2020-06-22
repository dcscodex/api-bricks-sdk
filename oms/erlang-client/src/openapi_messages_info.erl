-module(openapi_messages_info).

-export([encode/1]).

-export_type([openapi_messages_info/0]).

-type openapi_messages_info() ::
    #{ 'type' => binary(),
       'exchange_id' => binary(),
       'error_message' => binary()
     }.

encode(#{ 'type' := Type,
          'exchange_id' := ExchangeId,
          'error_message' := ErrorMessage
        }) ->
    #{ 'type' => Type,
       'exchange_id' => ExchangeId,
       'error_message' => ErrorMessage
     }.
