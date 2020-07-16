-module(openapi_order_execution_report).

-include("openapi.hrl").

-export([openapi_order_execution_report/0]).

-export([openapi_order_execution_report/1]).

-export_type([openapi_order_execution_report/0]).

-type openapi_order_execution_report() ::
  [ {'exchange_id', binary() }
  | {'client_order_id', binary() }
  | {'symbol_id_exchange', binary() }
  | {'symbol_id_coinapi', binary() }
  | {'amount_order', integer() }
  | {'price', integer() }
  | {'side', openapi_ord_side:openapi_ord_side() }
  | {'order_type', openapi_ord_type:openapi_ord_type() }
  | {'time_in_force', openapi_time_in_force:openapi_time_in_force() }
  | {'expire_time', date() }
  | {'exec_inst', list(binary()) }
  | {'client_order_id_format_exchange', binary() }
  | {'exchange_order_id', binary() }
  | {'amount_open', integer() }
  | {'amount_filled', integer() }
  | {'status', openapi_ord_status:openapi_ord_status() }
  | {'time_order', list(list(binary())) }
  | {'error_message', binary() }
  ].


openapi_order_execution_report() ->
    openapi_order_execution_report([]).

openapi_order_execution_report(Fields) ->
  Default = [ {'exchange_id', binary() }
            , {'client_order_id', binary() }
            , {'symbol_id_exchange', binary() }
            , {'symbol_id_coinapi', binary() }
            , {'amount_order', integer() }
            , {'price', integer() }
            , {'side', openapi_ord_side:openapi_ord_side() }
            , {'order_type', openapi_ord_type:openapi_ord_type() }
            , {'time_in_force', openapi_time_in_force:openapi_time_in_force() }
            , {'expire_time', date() }
            , {'exec_inst', list(binary()) }
            , {'client_order_id_format_exchange', binary() }
            , {'exchange_order_id', binary() }
            , {'amount_open', integer() }
            , {'amount_filled', integer() }
            , {'status', openapi_ord_status:openapi_ord_status() }
            , {'time_order', list(list(binary())) }
            , {'error_message', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

