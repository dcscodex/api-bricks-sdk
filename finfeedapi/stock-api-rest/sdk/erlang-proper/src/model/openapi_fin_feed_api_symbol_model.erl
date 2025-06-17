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
  | {'cfi_code', binary() }
  | {'cfi_category', binary() }
  | {'cfi_group', binary() }
  | {'cfi_attribute1', binary() }
  | {'cfi_attribute2', binary() }
  | {'cfi_attribute3', binary() }
  | {'cfi_attribute4', binary() }
  | {'cfi_category_desc', binary() }
  | {'cfi_group_desc', binary() }
  | {'cfi_attribute1_desc', binary() }
  | {'cfi_attribute2_desc', binary() }
  | {'cfi_attribute3_desc', binary() }
  | {'cfi_attribute4_desc', binary() }
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
            , {'cfi_code', binary() }
            , {'cfi_category', binary() }
            , {'cfi_group', binary() }
            , {'cfi_attribute1', binary() }
            , {'cfi_attribute2', binary() }
            , {'cfi_attribute3', binary() }
            , {'cfi_attribute4', binary() }
            , {'cfi_category_desc', binary() }
            , {'cfi_group_desc', binary() }
            , {'cfi_attribute1_desc', binary() }
            , {'cfi_attribute2_desc', binary() }
            , {'cfi_attribute3_desc', binary() }
            , {'cfi_attribute4_desc', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

