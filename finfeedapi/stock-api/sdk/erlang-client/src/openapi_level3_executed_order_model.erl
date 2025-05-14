-module(openapi_level3_executed_order_model).

-export([encode/1]).

-export_type([openapi_level3_executed_order_model/0]).

-type openapi_level3_executed_order_model() ::
    #{ 'symbol' => binary(),
       'timestamp_nanos' => integer(),
       'timestamp' => openapi_date_time:openapi_date_time(),
       'order_id_reference' => integer(),
       'sale_condition_flags' => integer(),
       'is_intermarket_sweep' => boolean(),
       'is_extended_hours_trade' => boolean(),
       'is_odd_lot_trade' => boolean(),
       'is_trade_through_exempt' => boolean(),
       'is_single_price_cross_trade' => boolean(),
       'size' => integer(),
       'price' => float(),
       'trade_id' => integer()
     }.

encode(#{ 'symbol' := Symbol,
          'timestamp_nanos' := TimestampNanos,
          'timestamp' := Timestamp,
          'order_id_reference' := OrderIdReference,
          'sale_condition_flags' := SaleConditionFlags,
          'is_intermarket_sweep' := IsIntermarketSweep,
          'is_extended_hours_trade' := IsExtendedHoursTrade,
          'is_odd_lot_trade' := IsOddLotTrade,
          'is_trade_through_exempt' := IsTradeThroughExempt,
          'is_single_price_cross_trade' := IsSinglePriceCrossTrade,
          'size' := Size,
          'price' := Price,
          'trade_id' := TradeId
        }) ->
    #{ 'symbol' => Symbol,
       'timestamp_nanos' => TimestampNanos,
       'timestamp' => Timestamp,
       'order_id_reference' => OrderIdReference,
       'sale_condition_flags' => SaleConditionFlags,
       'is_intermarket_sweep' => IsIntermarketSweep,
       'is_extended_hours_trade' => IsExtendedHoursTrade,
       'is_odd_lot_trade' => IsOddLotTrade,
       'is_trade_through_exempt' => IsTradeThroughExempt,
       'is_single_price_cross_trade' => IsSinglePriceCrossTrade,
       'size' => Size,
       'price' => Price,
       'trade_id' => TradeId
     }.
