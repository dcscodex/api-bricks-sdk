goog.provide('API.Client.Level3.DeleteOrderModel');

/**
 * Represents the response DTO for order delete information
 * @record
 */
API.Client.Level3DeleteOrderModel = function() {}

/**
 * The stock symbol
 * @type {!string}
 * @export
 */
API.Client.Level3DeleteOrderModel.prototype.symbol;

/**
 * Original timestamp in nanoseconds since epoch
 * @type {!number}
 * @export
 */
API.Client.Level3DeleteOrderModel.prototype.timestampNanos;

/**
 * Time when the order was deleted as DateTime
 * @type {!Date}
 * @export
 */
API.Client.Level3DeleteOrderModel.prototype.timestamp;

/**
 * Order identifier reference
 * @type {!number}
 * @export
 */
API.Client.Level3DeleteOrderModel.prototype.orderIdReference;

