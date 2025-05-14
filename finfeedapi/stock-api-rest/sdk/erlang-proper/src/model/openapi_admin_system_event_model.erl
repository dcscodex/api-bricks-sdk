-module(openapi_admin_system_event_model).

-include("openapi.hrl").

-export([openapi_admin_system_event_model/0]).

-export([openapi_admin_system_event_model/1]).

-export_type([openapi_admin_system_event_model/0]).

-type openapi_admin_system_event_model() ::
  [ {'timestamp_nanos', integer() }
  | {'timestamp', datetime() }
  | {'system_event', integer() }
  | {'system_event_code', binary() }
  | {'system_event_text', binary() }
  | {'is_system_event_start_of_messages', boolean() }
  | {'is_system_event_start_of_system_hours', boolean() }
  | {'is_system_event_start_of_regular_market_hours', boolean() }
  | {'is_system_event_end_of_regular_market_hours', boolean() }
  | {'is_system_event_end_of_system_hours', boolean() }
  | {'is_system_event_end_of_messages', boolean() }
  ].


openapi_admin_system_event_model() ->
    openapi_admin_system_event_model([]).

openapi_admin_system_event_model(Fields) ->
  Default = [ {'timestamp_nanos', integer() }
            , {'timestamp', datetime() }
            , {'system_event', integer() }
            , {'system_event_code', binary() }
            , {'system_event_text', binary() }
            , {'is_system_event_start_of_messages', boolean() }
            , {'is_system_event_start_of_system_hours', boolean() }
            , {'is_system_event_start_of_regular_market_hours', boolean() }
            , {'is_system_event_end_of_regular_market_hours', boolean() }
            , {'is_system_event_end_of_system_hours', boolean() }
            , {'is_system_event_end_of_messages', boolean() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

