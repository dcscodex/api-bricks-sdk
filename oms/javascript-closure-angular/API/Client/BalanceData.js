goog.provide('API.Client.balance_data');

/**
 * @record
 */
API.Client.BalanceData = function() {}

/**
 * symbol_exchange
 * @type {!string}
 * @export
 */
API.Client.BalanceData.prototype.id;

/**
 * Currency code.
 * @type {!string}
 * @export
 */
API.Client.BalanceData.prototype.symbolExchange;

/**
 * CoinAPI currency code.
 * @type {!string}
 * @export
 */
API.Client.BalanceData.prototype.symbolCoinapi;

/**
 * The current balance.
 * @type {!number}
 * @export
 */
API.Client.BalanceData.prototype.balance;

/**
 * The amount that is available to trade.
 * @type {!number}
 * @export
 */
API.Client.BalanceData.prototype.available;

/**
 * Blocked funds.
 * @type {!number}
 * @export
 */
API.Client.BalanceData.prototype.locked;

/**
 * Source of last modification. 
 * @type {!string}
 * @export
 */
API.Client.BalanceData.prototype.updateOrigin;

/** @enum {string} */
API.Client.BalanceData.UpdateOriginEnum = { 
  INITIALIZATION: 'INITIALIZATION',
  BALANCE_MANAGER: 'BALANCE_MANAGER',
  EXCHANGE: 'EXCHANGE',
}
