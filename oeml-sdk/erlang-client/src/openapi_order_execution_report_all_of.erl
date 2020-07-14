-module(openapi_order_execution_report_all_of).

-export([encode/1]).

-export_type([openapi_order_execution_report_all_of/0]).

-type openapi_order_execution_report_all_of() ::
    #{ 'client_order_id_format_exchange' := binary(),
       'exchange_order_id' => binary(),
       'amount_open' := integer(),
       'amount_filled' := integer(),
       'status' := openapi_ord_status:openapi_ord_status(),
       'time_order' := list(),
       'error_message' => binary()
     }.

encode(#{ 'client_order_id_format_exchange' := ClientOrderIdFormatExchange,
          'exchange_order_id' := ExchangeOrderId,
          'amount_open' := AmountOpen,
          'amount_filled' := AmountFilled,
          'status' := Status,
          'time_order' := TimeOrder,
          'error_message' := ErrorMessage
        }) ->
    #{ 'client_order_id_format_exchange' => ClientOrderIdFormatExchange,
       'exchange_order_id' => ExchangeOrderId,
       'amount_open' => AmountOpen,
       'amount_filled' => AmountFilled,
       'status' => Status,
       'time_order' => TimeOrder,
       'error_message' => ErrorMessage
     }.
