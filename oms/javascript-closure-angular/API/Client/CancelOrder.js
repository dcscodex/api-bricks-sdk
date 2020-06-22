goog.provide('API.Client.cancelOrder');

/**
 * @record
 */
API.Client.CancelOrder = function() {}

/**
 * Exchange name
 * @type {!string}
 * @export
 */
API.Client.CancelOrder.prototype.exchangeId;

/**
 * Order Id
 * @type {!string}
 * @export
 */
API.Client.CancelOrder.prototype.exchangeOrderId;

/**
 * Client order Id
 * @type {!string}
 * @export
 */
API.Client.CancelOrder.prototype.clientOrderId;

