/*
 * FinFeedAPI Stock REST API
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * The version of the OpenAPI document: v1
 * Contact: support@apibricks.io
 *
 * NOTE: This class is auto generated by the OAS code generator program.
 * https://github.com/OpenAPITools/openapi-generator
 * Do not edit the class manually.
 */

/**
 * Represents the response DTO for trading status information
 */
public class OASAdminTradingStatusModel implements OAS.MappedProperties {
    /**
     * The stock symbol
     * @return symbol
     */
    public String symbol { get; set; }

    /**
     * Original timestamp in nanoseconds since epoch
     * @return timestampNanos
     */
    public Long timestampNanos { get; set; }

    /**
     * Time when the trading status was recorded as DateTime
     * @return timestamp
     */
    public Datetime timestamp { get; set; }

    /**
     * Gets whether the security is currently trading on IEX
     * @return isTradingLive
     */
    public Boolean isTradingLive { get; set; }

    /**
     * Gets whether the security is halted across all US equity markets
     * @return isTradingHalted
     */
    public Boolean isTradingHalted { get; set; }

    /**
     * Gets whether the security is in Order Acceptance Period on IEX
     * @return isTradingInOrderAcceptancePeriod
     */
    public Boolean isTradingInOrderAcceptancePeriod { get; set; }

    /**
     * Gets whether the security is paused and in Order Acceptance Period on IEX
     * @return isTradingPaused
     */
    public Boolean isTradingPaused { get; set; }

    /**
     * Gets whether the halt reason is News Pending
     * @return isReasonHaltNewsPending
     */
    public Boolean isReasonHaltNewsPending { get; set; }

    /**
     * Gets whether the halt reason is IPO Not Yet Trading
     * @return isReasonIpoNotYetTrading
     */
    public Boolean isReasonIpoNotYetTrading { get; set; }

    /**
     * Gets whether the halt reason is IPO Deferred
     * @return isReasonIpoDeferred
     */
    public Boolean isReasonIpoDeferred { get; set; }

    /**
     * Gets whether the order acceptance period reason is Halt News Dissemination
     * @return isReasonHaltNewsDissemination
     */
    public Boolean isReasonHaltNewsDissemination { get; set; }

    /**
     * Gets whether the order acceptance period reason is IPO Order Acceptance Period
     * @return isReasonIpoOrderAcceptancePeriod
     */
    public Boolean isReasonIpoOrderAcceptancePeriod { get; set; }

    /**
     * Gets whether the order acceptance period reason is IPO Pre-Launch Period
     * @return isReasonIpoPreLaunchPeriod
     */
    public Boolean isReasonIpoPreLaunchPeriod { get; set; }

    /**
     * Gets whether the order acceptance period reason is Market-Wide Circuit Breaker Level 1 – Breached
     * @return isReasonMarketWideCircuitBreakerLevel1
     */
    public Boolean isReasonMarketWideCircuitBreakerLevel1 { get; set; }

    /**
     * Gets whether the order acceptance period reason is Market-Wide Circuit Breaker Level 2 – Breached
     * @return isReasonMarketWideCircuitBreakerLevel2
     */
    public Boolean isReasonMarketWideCircuitBreakerLevel2 { get; set; }

    /**
     * Gets whether the halt reason is Market-Wide Circuit Breaker Level 3 – Breached
     * @return isReasonMarketWideCircuitBreakerLevel3
     */
    public Boolean isReasonMarketWideCircuitBreakerLevel3 { get; set; }

    /**
     * Gets whether the reason is Not Applicable
     * @return isReasonNotApplicable
     */
    public Boolean isReasonNotApplicable { get; set; }

    /**
     * Gets whether the halt reason is Not Available
     * @return isReasonNotAvailable
     */
    public Boolean isReasonNotAvailable { get; set; }

