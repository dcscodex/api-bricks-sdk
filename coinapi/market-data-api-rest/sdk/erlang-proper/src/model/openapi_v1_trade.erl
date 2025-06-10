-module(openapi_v1_trade).

-include("openapi.hrl").

-export([openapi_v1_trade/0]).

-export([openapi_v1_trade/1]).

-export_type([openapi_v1_trade/0]).

-type openapi_v1_trade() ::
  [ {'symbol_id', binary() }
  | {'time_exchange', datetime() }
  | {'time_coinapi', datetime() }
  | {'uuid', openapi_u_uid:openapi_u_uid() }
  | {'price', float() }
  | {'size', float() }
  | {'taker_side', binary() }
  | {'id_trade', binary() }
  | {'id_order_maker', binary() }
  | {'id_order_taker', binary() }
  ].


openapi_v1_trade() ->
    openapi_v1_trade([]).

openapi_v1_trade(Fields) ->
  Default = [ {'symbol_id', binary() }
            , {'time_exchange', datetime() }
            , {'time_coinapi', datetime() }
            , {'uuid', binary() }
            , {'price', float() }
            , {'size', float() }
            , {'taker_side', binary() }
            , {'id_trade', binary() }
            , {'id_order_maker', binary() }
            , {'id_order_taker', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

