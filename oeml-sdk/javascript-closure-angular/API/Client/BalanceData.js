goog.provide('API.Client.Balance_data');

/**
 * @record
 */
API.Client.BalanceData = function() {}

/**
 * Exchange currency code.
 * @type {!string}
 * @export
 */
API.Client.BalanceData.prototype.assetIdExchange;

/**
 * CoinAPI currency code.
 * @type {!string}
 * @export
 */
API.Client.BalanceData.prototype.assetIdCoinapi;

/**
 * Value of the current total currency balance on the exchange.
 * @type {!number}
 * @export
 */
API.Client.BalanceData.prototype.balance;

/**
 * Value of the current available currency balance on the exchange that can be used as collateral.
 * @type {!number}
 * @export
 */
API.Client.BalanceData.prototype.available;

/**
 * Value of the current locked currency balance by the exchange.
 * @type {!number}
 * @export
 */
API.Client.BalanceData.prototype.locked;

/**
 * Source of the last modification. 
 * @type {!string}
 * @export
 */
API.Client.BalanceData.prototype.lastUpdatedBy;

/**
 * Current exchange rate to the USD for the single unit of the currency. 
 * @type {!number}
 * @export
 */
API.Client.BalanceData.prototype.rateUsd;

/** @enum {string} */
API.Client.BalanceData.LastUpdatedByEnum = { 
  INITIALIZATION: 'INITIALIZATION',
  BALANCE_MANAGER: 'BALANCE_MANAGER',
  EXCHANGE: 'EXCHANGE',
}
