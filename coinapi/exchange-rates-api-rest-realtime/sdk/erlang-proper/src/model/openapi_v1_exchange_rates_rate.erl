-module(openapi_v1_exchange_rates_rate).

-include("openapi.hrl").

-export([openapi_v1_exchange_rates_rate/0]).

-export([openapi_v1_exchange_rates_rate/1]).

-export_type([openapi_v1_exchange_rates_rate/0]).

-type openapi_v1_exchange_rates_rate() ::
  [ {'time', datetime() }
  | {'asset_id_quote', binary() }
  | {'rate', float() }
  ].


openapi_v1_exchange_rates_rate() ->
    openapi_v1_exchange_rates_rate([]).

openapi_v1_exchange_rates_rate(Fields) ->
  Default = [ {'time', datetime() }
            , {'asset_id_quote', binary() }
            , {'rate', float() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