    private static final Map<String, String> propertyMappings = new Map<String, String>{
        'timestamp_nanos' => 'timestampNanos',
        'is_trading_live' => 'isTradingLive',
        'is_trading_halted' => 'isTradingHalted',
        'is_trading_in_order_acceptance_period' => 'isTradingInOrderAcceptancePeriod',
        'is_trading_paused' => 'isTradingPaused',
        'is_reason_halt_news_pending' => 'isReasonHaltNewsPending',
        'is_reason_ipo_not_yet_trading' => 'isReasonIpoNotYetTrading',
        'is_reason_ipo_deferred' => 'isReasonIpoDeferred',
        'is_reason_halt_news_dissemination' => 'isReasonHaltNewsDissemination',
        'is_reason_ipo_order_acceptance_period' => 'isReasonIpoOrderAcceptancePeriod',
        'is_reason_ipo_pre_launch_period' => 'isReasonIpoPreLaunchPeriod',
        'is_reason_market_wide_circuit_breaker_level1' => 'isReasonMarketWideCircuitBreakerLevel1',
        'is_reason_market_wide_circuit_breaker_level2' => 'isReasonMarketWideCircuitBreakerLevel2',
        'is_reason_market_wide_circuit_breaker_level3' => 'isReasonMarketWideCircuitBreakerLevel3',
        'is_reason_not_applicable' => 'isReasonNotApplicable',
        'is_reason_not_available' => 'isReasonNotAvailable'
    };

    public Map<String, String> getPropertyMappings() {
        return propertyMappings;
    }

    private static final Map<String, String> propertyMappings = new Map<String, String>{
        'timestamp_nanos' => 'timestampNanos',
        'is_trading_live' => 'isTradingLive',
        'is_trading_halted' => 'isTradingHalted',
        'is_trading_in_order_acceptance_period' => 'isTradingInOrderAcceptancePeriod',
        'is_trading_paused' => 'isTradingPaused',
        'is_reason_halt_news_pending' => 'isReasonHaltNewsPending',
        'is_reason_ipo_not_yet_trading' => 'isReasonIpoNotYetTrading',
        'is_reason_ipo_deferred' => 'isReasonIpoDeferred',
        'is_reason_halt_news_dissemination' => 'isReasonHaltNewsDissemination',
        'is_reason_ipo_order_acceptance_period' => 'isReasonIpoOrderAcceptancePeriod',
        'is_reason_ipo_pre_launch_period' => 'isReasonIpoPreLaunchPeriod',
        'is_reason_market_wide_circuit_breaker_level1' => 'isReasonMarketWideCircuitBreakerLevel1',
        'is_reason_market_wide_circuit_breaker_level2' => 'isReasonMarketWideCircuitBreakerLevel2',
        'is_reason_market_wide_circuit_breaker_level3' => 'isReasonMarketWideCircuitBreakerLevel3',
        'is_reason_not_applicable' => 'isReasonNotApplicable',
        'is_reason_not_available' => 'isReasonNotAvailable'
    };

    public Map<String, String> getPropertyMappings() {
        return propertyMappings;
    }

    private static final Map<String, String> propertyMappings = new Map<String, String>{
        'timestamp_nanos' => 'timestampNanos',
        'is_trading_live' => 'isTradingLive',
        'is_trading_halted' => 'isTradingHalted',
        'is_trading_in_order_acceptance_period' => 'isTradingInOrderAcceptancePeriod',
        'is_trading_paused' => 'isTradingPaused',
        'is_reason_halt_news_pending' => 'isReasonHaltNewsPending',
        'is_reason_ipo_not_yet_trading' => 'isReasonIpoNotYetTrading',
        'is_reason_ipo_deferred' => 'isReasonIpoDeferred',
        'is_reason_halt_news_dissemination' => 'isReasonHaltNewsDissemination',
        'is_reason_ipo_order_acceptance_period' => 'isReasonIpoOrderAcceptancePeriod',
        'is_reason_ipo_pre_launch_period' => 'isReasonIpoPreLaunchPeriod',
        'is_reason_market_wide_circuit_breaker_level1' => 'isReasonMarketWideCircuitBreakerLevel1',
        'is_reason_market_wide_circuit_breaker_level2' => 'isReasonMarketWideCircuitBreakerLevel2',
        'is_reason_market_wide_circuit_breaker_level3' => 'isReasonMarketWideCircuitBreakerLevel3',
        'is_reason_not_applicable' => 'isReasonNotApplicable',
        'is_reason_not_available' => 'isReasonNotAvailable'
    };

    public Map<String, String> getPropertyMappings() {
        return propertyMappings;
    }

