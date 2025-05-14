goog.provide('API.Client.Admin.TradingStatusModel');

/**
 * Represents the response DTO for trading status information
 * @record
 */
API.Client.AdminTradingStatusModel = function() {}

/**
 * The stock symbol
 * @type {!string}
 * @export
 */
API.Client.AdminTradingStatusModel.prototype.symbol;

/**
 * Original timestamp in nanoseconds since epoch
 * @type {!number}
 * @export
 */
API.Client.AdminTradingStatusModel.prototype.timestampNanos;

/**
 * Time when the trading status was recorded as DateTime
 * @type {!Date}
 * @export
 */
API.Client.AdminTradingStatusModel.prototype.timestamp;

/**
 * Gets whether the security is currently trading on IEX
 * @type {!boolean}
 * @export
 */
API.Client.AdminTradingStatusModel.prototype.isTradingLive;

/**
 * Gets whether the security is halted across all US equity markets
 * @type {!boolean}
 * @export
 */
API.Client.AdminTradingStatusModel.prototype.isTradingHalted;

/**
 * Gets whether the security is in Order Acceptance Period on IEX
 * @type {!boolean}
 * @export
 */
API.Client.AdminTradingStatusModel.prototype.isTradingInOrderAcceptancePeriod;

/**
 * Gets whether the security is paused and in Order Acceptance Period on IEX
 * @type {!boolean}
 * @export
 */
API.Client.AdminTradingStatusModel.prototype.isTradingPaused;

/**
 * Gets whether the halt reason is News Pending
 * @type {!boolean}
 * @export
 */
API.Client.AdminTradingStatusModel.prototype.isReasonHaltNewsPending;

/**
 * Gets whether the halt reason is IPO Not Yet Trading
 * @type {!boolean}
 * @export
 */
API.Client.AdminTradingStatusModel.prototype.isReasonIpoNotYetTrading;

/**
 * Gets whether the halt reason is IPO Deferred
 * @type {!boolean}
 * @export
 */
API.Client.AdminTradingStatusModel.prototype.isReasonIpoDeferred;

/**
 * Gets whether the order acceptance period reason is Halt News Dissemination
 * @type {!boolean}
 * @export
 */
API.Client.AdminTradingStatusModel.prototype.isReasonHaltNewsDissemination;

/**
 * Gets whether the order acceptance period reason is IPO Order Acceptance Period
 * @type {!boolean}
 * @export
 */
API.Client.AdminTradingStatusModel.prototype.isReasonIpoOrderAcceptancePeriod;

/**
 * Gets whether the order acceptance period reason is IPO Pre-Launch Period
 * @type {!boolean}
 * @export
 */
API.Client.AdminTradingStatusModel.prototype.isReasonIpoPreLaunchPeriod;

/**
 * Gets whether the order acceptance period reason is Market-Wide Circuit Breaker Level 1 – Breached
 * @type {!boolean}
 * @export
 */
API.Client.AdminTradingStatusModel.prototype.isReasonMarketWideCircuitBreakerLevel1;

/**
 * Gets whether the order acceptance period reason is Market-Wide Circuit Breaker Level 2 – Breached
 * @type {!boolean}
 * @export
 */
API.Client.AdminTradingStatusModel.prototype.isReasonMarketWideCircuitBreakerLevel2;

/**
 * Gets whether the halt reason is Market-Wide Circuit Breaker Level 3 – Breached
 * @type {!boolean}
 * @export
 */
API.Client.AdminTradingStatusModel.prototype.isReasonMarketWideCircuitBreakerLevel3;

/**
 * Gets whether the reason is Not Applicable
 * @type {!boolean}
 * @export
 */
API.Client.AdminTradingStatusModel.prototype.isReasonNotApplicable;

/**
 * Gets whether the halt reason is Not Available
 * @type {!boolean}
 * @export
 */
API.Client.AdminTradingStatusModel.prototype.isReasonNotAvailable;

