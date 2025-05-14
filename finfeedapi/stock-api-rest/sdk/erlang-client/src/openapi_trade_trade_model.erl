-module(openapi_trade_trade_model).

-export([encode/1]).

-export_type([openapi_trade_trade_model/0]).

-type openapi_trade_trade_model() ::
    #{ 'is_trade_break' => boolean(),
       'symbol' => binary(),
       'timestamp_nanos' => integer(),
       'timestamp' => openapi_date_time:openapi_date_time(),
       'size' => integer(),
       'price' => float(),
       'trade_id' => integer(),
       'is_intermarket_sweep' => boolean(),
       'is_extended_hours_trade' => boolean(),
       'is_odd_lot_trade' => boolean(),
       'is_trade_through_exempt' => boolean(),
       'is_single_price_cross_trade' => boolean()
     }.

encode(#{ 'is_trade_break' := IsTradeBreak,
          'symbol' := Symbol,
          'timestamp_nanos' := TimestampNanos,
          'timestamp' := Timestamp,
          'size' := Size,
          'price' := Price,
          'trade_id' := TradeId,
          'is_intermarket_sweep' := IsIntermarketSweep,
          'is_extended_hours_trade' := IsExtendedHoursTrade,
          'is_odd_lot_trade' := IsOddLotTrade,
          'is_trade_through_exempt' := IsTradeThroughExempt,
          'is_single_price_cross_trade' := IsSinglePriceCrossTrade
        }) ->
    #{ 'is_trade_break' => IsTradeBreak,
       'symbol' => Symbol,
       'timestamp_nanos' => TimestampNanos,
       'timestamp' => Timestamp,
       'size' => Size,
       'price' => Price,
       'trade_id' => TradeId,
       'is_intermarket_sweep' => IsIntermarketSweep,
       'is_extended_hours_trade' => IsExtendedHoursTrade,
       'is_odd_lot_trade' => IsOddLotTrade,
       'is_trade_through_exempt' => IsTradeThroughExempt,
       'is_single_price_cross_trade' => IsSinglePriceCrossTrade
     }.
