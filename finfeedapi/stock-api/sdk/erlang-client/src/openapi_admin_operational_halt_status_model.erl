-module(openapi_admin_operational_halt_status_model).

-export([encode/1]).

-export_type([openapi_admin_operational_halt_status_model/0]).

-type openapi_admin_operational_halt_status_model() ::
    #{ 'symbol' => binary(),
       'timestamp_nanos' => integer(),
       'timestamp' => openapi_date_time:openapi_date_time(),
       'operational_halt_status' => integer(),
       'operational_halt_status_code' => binary(),
       'operational_halt_status_text' => binary(),
       'is_operationally_halted' => boolean(),
       'is_not_operationally_halted' => boolean()
     }.

encode(#{ 'symbol' := Symbol,
          'timestamp_nanos' := TimestampNanos,
          'timestamp' := Timestamp,
          'operational_halt_status' := OperationalHaltStatus,
          'operational_halt_status_code' := OperationalHaltStatusCode,
          'operational_halt_status_text' := OperationalHaltStatusText,
          'is_operationally_halted' := IsOperationallyHalted,
          'is_not_operationally_halted' := IsNotOperationallyHalted
        }) ->
    #{ 'symbol' => Symbol,
       'timestamp_nanos' => TimestampNanos,
       'timestamp' => Timestamp,
       'operational_halt_status' => OperationalHaltStatus,
       'operational_halt_status_code' => OperationalHaltStatusCode,
       'operational_halt_status_text' => OperationalHaltStatusText,
       'is_operationally_halted' => IsOperationallyHalted,
       'is_not_operationally_halted' => IsNotOperationallyHalted
     }.