    private static final Map<String, String> propertyMappings = new Map<String, String>{
        'timestamp_nanos' => 'timestampNanos',
        'is_trading_live' => 'isTradingLive',
        'is_trading_halted' => 'isTradingHalted',
        'is_trading_in_order_acceptance_period' => 'isTradingInOrderAcceptancePeriod',
        'is_trading_paused' => 'isTradingPaused',
        'is_reason_halt_news_pending' => 'isReasonHaltNewsPending',
        'is_reason_ipo_not_yet_trading' => 'isReasonIpoNotYetTrading',
        'is_reason_ipo_deferred' => 'isReasonIpoDeferred',
        'is_reason_halt_news_dissemination' => 'isReasonHaltNewsDissemination',
        'is_reason_ipo_order_acceptance_period' => 'isReasonIpoOrderAcceptancePeriod',
        'is_reason_ipo_pre_launch_period' => 'isReasonIpoPreLaunchPeriod',
        'is_reason_market_wide_circuit_breaker_level1' => 'isReasonMarketWideCircuitBreakerLevel1',
        'is_reason_market_wide_circuit_breaker_level2' => 'isReasonMarketWideCircuitBreakerLevel2',
        'is_reason_market_wide_circuit_breaker_level3' => 'isReasonMarketWideCircuitBreakerLevel3',
        'is_reason_not_applicable' => 'isReasonNotApplicable',
        'is_reason_not_available' => 'isReasonNotAvailable'
    };

    public Map<String, String> getPropertyMappings() {
        return propertyMappings;
    }

    private static final Map<String, String> propertyMappings = new Map<String, String>{
        'timestamp_nanos' => 'timestampNanos',
        'is_trading_live' => 'isTradingLive',
        'is_trading_halted' => 'isTradingHalted',
        'is_trading_in_order_acceptance_period' => 'isTradingInOrderAcceptancePeriod',
        'is_trading_paused' => 'isTradingPaused',
        'is_reason_halt_news_pending' => 'isReasonHaltNewsPending',
        'is_reason_ipo_not_yet_trading' => 'isReasonIpoNotYetTrading',
        'is_reason_ipo_deferred' => 'isReasonIpoDeferred',
        'is_reason_halt_news_dissemination' => 'isReasonHaltNewsDissemination',
        'is_reason_ipo_order_acceptance_period' => 'isReasonIpoOrderAcceptancePeriod',
        'is_reason_ipo_pre_launch_period' => 'isReasonIpoPreLaunchPeriod',
        'is_reason_market_wide_circuit_breaker_level1' => 'isReasonMarketWideCircuitBreakerLevel1',
        'is_reason_market_wide_circuit_breaker_level2' => 'isReasonMarketWideCircuitBreakerLevel2',
        'is_reason_market_wide_circuit_breaker_level3' => 'isReasonMarketWideCircuitBreakerLevel3',
        'is_reason_not_applicable' => 'isReasonNotApplicable',
        'is_reason_not_available' => 'isReasonNotAvailable'
    };

    public Map<String, String> getPropertyMappings() {
        return propertyMappings;
    }

    private static final Map<String, String> propertyMappings = new Map<String, String>{
        'timestamp_nanos' => 'timestampNanos',
        'is_trading_live' => 'isTradingLive',
        'is_trading_halted' => 'isTradingHalted',
        'is_trading_in_order_acceptance_period' => 'isTradingInOrderAcceptancePeriod',
        'is_trading_paused' => 'isTradingPaused',
        'is_reason_halt_news_pending' => 'isReasonHaltNewsPending',
        'is_reason_ipo_not_yet_trading' => 'isReasonIpoNotYetTrading',
        'is_reason_ipo_deferred' => 'isReasonIpoDeferred',
        'is_reason_halt_news_dissemination' => 'isReasonHaltNewsDissemination',
        'is_reason_ipo_order_acceptance_period' => 'isReasonIpoOrderAcceptancePeriod',
        'is_reason_ipo_pre_launch_period' => 'isReasonIpoPreLaunchPeriod',
        'is_reason_market_wide_circuit_breaker_level1' => 'isReasonMarketWideCircuitBreakerLevel1',
        'is_reason_market_wide_circuit_breaker_level2' => 'isReasonMarketWideCircuitBreakerLevel2',
        'is_reason_market_wide_circuit_breaker_level3' => 'isReasonMarketWideCircuitBreakerLevel3',
        'is_reason_not_applicable' => 'isReasonNotApplicable',
        'is_reason_not_available' => 'isReasonNotAvailable'
    };

    public Map<String, String> getPropertyMappings() {
        return propertyMappings;
    }

