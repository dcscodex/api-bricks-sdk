-module(openapi_admin_security_event_model).

-export([encode/1]).

-export_type([openapi_admin_security_event_model/0]).

-type openapi_admin_security_event_model() ::
    #{ 'symbol' => binary(),
       'timestamp_nanos' => integer(),
       'timestamp' => openapi_date_time:openapi_date_time(),
       'security_event' => integer(),
       'security_event_code' => binary(),
       'security_event_text' => binary(),
       'is_opening_process_complete' => boolean(),
       'is_closing_process_complete' => boolean()
     }.

encode(#{ 'symbol' := Symbol,
          'timestamp_nanos' := TimestampNanos,
          'timestamp' := Timestamp,
          'security_event' := SecurityEvent,
          'security_event_code' := SecurityEventCode,
          'security_event_text' := SecurityEventText,
          'is_opening_process_complete' := IsOpeningProcessComplete,
          'is_closing_process_complete' := IsClosingProcessComplete
        }) ->
    #{ 'symbol' => Symbol,
       'timestamp_nanos' => TimestampNanos,
       'timestamp' => Timestamp,
       'security_event' => SecurityEvent,
       'security_event_code' => SecurityEventCode,
       'security_event_text' => SecurityEventText,
       'is_opening_process_complete' => IsOpeningProcessComplete,
       'is_closing_process_complete' => IsClosingProcessComplete
     }.
