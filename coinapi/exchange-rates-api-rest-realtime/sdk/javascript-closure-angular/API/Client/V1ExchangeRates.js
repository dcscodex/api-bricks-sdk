goog.provide('API.Client.v1.ExchangeRates');

/**
 * Represents exchange rates for a specific base asset.
 * @record
 */
API.Client.V1ExchangeRates = function() {}

/**
 * Gets or sets the base asset ID.
 * @type {!string}
 * @export
 */
API.Client.V1ExchangeRates.prototype.assetIdBase;

/**
 * Gets or sets the list of exchange rates.
 * @type {!Array<!API.Client.v1.ExchangeRatesRate>}
 * @export
 */
API.Client.V1ExchangeRates.prototype.rates;