    private static final Map<String, String> propertyMappings = new Map<String, String>{
        'timestamp_nanos' => 'timestampNanos',
        'is_trading_live' => 'isTradingLive',
        'is_trading_halted' => 'isTradingHalted',
        'is_trading_in_order_acceptance_period' => 'isTradingInOrderAcceptancePeriod',
        'is_trading_paused' => 'isTradingPaused',
        'is_reason_halt_news_pending' => 'isReasonHaltNewsPending',
        'is_reason_ipo_not_yet_trading' => 'isReasonIpoNotYetTrading',
        'is_reason_ipo_deferred' => 'isReasonIpoDeferred',
        'is_reason_halt_news_dissemination' => 'isReasonHaltNewsDissemination',
        'is_reason_ipo_order_acceptance_period' => 'isReasonIpoOrderAcceptancePeriod',
        'is_reason_ipo_pre_launch_period' => 'isReasonIpoPreLaunchPeriod',
        'is_reason_market_wide_circuit_breaker_level1' => 'isReasonMarketWideCircuitBreakerLevel1',
        'is_reason_market_wide_circuit_breaker_level2' => 'isReasonMarketWideCircuitBreakerLevel2',
        'is_reason_market_wide_circuit_breaker_level3' => 'isReasonMarketWideCircuitBreakerLevel3',
        'is_reason_not_applicable' => 'isReasonNotApplicable',
        'is_reason_not_available' => 'isReasonNotAvailable'
    };

    public Map<String, String> getPropertyMappings() {
        return propertyMappings;
    }

    private static final Map<String, String> propertyMappings = new Map<String, String>{
        'timestamp_nanos' => 'timestampNanos',
        'is_trading_live' => 'isTradingLive',
        'is_trading_halted' => 'isTradingHalted',
        'is_trading_in_order_acceptance_period' => 'isTradingInOrderAcceptancePeriod',
        'is_trading_paused' => 'isTradingPaused',
        'is_reason_halt_news_pending' => 'isReasonHaltNewsPending',
        'is_reason_ipo_not_yet_trading' => 'isReasonIpoNotYetTrading',
        'is_reason_ipo_deferred' => 'isReasonIpoDeferred',
        'is_reason_halt_news_dissemination' => 'isReasonHaltNewsDissemination',
        'is_reason_ipo_order_acceptance_period' => 'isReasonIpoOrderAcceptancePeriod',
        'is_reason_ipo_pre_launch_period' => 'isReasonIpoPreLaunchPeriod',
        'is_reason_market_wide_circuit_breaker_level1' => 'isReasonMarketWideCircuitBreakerLevel1',
        'is_reason_market_wide_circuit_breaker_level2' => 'isReasonMarketWideCircuitBreakerLevel2',
        'is_reason_market_wide_circuit_breaker_level3' => 'isReasonMarketWideCircuitBreakerLevel3',
        'is_reason_not_applicable' => 'isReasonNotApplicable',
        'is_reason_not_available' => 'isReasonNotAvailable'
    };

    public Map<String, String> getPropertyMappings() {
        return propertyMappings;
    }

    private static final Map<String, String> propertyMappings = new Map<String, String>{
        'timestamp_nanos' => 'timestampNanos',
        'is_trading_live' => 'isTradingLive',
        'is_trading_halted' => 'isTradingHalted',
        'is_trading_in_order_acceptance_period' => 'isTradingInOrderAcceptancePeriod',
        'is_trading_paused' => 'isTradingPaused',
        'is_reason_halt_news_pending' => 'isReasonHaltNewsPending',
        'is_reason_ipo_not_yet_trading' => 'isReasonIpoNotYetTrading',
        'is_reason_ipo_deferred' => 'isReasonIpoDeferred',
        'is_reason_halt_news_dissemination' => 'isReasonHaltNewsDissemination',
        'is_reason_ipo_order_acceptance_period' => 'isReasonIpoOrderAcceptancePeriod',
        'is_reason_ipo_pre_launch_period' => 'isReasonIpoPreLaunchPeriod',
        'is_reason_market_wide_circuit_breaker_level1' => 'isReasonMarketWideCircuitBreakerLevel1',
        'is_reason_market_wide_circuit_breaker_level2' => 'isReasonMarketWideCircuitBreakerLevel2',
        'is_reason_market_wide_circuit_breaker_level3' => 'isReasonMarketWideCircuitBreakerLevel3',
        'is_reason_not_applicable' => 'isReasonNotApplicable',
        'is_reason_not_available' => 'isReasonNotAvailable'
    };

