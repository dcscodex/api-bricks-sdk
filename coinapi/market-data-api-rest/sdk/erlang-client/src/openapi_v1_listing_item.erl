-module(openapi_v1_listing_item).

-export([encode/1]).

-export_type([openapi_v1_listing_item/0]).

-type openapi_v1_listing_item() ::
    #{ 'metric_id' => binary(),
       'symbol_id' => binary(),
       'symbol_id_external' => binary(),
       'exchange_id' => binary(),
       'asset_id' => binary(),
       'asset_id_external' => binary(),
       'chain_id' => binary(),
       'network_id' => binary()
     }.

encode(#{ 'metric_id' := MetricId,
          'symbol_id' := SymbolId,
          'symbol_id_external' := SymbolIdExternal,
          'exchange_id' := ExchangeId,
          'asset_id' := AssetId,
          'asset_id_external' := AssetIdExternal,
          'chain_id' := ChainId,
          'network_id' := NetworkId
        }) ->
    #{ 'metric_id' => MetricId,
       'symbol_id' => SymbolId,
       'symbol_id_external' => SymbolIdExternal,
       'exchange_id' => ExchangeId,
       'asset_id' => AssetId,
       'asset_id_external' => AssetIdExternal,
       'chain_id' => ChainId,
       'network_id' => NetworkId
     }.
