-module(openapi_new_order).

-include("openapi.hrl").

-export([openapi_new_order/0]).

-export([openapi_new_order/1]).

-export_type([openapi_new_order/0]).

-type openapi_new_order() ::
  [ {'exchange_id', binary() }
  | {'client_order_id', binary() }
  | {'symbol_exchange', binary() }
  | {'symbol_coinapi', binary() }
  | {'amount_order', integer() }
  | {'price', integer() }
  | {'side', binary() }
  | {'order_type', binary() }
  | {'time_in_force', openapi_time_in_force:openapi_time_in_force() }
  | {'expire_time', date() }
  | {'exec_inst', list(binary()) }
  ].


openapi_new_order() ->
    openapi_new_order([]).

openapi_new_order(Fields) ->
  Default = [ {'exchange_id', binary() }
            , {'client_order_id', binary() }
            , {'symbol_exchange', binary() }
            , {'symbol_coinapi', binary() }
            , {'amount_order', integer() }
            , {'price', integer() }
            , {'side', elements([<<"BUY">>, <<"SELL">>]) }
            , {'order_type', elements([<<"LIMIT">>]) }
            , {'time_in_force', openapi_time_in_force:openapi_time_in_force() }
            , {'expire_time', date() }
            , {'exec_inst', list(binary()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