    public Map<String, String> getPropertyMappings() {
        return propertyMappings;
    }

    private static final Map<String, String> propertyMappings = new Map<String, String>{
        'timestamp_nanos' => 'timestampNanos',
        'is_trading_live' => 'isTradingLive',
        'is_trading_halted' => 'isTradingHalted',
        'is_trading_in_order_acceptance_period' => 'isTradingInOrderAcceptancePeriod',
        'is_trading_paused' => 'isTradingPaused',
        'is_reason_halt_news_pending' => 'isReasonHaltNewsPending',
        'is_reason_ipo_not_yet_trading' => 'isReasonIpoNotYetTrading',
        'is_reason_ipo_deferred' => 'isReasonIpoDeferred',
        'is_reason_halt_news_dissemination' => 'isReasonHaltNewsDissemination',
        'is_reason_ipo_order_acceptance_period' => 'isReasonIpoOrderAcceptancePeriod',
        'is_reason_ipo_pre_launch_period' => 'isReasonIpoPreLaunchPeriod',
        'is_reason_market_wide_circuit_breaker_level1' => 'isReasonMarketWideCircuitBreakerLevel1',
        'is_reason_market_wide_circuit_breaker_level2' => 'isReasonMarketWideCircuitBreakerLevel2',
        'is_reason_market_wide_circuit_breaker_level3' => 'isReasonMarketWideCircuitBreakerLevel3',
        'is_reason_not_applicable' => 'isReasonNotApplicable',
        'is_reason_not_available' => 'isReasonNotAvailable'
    };

    public Map<String, String> getPropertyMappings() {
        return propertyMappings;
    }

    private static final Map<String, String> propertyMappings = new Map<String, String>{
        'timestamp_nanos' => 'timestampNanos',
        'is_trading_live' => 'isTradingLive',
        'is_trading_halted' => 'isTradingHalted',
        'is_trading_in_order_acceptance_period' => 'isTradingInOrderAcceptancePeriod',
        'is_trading_paused' => 'isTradingPaused',
        'is_reason_halt_news_pending' => 'isReasonHaltNewsPending',
        'is_reason_ipo_not_yet_trading' => 'isReasonIpoNotYetTrading',
        'is_reason_ipo_deferred' => 'isReasonIpoDeferred',
        'is_reason_halt_news_dissemination' => 'isReasonHaltNewsDissemination',
        'is_reason_ipo_order_acceptance_period' => 'isReasonIpoOrderAcceptancePeriod',
        'is_reason_ipo_pre_launch_period' => 'isReasonIpoPreLaunchPeriod',
        'is_reason_market_wide_circuit_breaker_level1' => 'isReasonMarketWideCircuitBreakerLevel1',
        'is_reason_market_wide_circuit_breaker_level2' => 'isReasonMarketWideCircuitBreakerLevel2',
        'is_reason_market_wide_circuit_breaker_level3' => 'isReasonMarketWideCircuitBreakerLevel3',
        'is_reason_not_applicable' => 'isReasonNotApplicable',
        'is_reason_not_available' => 'isReasonNotAvailable'
    };

    public Map<String, String> getPropertyMappings() {
        return propertyMappings;
    }

    private static final Map<String, String> propertyMappings = new Map<String, String>{
        'timestamp_nanos' => 'timestampNanos',
        'is_trading_live' => 'isTradingLive',
        'is_trading_halted' => 'isTradingHalted',
        'is_trading_in_order_acceptance_period' => 'isTradingInOrderAcceptancePeriod',
        'is_trading_paused' => 'isTradingPaused',
        'is_reason_halt_news_pending' => 'isReasonHaltNewsPending',
        'is_reason_ipo_not_yet_trading' => 'isReasonIpoNotYetTrading',
        'is_reason_ipo_deferred' => 'isReasonIpoDeferred',
        'is_reason_halt_news_dissemination' => 'isReasonHaltNewsDissemination',
        'is_reason_ipo_order_acceptance_period' => 'isReasonIpoOrderAcceptancePeriod',
        'is_reason_ipo_pre_launch_period' => 'isReasonIpoPreLaunchPeriod',
        'is_reason_market_wide_circuit_breaker_level1' => 'isReasonMarketWideCircuitBreakerLevel1',
        'is_reason_market_wide_circuit_breaker_level2' => 'isReasonMarketWideCircuitBreakerLevel2',
        'is_reason_market_wide_circuit_breaker_level3' => 'isReasonMarketWideCircuitBreakerLevel3',
        'is_reason_not_applicable' => 'isReasonNotApplicable',
        'is_reason_not_available' => 'isReasonNotAvailable'
    };

