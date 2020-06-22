-module(openapi_balance_data).

-include("openapi.hrl").

-export([openapi_balance_data/0]).

-export([openapi_balance_data/1]).

-export_type([openapi_balance_data/0]).

-type openapi_balance_data() ::
  [ {'id', binary() }
  | {'symbol_exchange', binary() }
  | {'symbol_coinapi', binary() }
  | {'balance', integer() }
  | {'available', integer() }
  | {'locked', integer() }
  | {'update_origin', binary() }
  ].


openapi_balance_data() ->
    openapi_balance_data([]).

openapi_balance_data(Fields) ->
  Default = [ {'id', binary() }
            , {'symbol_exchange', binary() }
            , {'symbol_coinapi', binary() }
            , {'balance', integer() }
            , {'available', integer() }
            , {'locked', integer() }
            , {'update_origin', elements([<<"INITIALIZATION">>, <<"BALANCE_MANAGER">>, <<"EXCHANGE">>]) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

