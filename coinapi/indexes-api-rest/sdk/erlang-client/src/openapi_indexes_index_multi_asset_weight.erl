-module(openapi_indexes_index_multi_asset_weight).

-export([encode/1]).

-export_type([openapi_indexes_index_multi_asset_weight/0]).

-type openapi_indexes_index_multi_asset_weight() ::
    #{ 'indexId' => binary(),
       'assetId' => binary(),
       'weight' => float()
     }.

encode(#{ 'indexId' := IndexId,
          'assetId' := AssetId,
          'weight' := Weight
        }) ->
    #{ 'indexId' => IndexId,
       'assetId' => AssetId,
       'weight' => Weight
     }.
