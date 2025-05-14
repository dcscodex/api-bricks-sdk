-module(openapi_fin_feed_api_symbol_model).

-include("openapi.hrl").

-export([openapi_fin_feed_api_symbol_model/0]).

-export([openapi_fin_feed_api_symbol_model/1]).

-export_type([openapi_fin_feed_api_symbol_model/0]).

-type openapi_fin_feed_api_symbol_model() ::
  [ {'symbol_id', binary() }
  | {'exchange_id', binary() }
  | {'security_category', binary() }
  | {'name', binary() }
  | {'date', binary() }
  | {'asset_class', binary() }
  ].


openapi_fin_feed_api_symbol_model() ->
    openapi_fin_feed_api_symbol_model([]).

openapi_fin_feed_api_symbol_model(Fields) ->
  Default = [ {'symbol_id', binary() }
            , {'exchange_id', binary() }
            , {'security_category', binary() }
            , {'name', binary() }
            , {'date', binary() }
            , {'asset_class', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

