-module(openapi_admin_operational_halt_status_model).

-include("openapi.hrl").

-export([openapi_admin_operational_halt_status_model/0]).

-export([openapi_admin_operational_halt_status_model/1]).

-export_type([openapi_admin_operational_halt_status_model/0]).

-type openapi_admin_operational_halt_status_model() ::
  [ {'symbol', binary() }
  | {'timestamp_nanos', integer() }
  | {'timestamp', datetime() }
  | {'operational_halt_status', integer() }
  | {'operational_halt_status_code', binary() }
  | {'operational_halt_status_text', binary() }
  | {'is_operationally_halted', boolean() }
  | {'is_not_operationally_halted', boolean() }
  ].


openapi_admin_operational_halt_status_model() ->
    openapi_admin_operational_halt_status_model([]).

openapi_admin_operational_halt_status_model(Fields) ->
  Default = [ {'symbol', binary() }
            , {'timestamp_nanos', integer() }
            , {'timestamp', datetime() }
            , {'operational_halt_status', integer() }
            , {'operational_halt_status_code', binary() }
            , {'operational_halt_status_text', binary() }
            , {'is_operationally_halted', boolean() }
            , {'is_not_operationally_halted', boolean() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

