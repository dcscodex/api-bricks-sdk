-module(openapi_admin_trading_status_model).

-export([encode/1]).

-export_type([openapi_admin_trading_status_model/0]).

-type openapi_admin_trading_status_model() ::
    #{ 'symbol' => binary(),
       'timestamp_nanos' => integer(),
       'timestamp' => openapi_date_time:openapi_date_time(),
       'is_trading_live' => boolean(),
       'is_trading_halted' => boolean(),
       'is_trading_in_order_acceptance_period' => boolean(),
       'is_trading_paused' => boolean(),
       'is_reason_halt_news_pending' => boolean(),
       'is_reason_ipo_not_yet_trading' => boolean(),
       'is_reason_ipo_deferred' => boolean(),
       'is_reason_halt_news_dissemination' => boolean(),
       'is_reason_ipo_order_acceptance_period' => boolean(),
       'is_reason_ipo_pre_launch_period' => boolean(),
       'is_reason_market_wide_circuit_breaker_level1' => boolean(),
       'is_reason_market_wide_circuit_breaker_level2' => boolean(),
       'is_reason_market_wide_circuit_breaker_level3' => boolean(),
       'is_reason_not_applicable' => boolean(),
       'is_reason_not_available' => boolean()
     }.

encode(#{ 'symbol' := Symbol,
          'timestamp_nanos' := TimestampNanos,
          'timestamp' := Timestamp,
          'is_trading_live' := IsTradingLive,
          'is_trading_halted' := IsTradingHalted,
          'is_trading_in_order_acceptance_period' := IsTradingInOrderAcceptancePeriod,
          'is_trading_paused' := IsTradingPaused,
          'is_reason_halt_news_pending' := IsReasonHaltNewsPending,
          'is_reason_ipo_not_yet_trading' := IsReasonIpoNotYetTrading,
          'is_reason_ipo_deferred' := IsReasonIpoDeferred,
          'is_reason_halt_news_dissemination' := IsReasonHaltNewsDissemination,
          'is_reason_ipo_order_acceptance_period' := IsReasonIpoOrderAcceptancePeriod,
          'is_reason_ipo_pre_launch_period' := IsReasonIpoPreLaunchPeriod,
          'is_reason_market_wide_circuit_breaker_level1' := IsReasonMarketWideCircuitBreakerLevel1,
          'is_reason_market_wide_circuit_breaker_level2' := IsReasonMarketWideCircuitBreakerLevel2,
          'is_reason_market_wide_circuit_breaker_level3' := IsReasonMarketWideCircuitBreakerLevel3,
          'is_reason_not_applicable' := IsReasonNotApplicable,
          'is_reason_not_available' := IsReasonNotAvailable
        }) ->
    #{ 'symbol' => Symbol,
       'timestamp_nanos' => TimestampNanos,
       'timestamp' => Timestamp,
       'is_trading_live' => IsTradingLive,
       'is_trading_halted' => IsTradingHalted,
       'is_trading_in_order_acceptance_period' => IsTradingInOrderAcceptancePeriod,
       'is_trading_paused' => IsTradingPaused,
       'is_reason_halt_news_pending' => IsReasonHaltNewsPending,
       'is_reason_ipo_not_yet_trading' => IsReasonIpoNotYetTrading,
       'is_reason_ipo_deferred' => IsReasonIpoDeferred,
       'is_reason_halt_news_dissemination' => IsReasonHaltNewsDissemination,
       'is_reason_ipo_order_acceptance_period' => IsReasonIpoOrderAcceptancePeriod,
       'is_reason_ipo_pre_launch_period' => IsReasonIpoPreLaunchPeriod,
       'is_reason_market_wide_circuit_breaker_level1' => IsReasonMarketWideCircuitBreakerLevel1,
       'is_reason_market_wide_circuit_breaker_level2' => IsReasonMarketWideCircuitBreakerLevel2,
       'is_reason_market_wide_circuit_breaker_level3' => IsReasonMarketWideCircuitBreakerLevel3,
       'is_reason_not_applicable' => IsReasonNotApplicable,
       'is_reason_not_available' => IsReasonNotAvailable
     }.
