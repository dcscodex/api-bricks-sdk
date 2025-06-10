-module(openapi_v1_symbol_mapping).

-export([encode/1]).

-export_type([openapi_v1_symbol_mapping/0]).

-type openapi_v1_symbol_mapping() ::
    #{ 'symbol_id' => binary(),
       'symbol_id_exchange' => binary(),
       'coinapi_datainfo_id' => integer(),
       'asset_id_base_exchange' => binary(),
       'asset_id_quote_exchange' => binary(),
       'asset_id_base' => binary(),
       'asset_id_quote' => binary(),
       'price_precision' => float(),
       'size_precision' => float()
     }.

encode(#{ 'symbol_id' := SymbolId,
          'symbol_id_exchange' := SymbolIdExchange,
          'coinapi_datainfo_id' := CoinapiDatainfoId,
          'asset_id_base_exchange' := AssetIdBaseExchange,
          'asset_id_quote_exchange' := AssetIdQuoteExchange,
          'asset_id_base' := AssetIdBase,
          'asset_id_quote' := AssetIdQuote,
          'price_precision' := PricePrecision,
          'size_precision' := SizePrecision
        }) ->
    #{ 'symbol_id' => SymbolId,
       'symbol_id_exchange' => SymbolIdExchange,
       'coinapi_datainfo_id' => CoinapiDatainfoId,
       'asset_id_base_exchange' => AssetIdBaseExchange,
       'asset_id_quote_exchange' => AssetIdQuoteExchange,
       'asset_id_base' => AssetIdBase,
       'asset_id_quote' => AssetIdQuote,
       'price_precision' => PricePrecision,
       'size_precision' => SizePrecision
     }.
