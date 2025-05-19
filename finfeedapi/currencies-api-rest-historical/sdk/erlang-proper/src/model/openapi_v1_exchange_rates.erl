-module(openapi_v1_exchange_rates).

-include("openapi.hrl").

-export([openapi_v1_exchange_rates/0]).

-export([openapi_v1_exchange_rates/1]).

-export_type([openapi_v1_exchange_rates/0]).

-type openapi_v1_exchange_rates() ::
  [ {'asset_id_base', binary() }
  | {'rates', list(openapi_v1_exchange_rates_rate:openapi_v1_exchange_rates_rate()) }
  ].


openapi_v1_exchange_rates() ->
    openapi_v1_exchange_rates([]).

openapi_v1_exchange_rates(Fields) ->
  Default = [ {'asset_id_base', binary() }
            , {'rates', list(openapi_v1_exchange_rates_rate:openapi_v1_exchange_rates_rate()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

