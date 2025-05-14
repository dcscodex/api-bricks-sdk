-module(openapi_admin_retail_liquidity_indicator_model).

-export([encode/1]).

-export_type([openapi_admin_retail_liquidity_indicator_model/0]).

-type openapi_admin_retail_liquidity_indicator_model() ::
    #{ 'symbol' => binary(),
       'timestamp_nanos' => integer(),
       'timestamp' => openapi_date_time:openapi_date_time(),
       'retail_liquidity_indicator' => integer(),
       'retail_liquidity_indicator_code' => binary(),
       'retail_liquidity_indicator_text' => binary(),
       'is_retail_indicator_not_applicable' => boolean(),
       'is_retail_indicator_buy_interest' => boolean(),
       'is_retail_indicator_sell_interest' => boolean(),
       'is_retail_indicator_buy_and_sell_interest' => boolean()
     }.

encode(#{ 'symbol' := Symbol,
          'timestamp_nanos' := TimestampNanos,
          'timestamp' := Timestamp,
          'retail_liquidity_indicator' := RetailLiquidityIndicator,
          'retail_liquidity_indicator_code' := RetailLiquidityIndicatorCode,
          'retail_liquidity_indicator_text' := RetailLiquidityIndicatorText,
          'is_retail_indicator_not_applicable' := IsRetailIndicatorNotApplicable,
          'is_retail_indicator_buy_interest' := IsRetailIndicatorBuyInterest,
          'is_retail_indicator_sell_interest' := IsRetailIndicatorSellInterest,
          'is_retail_indicator_buy_and_sell_interest' := IsRetailIndicatorBuyAndSellInterest
        }) ->
    #{ 'symbol' => Symbol,
       'timestamp_nanos' => TimestampNanos,
       'timestamp' => Timestamp,
       'retail_liquidity_indicator' => RetailLiquidityIndicator,
       'retail_liquidity_indicator_code' => RetailLiquidityIndicatorCode,
       'retail_liquidity_indicator_text' => RetailLiquidityIndicatorText,
       'is_retail_indicator_not_applicable' => IsRetailIndicatorNotApplicable,
       'is_retail_indicator_buy_interest' => IsRetailIndicatorBuyInterest,
       'is_retail_indicator_sell_interest' => IsRetailIndicatorSellInterest,
       'is_retail_indicator_buy_and_sell_interest' => IsRetailIndicatorBuyAndSellInterest
     }.
