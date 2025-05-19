goog.provide('API.Client.v1.ExchangeRatesTimeseriesItem');

/**
 * Represents an item in the exchange rate timeseries.
 * @record
 */
API.Client.V1ExchangeRatesTimeseriesItem = function() {}

/**
 * Gets or sets the start time of the period.
 * @type {!Date}
 * @export
 */
API.Client.V1ExchangeRatesTimeseriesItem.prototype.timePeriodStart;

/**
 * Gets or sets the end time of the period.
 * @type {!Date}
 * @export
 */
API.Client.V1ExchangeRatesTimeseriesItem.prototype.timePeriodEnd;

/**
 * Gets or sets the opening time of the period.
 * @type {!Date}
 * @export
 */
API.Client.V1ExchangeRatesTimeseriesItem.prototype.timeOpen;

/**
 * Gets or sets the closing time of the period.
 * @type {!Date}
 * @export
 */
API.Client.V1ExchangeRatesTimeseriesItem.prototype.timeClose;

/**
 * Gets or sets the opening rate for the period.
 * @type {!number}
 * @export
 */
API.Client.V1ExchangeRatesTimeseriesItem.prototype.rateOpen;

/**
 * Gets or sets the highest rate for the period.
 * @type {!number}
 * @export
 */
API.Client.V1ExchangeRatesTimeseriesItem.prototype.rateHigh;

/**
 * Gets or sets the lowest rate for the period.
 * @type {!number}
 * @export
 */
API.Client.V1ExchangeRatesTimeseriesItem.prototype.rateLow;

/**
 * Gets or sets the closing rate for the period.
 * @type {!number}
 * @export
 */
API.Client.V1ExchangeRatesTimeseriesItem.prototype.rateClose;

