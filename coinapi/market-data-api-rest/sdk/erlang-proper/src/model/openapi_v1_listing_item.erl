-module(openapi_v1_listing_item).

-include("openapi.hrl").

-export([openapi_v1_listing_item/0]).

-export([openapi_v1_listing_item/1]).

-export_type([openapi_v1_listing_item/0]).

-type openapi_v1_listing_item() ::
  [ {'metric_id', binary() }
  | {'symbol_id', binary() }
  | {'symbol_id_external', binary() }
  | {'exchange_id', binary() }
  | {'asset_id', binary() }
  | {'asset_id_external', binary() }
  | {'chain_id', binary() }
  | {'network_id', binary() }
  ].


openapi_v1_listing_item() ->
    openapi_v1_listing_item([]).

openapi_v1_listing_item(Fields) ->
  Default = [ {'metric_id', binary() }
            , {'symbol_id', binary() }
            , {'symbol_id_external', binary() }
            , {'exchange_id', binary() }
            , {'asset_id', binary() }
            , {'asset_id_external', binary() }
            , {'chain_id', binary() }
            , {'network_id', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

