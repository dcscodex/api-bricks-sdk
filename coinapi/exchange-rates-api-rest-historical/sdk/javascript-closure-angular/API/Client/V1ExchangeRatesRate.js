goog.provide('API.Client.v1.ExchangeRatesRate');

/**
 * Represents an exchange rate within a collection of exchange rates.
 * @record
 */
API.Client.V1ExchangeRatesRate = function() {}

/**
 * Gets or sets the time of the exchange rate.
 * @type {!Date}
 * @export
 */
API.Client.V1ExchangeRatesRate.prototype.time;

/**
 * Gets or sets the quote asset ID of the exchange rate.
 * @type {!string}
 * @export
 */
API.Client.V1ExchangeRatesRate.prototype.assetIdQuote;

/**
 * Gets or sets the exchange rate value.
 * @type {!number}
 * @export
 */
API.Client.V1ExchangeRatesRate.prototype.rate;