    public Map<String, String> getPropertyMappings() {
        return propertyMappings;
    }

    private static final Map<String, String> propertyMappings = new Map<String, String>{
        'timestamp_nanos' => 'timestampNanos',
        'is_trading_live' => 'isTradingLive',
        'is_trading_halted' => 'isTradingHalted',
        'is_trading_in_order_acceptance_period' => 'isTradingInOrderAcceptancePeriod',
        'is_trading_paused' => 'isTradingPaused',
        'is_reason_halt_news_pending' => 'isReasonHaltNewsPending',
        'is_reason_ipo_not_yet_trading' => 'isReasonIpoNotYetTrading',
        'is_reason_ipo_deferred' => 'isReasonIpoDeferred',
        'is_reason_halt_news_dissemination' => 'isReasonHaltNewsDissemination',
        'is_reason_ipo_order_acceptance_period' => 'isReasonIpoOrderAcceptancePeriod',
        'is_reason_ipo_pre_launch_period' => 'isReasonIpoPreLaunchPeriod',
        'is_reason_market_wide_circuit_breaker_level1' => 'isReasonMarketWideCircuitBreakerLevel1',
        'is_reason_market_wide_circuit_breaker_level2' => 'isReasonMarketWideCircuitBreakerLevel2',
        'is_reason_market_wide_circuit_breaker_level3' => 'isReasonMarketWideCircuitBreakerLevel3',
        'is_reason_not_applicable' => 'isReasonNotApplicable',
        'is_reason_not_available' => 'isReasonNotAvailable'
    };

    public Map<String, String> getPropertyMappings() {
        return propertyMappings;
    }

    private static final Map<String, String> propertyMappings = new Map<String, String>{
        'timestamp_nanos' => 'timestampNanos',
        'is_trading_live' => 'isTradingLive',
        'is_trading_halted' => 'isTradingHalted',
        'is_trading_in_order_acceptance_period' => 'isTradingInOrderAcceptancePeriod',
        'is_trading_paused' => 'isTradingPaused',
        'is_reason_halt_news_pending' => 'isReasonHaltNewsPending',
        'is_reason_ipo_not_yet_trading' => 'isReasonIpoNotYetTrading',
        'is_reason_ipo_deferred' => 'isReasonIpoDeferred',
        'is_reason_halt_news_dissemination' => 'isReasonHaltNewsDissemination',
        'is_reason_ipo_order_acceptance_period' => 'isReasonIpoOrderAcceptancePeriod',
        'is_reason_ipo_pre_launch_period' => 'isReasonIpoPreLaunchPeriod',
        'is_reason_market_wide_circuit_breaker_level1' => 'isReasonMarketWideCircuitBreakerLevel1',
        'is_reason_market_wide_circuit_breaker_level2' => 'isReasonMarketWideCircuitBreakerLevel2',
        'is_reason_market_wide_circuit_breaker_level3' => 'isReasonMarketWideCircuitBreakerLevel3',
        'is_reason_not_applicable' => 'isReasonNotApplicable',
        'is_reason_not_available' => 'isReasonNotAvailable'
    };

    public Map<String, String> getPropertyMappings() {
        return propertyMappings;
    }

    private static final Map<String, String> propertyMappings = new Map<String, String>{
        'timestamp_nanos' => 'timestampNanos',
        'is_trading_live' => 'isTradingLive',
        'is_trading_halted' => 'isTradingHalted',
        'is_trading_in_order_acceptance_period' => 'isTradingInOrderAcceptancePeriod',
        'is_trading_paused' => 'isTradingPaused',
        'is_reason_halt_news_pending' => 'isReasonHaltNewsPending',
        'is_reason_ipo_not_yet_trading' => 'isReasonIpoNotYetTrading',
        'is_reason_ipo_deferred' => 'isReasonIpoDeferred',
        'is_reason_halt_news_dissemination' => 'isReasonHaltNewsDissemination',
        'is_reason_ipo_order_acceptance_period' => 'isReasonIpoOrderAcceptancePeriod',
        'is_reason_ipo_pre_launch_period' => 'isReasonIpoPreLaunchPeriod',
        'is_reason_market_wide_circuit_breaker_level1' => 'isReasonMarketWideCircuitBreakerLevel1',
        'is_reason_market_wide_circuit_breaker_level2' => 'isReasonMarketWideCircuitBreakerLevel2',
        'is_reason_market_wide_circuit_breaker_level3' => 'isReasonMarketWideCircuitBreakerLevel3',
        'is_reason_not_applicable' => 'isReasonNotApplicable',
        'is_reason_not_available' => 'isReasonNotAvailable'
    };

