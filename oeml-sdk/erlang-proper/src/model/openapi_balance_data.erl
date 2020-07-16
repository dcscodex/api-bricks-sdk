-module(openapi_balance_data).

-include("openapi.hrl").

-export([openapi_balance_data/0]).

-export([openapi_balance_data/1]).

-export_type([openapi_balance_data/0]).

-type openapi_balance_data() ::
  [ {'asset_id_exchange', binary() }
  | {'asset_id_coinapi', binary() }
  | {'balance', integer() }
  | {'available', integer() }
  | {'locked', integer() }
  | {'last_updated_by', binary() }
  | {'rate_usd', integer() }
  ].


openapi_balance_data() ->
    openapi_balance_data([]).

openapi_balance_data(Fields) ->
  Default = [ {'asset_id_exchange', binary() }
            , {'asset_id_coinapi', binary() }
            , {'balance', integer() }
            , {'available', integer() }
            , {'locked', integer() }
            , {'last_updated_by', elements([<<"INITIALIZATION">>, <<"BALANCE_MANAGER">>, <<"EXCHANGE">>]) }
            , {'rate_usd', integer() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

