-module(openapi_message).

-export([encode/1]).

-export_type([openapi_message/0]).

-type openapi_message() ::
    #{ 'type' => binary(),
       'severity' => openapi_severity:openapi_severity(),
       'exchange_id' => binary(),
       'message' => binary()
     }.

encode(#{ 'type' := Type,
          'severity' := Severity,
          'exchange_id' := ExchangeId,
          'message' := Message
        }) ->
    #{ 'type' => Type,
       'severity' => Severity,
       'exchange_id' => ExchangeId,
       'message' => Message
     }.