    public Map<String, String> getPropertyMappings() {
        return propertyMappings;
    }

    private static final Map<String, String> propertyMappings = new Map<String, String>{
        'timestamp_nanos' => 'timestampNanos',
        'is_trading_live' => 'isTradingLive',
        'is_trading_halted' => 'isTradingHalted',
        'is_trading_in_order_acceptance_period' => 'isTradingInOrderAcceptancePeriod',
        'is_trading_paused' => 'isTradingPaused',
        'is_reason_halt_news_pending' => 'isReasonHaltNewsPending',
        'is_reason_ipo_not_yet_trading' => 'isReasonIpoNotYetTrading',
        'is_reason_ipo_deferred' => 'isReasonIpoDeferred',
        'is_reason_halt_news_dissemination' => 'isReasonHaltNewsDissemination',
        'is_reason_ipo_order_acceptance_period' => 'isReasonIpoOrderAcceptancePeriod',
        'is_reason_ipo_pre_launch_period' => 'isReasonIpoPreLaunchPeriod',
        'is_reason_market_wide_circuit_breaker_level1' => 'isReasonMarketWideCircuitBreakerLevel1',
        'is_reason_market_wide_circuit_breaker_level2' => 'isReasonMarketWideCircuitBreakerLevel2',
        'is_reason_market_wide_circuit_breaker_level3' => 'isReasonMarketWideCircuitBreakerLevel3',
        'is_reason_not_applicable' => 'isReasonNotApplicable',
        'is_reason_not_available' => 'isReasonNotAvailable'
    };

    public Map<String, String> getPropertyMappings() {
        return propertyMappings;
    }

    public static OASAdminTradingStatusModel getExample() {
        OASAdminTradingStatusModel adminTradingStatusModel = new OASAdminTradingStatusModel();
          adminTradingStatusModel.symbol = '';
          adminTradingStatusModel.timestampNanos = 123456789L;
          adminTradingStatusModel.timestamp = Datetime.newInstanceGmt(2000, 1, 23, 4, 56, 7);
          adminTradingStatusModel.isTradingLive = true;
          adminTradingStatusModel.isTradingHalted = true;
          adminTradingStatusModel.isTradingInOrderAcceptancePeriod = true;
          adminTradingStatusModel.isTradingPaused = true;
          adminTradingStatusModel.isReasonHaltNewsPending = true;
          adminTradingStatusModel.isReasonIpoNotYetTrading = true;
          adminTradingStatusModel.isReasonIpoDeferred = true;
          adminTradingStatusModel.isReasonHaltNewsDissemination = true;
          adminTradingStatusModel.isReasonIpoOrderAcceptancePeriod = true;
          adminTradingStatusModel.isReasonIpoPreLaunchPeriod = true;
          adminTradingStatusModel.isReasonMarketWideCircuitBreakerLevel1 = true;
          adminTradingStatusModel.isReasonMarketWideCircuitBreakerLevel2 = true;
          adminTradingStatusModel.isReasonMarketWideCircuitBreakerLevel3 = true;
          adminTradingStatusModel.isReasonNotApplicable = true;
          adminTradingStatusModel.isReasonNotAvailable = true;
        return adminTradingStatusModel;
    }

