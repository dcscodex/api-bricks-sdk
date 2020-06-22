goog.provide('API.Client.balance');

/**
 * @record
 */
API.Client.Balance = function() {}

/**
 * Result type.
 * @type {!string}
 * @export
 */
API.Client.Balance.prototype.type;

/**
 * Exchange name.
 * @type {!string}
 * @export
 */
API.Client.Balance.prototype.exchangeName;

/**
 * @type {!Array<!API.Client.balance_data>}
 * @export
 */
API.Client.Balance.prototype.data;

