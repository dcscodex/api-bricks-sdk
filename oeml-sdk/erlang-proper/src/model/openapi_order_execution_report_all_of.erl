-module(openapi_order_execution_report_all_of).

-include("openapi.hrl").

-export([openapi_order_execution_report_all_of/0]).

-export([openapi_order_execution_report_all_of/1]).

-export_type([openapi_order_execution_report_all_of/0]).

-type openapi_order_execution_report_all_of() ::
  [ {'client_order_id_format_exchange', binary() }
  | {'exchange_order_id', binary() }
  | {'amount_open', integer() }
  | {'amount_filled', integer() }
  | {'status', openapi_ord_status:openapi_ord_status() }
  | {'time_order', list(list(binary())) }
  | {'error_message', binary() }
  ].


openapi_order_execution_report_all_of() ->
    openapi_order_execution_report_all_of([]).

openapi_order_execution_report_all_of(Fields) ->
  Default = [ {'client_order_id_format_exchange', binary() }
            , {'exchange_order_id', binary() }
            , {'amount_open', integer() }
            , {'amount_filled', integer() }
            , {'status', openapi_ord_status:openapi_ord_status() }
            , {'time_order', list(list(binary())) }
            , {'error_message', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

