-module(openapi_v1_general_data).

-export([encode/1]).

-export_type([openapi_v1_general_data/0]).

-type openapi_v1_general_data() ::
    #{ 'entry_time' => openapi_date_time:openapi_date_time(),
       'recv_time' => openapi_date_time:openapi_date_time(),
       'exchange_id' => binary(),
       'asset_id' => binary(),
       'symbol_id' => binary(),
       'metric_id' => binary(),
       'value_decimal' => float(),
       'value_text' => binary(),
       'value_time' => openapi_date_time:openapi_date_time()
     }.

encode(#{ 'entry_time' := EntryTime,
          'recv_time' := RecvTime,
          'exchange_id' := ExchangeId,
          'asset_id' := AssetId,
          'symbol_id' := SymbolId,
          'metric_id' := MetricId,
          'value_decimal' := ValueDecimal,
          'value_text' := ValueText,
          'value_time' := ValueTime
        }) ->
    #{ 'entry_time' => EntryTime,
       'recv_time' => RecvTime,
       'exchange_id' => ExchangeId,
       'asset_id' => AssetId,
       'symbol_id' => SymbolId,
       'metric_id' => MetricId,
       'value_decimal' => ValueDecimal,
       'value_text' => ValueText,
       'value_time' => ValueTime
     }.
