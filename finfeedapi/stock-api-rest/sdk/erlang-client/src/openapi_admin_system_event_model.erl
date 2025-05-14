-module(openapi_admin_system_event_model).

-export([encode/1]).

-export_type([openapi_admin_system_event_model/0]).

-type openapi_admin_system_event_model() ::
    #{ 'timestamp_nanos' => integer(),
       'timestamp' => openapi_date_time:openapi_date_time(),
       'system_event' => integer(),
       'system_event_code' => binary(),
       'system_event_text' => binary(),
       'is_system_event_start_of_messages' => boolean(),
       'is_system_event_start_of_system_hours' => boolean(),
       'is_system_event_start_of_regular_market_hours' => boolean(),
       'is_system_event_end_of_regular_market_hours' => boolean(),
       'is_system_event_end_of_system_hours' => boolean(),
       'is_system_event_end_of_messages' => boolean()
     }.

encode(#{ 'timestamp_nanos' := TimestampNanos,
          'timestamp' := Timestamp,
          'system_event' := SystemEvent,
          'system_event_code' := SystemEventCode,
          'system_event_text' := SystemEventText,
          'is_system_event_start_of_messages' := IsSystemEventStartOfMessages,
          'is_system_event_start_of_system_hours' := IsSystemEventStartOfSystemHours,
          'is_system_event_start_of_regular_market_hours' := IsSystemEventStartOfRegularMarketHours,
          'is_system_event_end_of_regular_market_hours' := IsSystemEventEndOfRegularMarketHours,
          'is_system_event_end_of_system_hours' := IsSystemEventEndOfSystemHours,
          'is_system_event_end_of_messages' := IsSystemEventEndOfMessages
        }) ->
    #{ 'timestamp_nanos' => TimestampNanos,
       'timestamp' => Timestamp,
       'system_event' => SystemEvent,
       'system_event_code' => SystemEventCode,
       'system_event_text' => SystemEventText,
       'is_system_event_start_of_messages' => IsSystemEventStartOfMessages,
       'is_system_event_start_of_system_hours' => IsSystemEventStartOfSystemHours,
       'is_system_event_start_of_regular_market_hours' => IsSystemEventStartOfRegularMarketHours,
       'is_system_event_end_of_regular_market_hours' => IsSystemEventEndOfRegularMarketHours,
       'is_system_event_end_of_system_hours' => IsSystemEventEndOfSystemHours,
       'is_system_event_end_of_messages' => IsSystemEventEndOfMessages
     }.
