-module(openapi_position_data).

-include("openapi.hrl").

-export([openapi_position_data/0]).

-export([openapi_position_data/1]).

-export_type([openapi_position_data/0]).

-type openapi_position_data() ::
  [ {'id', binary() }
  | {'symbol_exchange', binary() }
  | {'symbol_coinapi', binary() }
  | {'avg_entry_price', integer() }
  | {'quantity', integer() }
  | {'is_buy', boolean() }
  | {'unrealised_pn_l', integer() }
  | {'leverage', integer() }
  | {'cross_margin', boolean() }
  | {'liquidation_price', integer() }
  | {'raw_data', binary() }
  ].


openapi_position_data() ->
    openapi_position_data([]).

openapi_position_data(Fields) ->
  Default = [ {'id', binary() }
            , {'symbol_exchange', binary() }
            , {'symbol_coinapi', binary() }
            , {'avg_entry_price', integer() }
            , {'quantity', integer() }
            , {'is_buy', boolean() }
            , {'unrealised_pn_l', integer() }
            , {'leverage', integer() }
            , {'cross_margin', boolean() }
            , {'liquidation_price', integer() }
            , {'raw_data', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

