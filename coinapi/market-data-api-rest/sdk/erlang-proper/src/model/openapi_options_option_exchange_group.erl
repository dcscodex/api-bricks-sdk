-module(openapi_options_option_exchange_group).

-include("openapi.hrl").

-export([openapi_options_option_exchange_group/0]).

-export([openapi_options_option_exchange_group/1]).

-export_type([openapi_options_option_exchange_group/0]).

-type openapi_options_option_exchange_group() ::
  [ {'asset_id_base', binary() }
  | {'asset_id_quote', binary() }
  | {'underlying_price', float() }
  | {'time_expiration', datetime() }
  | {'strikes', list(openapi_options_strike:openapi_options_strike()) }
  ].


openapi_options_option_exchange_group() ->
    openapi_options_option_exchange_group([]).

openapi_options_option_exchange_group(Fields) ->
  Default = [ {'asset_id_base', binary() }
            , {'asset_id_quote', binary() }
            , {'underlying_price', float() }
            , {'time_expiration', datetime() }
            , {'strikes', list(openapi_options_strike:openapi_options_strike()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

