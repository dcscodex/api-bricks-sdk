-module(openapi_indexes_index_definition_input_data).

-export([encode/1]).

-export_type([openapi_indexes_index_definition_input_data/0]).

-type openapi_indexes_index_definition_input_data() ::
    #{ 'exchangeId' => binary(),
       'exchangeSymbolId' => binary(),
       'baseAssetId' => binary(),
       'quoteAssetId' => binary(),
       'beginDate' => openapi_date_time:openapi_date_time(),
       'endDate' => openapi_date_time:openapi_date_time(),
       'status' => binary(),
       'statusInfo' => binary(),
       'lastModificationTime' => openapi_date_time:openapi_date_time()
     }.

encode(#{ 'exchangeId' := ExchangeId,
          'exchangeSymbolId' := ExchangeSymbolId,
          'baseAssetId' := BaseAssetId,
          'quoteAssetId' := QuoteAssetId,
          'beginDate' := BeginDate,
          'endDate' := EndDate,
          'status' := Status,
          'statusInfo' := StatusInfo,
          'lastModificationTime' := LastModificationTime
        }) ->
    #{ 'exchangeId' => ExchangeId,
       'exchangeSymbolId' => ExchangeSymbolId,
       'baseAssetId' => BaseAssetId,
       'quoteAssetId' => QuoteAssetId,
       'beginDate' => BeginDate,
       'endDate' => EndDate,
       'status' => Status,
       'statusInfo' => StatusInfo,
       'lastModificationTime' => LastModificationTime
     }.