    public Boolean equals(Object obj) {
        if (obj instanceof OASAdminTradingStatusModel) {           
            OASAdminTradingStatusModel adminTradingStatusModel = (OASAdminTradingStatusModel) obj;
            return this.symbol == adminTradingStatusModel.symbol
                && this.timestampNanos == adminTradingStatusModel.timestampNanos
                && this.timestamp == adminTradingStatusModel.timestamp
                && this.isTradingLive == adminTradingStatusModel.isTradingLive
                && this.isTradingHalted == adminTradingStatusModel.isTradingHalted
                && this.isTradingInOrderAcceptancePeriod == adminTradingStatusModel.isTradingInOrderAcceptancePeriod
                && this.isTradingPaused == adminTradingStatusModel.isTradingPaused
                && this.isReasonHaltNewsPending == adminTradingStatusModel.isReasonHaltNewsPending
                && this.isReasonIpoNotYetTrading == adminTradingStatusModel.isReasonIpoNotYetTrading
                && this.isReasonIpoDeferred == adminTradingStatusModel.isReasonIpoDeferred
                && this.isReasonHaltNewsDissemination == adminTradingStatusModel.isReasonHaltNewsDissemination
                && this.isReasonIpoOrderAcceptancePeriod == adminTradingStatusModel.isReasonIpoOrderAcceptancePeriod
                && this.isReasonIpoPreLaunchPeriod == adminTradingStatusModel.isReasonIpoPreLaunchPeriod
                && this.isReasonMarketWideCircuitBreakerLevel1 == adminTradingStatusModel.isReasonMarketWideCircuitBreakerLevel1
                && this.isReasonMarketWideCircuitBreakerLevel2 == adminTradingStatusModel.isReasonMarketWideCircuitBreakerLevel2
                && this.isReasonMarketWideCircuitBreakerLevel3 == adminTradingStatusModel.isReasonMarketWideCircuitBreakerLevel3
                && this.isReasonNotApplicable == adminTradingStatusModel.isReasonNotApplicable
                && this.isReasonNotAvailable == adminTradingStatusModel.isReasonNotAvailable;
        }
        return false;
    }

    public Integer hashCode() {
        Integer hashCode = 43;
        hashCode = (17 * hashCode) + (symbol == null ? 0 : System.hashCode(symbol));
        hashCode = (17 * hashCode) + (timestampNanos == null ? 0 : System.hashCode(timestampNanos));
        hashCode = (17 * hashCode) + (timestamp == null ? 0 : System.hashCode(timestamp));
        hashCode = (17 * hashCode) + (isTradingLive == null ? 0 : System.hashCode(isTradingLive));
        hashCode = (17 * hashCode) + (isTradingHalted == null ? 0 : System.hashCode(isTradingHalted));
        hashCode = (17 * hashCode) + (isTradingInOrderAcceptancePeriod == null ? 0 : System.hashCode(isTradingInOrderAcceptancePeriod));
        hashCode = (17 * hashCode) + (isTradingPaused == null ? 0 : System.hashCode(isTradingPaused));
        hashCode = (17 * hashCode) + (isReasonHaltNewsPending == null ? 0 : System.hashCode(isReasonHaltNewsPending));
        hashCode = (17 * hashCode) + (isReasonIpoNotYetTrading == null ? 0 : System.hashCode(isReasonIpoNotYetTrading));
        hashCode = (17 * hashCode) + (isReasonIpoDeferred == null ? 0 : System.hashCode(isReasonIpoDeferred));
        hashCode = (17 * hashCode) + (isReasonHaltNewsDissemination == null ? 0 : System.hashCode(isReasonHaltNewsDissemination));
        hashCode = (17 * hashCode) + (isReasonIpoOrderAcceptancePeriod == null ? 0 : System.hashCode(isReasonIpoOrderAcceptancePeriod));
        hashCode = (17 * hashCode) + (isReasonIpoPreLaunchPeriod == null ? 0 : System.hashCode(isReasonIpoPreLaunchPeriod));
        hashCode = (17 * hashCode) + (isReasonMarketWideCircuitBreakerLevel1 == null ? 0 : System.hashCode(isReasonMarketWideCircuitBreakerLevel1));
        hashCode = (17 * hashCode) + (isReasonMarketWideCircuitBreakerLevel2 == null ? 0 : System.hashCode(isReasonMarketWideCircuitBreakerLevel2));
        hashCode = (17 * hashCode) + (isReasonMarketWideCircuitBreakerLevel3 == null ? 0 : System.hashCode(isReasonMarketWideCircuitBreakerLevel3));
        hashCode = (17 * hashCode) + (isReasonNotApplicable == null ? 0 : System.hashCode(isReasonNotApplicable));
        hashCode = (17 * hashCode) + (isReasonNotAvailable == null ? 0 : System.hashCode(isReasonNotAvailable));
        return hashCode;
    }
}

