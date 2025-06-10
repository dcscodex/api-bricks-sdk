-module(openapi_v1_symbol_mapping).

-include("openapi.hrl").

-export([openapi_v1_symbol_mapping/0]).

-export([openapi_v1_symbol_mapping/1]).

-export_type([openapi_v1_symbol_mapping/0]).

-type openapi_v1_symbol_mapping() ::
  [ {'symbol_id', binary() }
  | {'symbol_id_exchange', binary() }
  | {'coinapi_datainfo_id', integer() }
  | {'asset_id_base_exchange', binary() }
  | {'asset_id_quote_exchange', binary() }
  | {'asset_id_base', binary() }
  | {'asset_id_quote', binary() }
  | {'price_precision', float() }
  | {'size_precision', float() }
  ].


openapi_v1_symbol_mapping() ->
    openapi_v1_symbol_mapping([]).

openapi_v1_symbol_mapping(Fields) ->
  Default = [ {'symbol_id', binary() }
            , {'symbol_id_exchange', binary() }
            , {'coinapi_datainfo_id', integer() }
            , {'asset_id_base_exchange', binary() }
            , {'asset_id_quote_exchange', binary() }
            , {'asset_id_base', binary() }
            , {'asset_id_quote', binary() }
            , {'price_precision', float() }
            , {'size_precision', float() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

