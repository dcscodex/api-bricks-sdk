-module(openapi_fin_feed_api_symbol_model).

-export([encode/1]).

-export_type([openapi_fin_feed_api_symbol_model/0]).

-type openapi_fin_feed_api_symbol_model() ::
    #{ 'symbol_id' => binary(),
       'exchange_id' => binary(),
       'security_category' => binary(),
       'name' => binary(),
       'date' => binary(),
       'asset_class' => binary()
     }.

encode(#{ 'symbol_id' := SymbolId,
          'exchange_id' := ExchangeId,
          'security_category' := SecurityCategory,
          'name' := Name,
          'date' := Date,
          'asset_class' := AssetClass
        }) ->
    #{ 'symbol_id' => SymbolId,
       'exchange_id' => ExchangeId,
       'security_category' => SecurityCategory,
       'name' => Name,
       'date' => Date,
       'asset_class' => AssetClass
     }.
