-module(openapi_v1_asset).

-export([encode/1]).

-export_type([openapi_v1_asset/0]).

-type openapi_v1_asset() ::
    #{ 'asset_id' => binary(),
       'name' => binary(),
       'type_is_crypto' => integer(),
       'data_quote_start' => openapi_date_time:openapi_date_time(),
       'data_quote_end' => openapi_date_time:openapi_date_time(),
       'data_orderbook_start' => openapi_date_time:openapi_date_time(),
       'data_orderbook_end' => openapi_date_time:openapi_date_time(),
       'data_trade_start' => openapi_date_time:openapi_date_time(),
       'data_trade_end' => openapi_date_time:openapi_date_time(),
       'data_symbols_count' => integer(),
       'volume_1hrs_usd' => float(),
       'volume_1day_usd' => float(),
       'volume_1mth_usd' => float(),
       'price_usd' => float(),
       'id_icon' => openapi_u_uid:openapi_u_uid(),
       'supply_current' => float(),
       'supply_total' => float(),
       'supply_max' => float(),
       'chain_addresses' => list(),
       'data_start' => binary(),
       'data_end' => binary()
     }.

encode(#{ 'asset_id' := AssetId,
          'name' := Name,
          'type_is_crypto' := TypeIsCrypto,
          'data_quote_start' := DataQuoteStart,
          'data_quote_end' := DataQuoteEnd,
          'data_orderbook_start' := DataOrderbookStart,
          'data_orderbook_end' := DataOrderbookEnd,
          'data_trade_start' := DataTradeStart,
          'data_trade_end' := DataTradeEnd,
          'data_symbols_count' := DataSymbolsCount,
          'volume_1hrs_usd' := Volume1hrsUsd,
          'volume_1day_usd' := Volume1dayUsd,
          'volume_1mth_usd' := Volume1mthUsd,
          'price_usd' := PriceUsd,
          'id_icon' := IdIcon,
          'supply_current' := SupplyCurrent,
          'supply_total' := SupplyTotal,
          'supply_max' := SupplyMax,
          'chain_addresses' := ChainAddresses,
          'data_start' := DataStart,
          'data_end' := DataEnd
        }) ->
    #{ 'asset_id' => AssetId,
       'name' => Name,
       'type_is_crypto' => TypeIsCrypto,
       'data_quote_start' => DataQuoteStart,
       'data_quote_end' => DataQuoteEnd,
       'data_orderbook_start' => DataOrderbookStart,
       'data_orderbook_end' => DataOrderbookEnd,
       'data_trade_start' => DataTradeStart,
       'data_trade_end' => DataTradeEnd,
       'data_symbols_count' => DataSymbolsCount,
       'volume_1hrs_usd' => Volume1hrsUsd,
       'volume_1day_usd' => Volume1dayUsd,
       'volume_1mth_usd' => Volume1mthUsd,
       'price_usd' => PriceUsd,
       'id_icon' => IdIcon,
       'supply_current' => SupplyCurrent,
       'supply_total' => SupplyTotal,
       'supply_max' => SupplyMax,
       'chain_addresses' => ChainAddresses,
       'data_start' => DataStart,
       'data_end' => DataEnd
     }.
