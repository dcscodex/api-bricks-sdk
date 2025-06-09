-module(openapi_fin_feed_api_symbol_model).

-export([encode/1]).

-export_type([openapi_fin_feed_api_symbol_model/0]).

-type openapi_fin_feed_api_symbol_model() ::
    #{ 'symbol_id' => binary(),
       'exchange_id' => binary(),
       'security_category' => binary(),
       'name' => binary(),
       'date' => binary(),
       'asset_class' => binary(),
       'cfi_code' => binary(),
       'cfi_category' => binary(),
       'cfi_group' => binary(),
       'cfi_attribute1' => binary(),
       'cfi_attribute2' => binary(),
       'cfi_attribute3' => binary(),
       'cfi_attribute4' => binary(),
       'cfi_category_desc' => binary(),
       'cfi_group_desc' => binary()
     }.

encode(#{ 'symbol_id' := SymbolId,
          'exchange_id' := ExchangeId,
          'security_category' := SecurityCategory,
          'name' := Name,
          'date' := Date,
          'asset_class' := AssetClass,
          'cfi_code' := CfiCode,
          'cfi_category' := CfiCategory,
          'cfi_group' := CfiGroup,
          'cfi_attribute1' := CfiAttribute1,
          'cfi_attribute2' := CfiAttribute2,
          'cfi_attribute3' := CfiAttribute3,
          'cfi_attribute4' := CfiAttribute4,
          'cfi_category_desc' := CfiCategoryDesc,
          'cfi_group_desc' := CfiGroupDesc
        }) ->
    #{ 'symbol_id' => SymbolId,
       'exchange_id' => ExchangeId,
       'security_category' => SecurityCategory,
       'name' => Name,
       'date' => Date,
       'asset_class' => AssetClass,
       'cfi_code' => CfiCode,
       'cfi_category' => CfiCategory,
       'cfi_group' => CfiGroup,
       'cfi_attribute1' => CfiAttribute1,
       'cfi_attribute2' => CfiAttribute2,
       'cfi_attribute3' => CfiAttribute3,
       'cfi_attribute4' => CfiAttribute4,
       'cfi_category_desc' => CfiCategoryDesc,
       'cfi_group_desc' => CfiGroupDesc
     }.
