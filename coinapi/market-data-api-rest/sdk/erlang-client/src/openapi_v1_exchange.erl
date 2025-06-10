-module(openapi_v1_exchange).

-export([encode/1]).

-export_type([openapi_v1_exchange/0]).

-type openapi_v1_exchange() ::
    #{ 'exchange_id' => binary(),
       'website' => binary(),
       'name' => binary(),
       'data_start' => binary(),
       'data_end' => binary(),
       'data_quote_start' => openapi_date_time:openapi_date_time(),
       'data_quote_end' => openapi_date_time:openapi_date_time(),
       'data_orderbook_start' => openapi_date_time:openapi_date_time(),
       'data_orderbook_end' => openapi_date_time:openapi_date_time(),
       'data_trade_start' => openapi_date_time:openapi_date_time(),
       'data_trade_end' => openapi_date_time:openapi_date_time(),
       'data_trade_count' => integer(),
       'data_symbols_count' => integer(),
       'volume_1hrs_usd' => float(),
       'volume_1day_usd' => float(),
       'volume_1mth_usd' => float(),
       'metric_id' => list(),
       'icons' => list(),
       'rank' => float(),
       'integration_status' => binary()
     }.

encode(#{ 'exchange_id' := ExchangeId,
          'website' := Website,
          'name' := Name,
          'data_start' := DataStart,
          'data_end' := DataEnd,
          'data_quote_start' := DataQuoteStart,
          'data_quote_end' := DataQuoteEnd,
          'data_orderbook_start' := DataOrderbookStart,
          'data_orderbook_end' := DataOrderbookEnd,
          'data_trade_start' := DataTradeStart,
          'data_trade_end' := DataTradeEnd,
          'data_trade_count' := DataTradeCount,
          'data_symbols_count' := DataSymbolsCount,
          'volume_1hrs_usd' := Volume1hrsUsd,
          'volume_1day_usd' := Volume1dayUsd,
          'volume_1mth_usd' := Volume1mthUsd,
          'metric_id' := MetricId,
          'icons' := Icons,
          'rank' := Rank,
          'integration_status' := IntegrationStatus
        }) ->
    #{ 'exchange_id' => ExchangeId,
       'website' => Website,
       'name' => Name,
       'data_start' => DataStart,
       'data_end' => DataEnd,
       'data_quote_start' => DataQuoteStart,
       'data_quote_end' => DataQuoteEnd,
       'data_orderbook_start' => DataOrderbookStart,
       'data_orderbook_end' => DataOrderbookEnd,
       'data_trade_start' => DataTradeStart,
       'data_trade_end' => DataTradeEnd,
       'data_trade_count' => DataTradeCount,
       'data_symbols_count' => DataSymbolsCount,
       'volume_1hrs_usd' => Volume1hrsUsd,
       'volume_1day_usd' => Volume1dayUsd,
       'volume_1mth_usd' => Volume1mthUsd,
       'metric_id' => MetricId,
       'icons' => Icons,
       'rank' => Rank,
       'integration_status' => IntegrationStatus
     }.
