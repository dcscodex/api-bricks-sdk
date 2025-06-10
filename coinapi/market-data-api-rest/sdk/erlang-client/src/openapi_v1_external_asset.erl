-module(openapi_v1_external_asset).

-export([encode/1]).

-export_type([openapi_v1_external_asset/0]).

-type openapi_v1_external_asset() ::
    #{ 'asset_id' => binary(),
       'description' => binary(),
       'asset_type' => binary()
     }.

encode(#{ 'asset_id' := AssetId,
          'description' := Description,
          'asset_type' := AssetType
        }) ->
    #{ 'asset_id' => AssetId,
       'description' => Description,
       'asset_type' => AssetType
     }.
