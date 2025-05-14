goog.provide('API.Client.v1.ExchangeRate');

/**
 * Represents an exchange rate.
 * @record
 */
API.Client.V1ExchangeRate = function() {}

/**
 * Gets or sets the time of the exchange rate.
 * @type {!Date}
 * @export
 */
API.Client.V1ExchangeRate.prototype.time;

/**
 * Gets or sets the base asset ID of the exchange rate.
 * @type {!string}
 * @export
 */
API.Client.V1ExchangeRate.prototype.assetIdBase;

/**
 * Gets or sets the quote asset ID of the exchange rate.
 * @type {!string}
 * @export
 */
API.Client.V1ExchangeRate.prototype.assetIdQuote;

/**
 * Gets or sets the exchange rate value.
 * @type {!number}
 * @export
 */
API.Client.V1ExchangeRate.prototype.rate;

