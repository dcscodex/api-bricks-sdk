-module(openapi_balance_data).

-include("openapi.hrl").

-export([openapi_balance_data/0]).

-export([openapi_balance_data/1]).

-export_type([openapi_balance_data/0]).

-type openapi_balance_data() ::
  [ {'asset_id_exchange', binary() }
  | {'asset_id_coinapi', binary() }
  | {'balance', float() }
  | {'available', float() }
  | {'locked', float() }
  | {'last_updated_by', binary() }
  | {'rate_usd', float() }
  | {'traded', float() }
  ].


openapi_balance_data() ->
    openapi_balance_data([]).

openapi_balance_data(Fields) ->
  Default = [ {'asset_id_exchange', binary() }
            , {'asset_id_coinapi', binary() }
            , {'balance', float() }
            , {'available', float() }
            , {'locked', float() }
            , {'last_updated_by', elements([<<"INITIALIZATION">>, <<"BALANCE_MANAGER">>, <<"EXCHANGE">>]) }
            , {'rate_usd', float() }
            , {'traded', float() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

