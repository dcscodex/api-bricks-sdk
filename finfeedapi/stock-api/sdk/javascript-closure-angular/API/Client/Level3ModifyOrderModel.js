goog.provide('API.Client.Level3.ModifyOrderModel');

/**
 * Represents the response DTO for order modify information
 * @record
 */
API.Client.Level3ModifyOrderModel = function() {}

/**
 * The stock symbol
 * @type {!string}
 * @export
 */
API.Client.Level3ModifyOrderModel.prototype.symbol;

/**
 * Original timestamp in nanoseconds since epoch
 * @type {!number}
 * @export
 */
API.Client.Level3ModifyOrderModel.prototype.timestampNanos;

/**
 * Time when the order was modified as DateTime (UTC)
 * @type {!Date}
 * @export
 */
API.Client.Level3ModifyOrderModel.prototype.timestamp;

/**
 * Order identifier reference
 * @type {!number}
 * @export
 */
API.Client.Level3ModifyOrderModel.prototype.orderIdReference;

/**
 * Indicates if priority is reseted
 * @type {!boolean}
 * @export
 */
API.Client.Level3ModifyOrderModel.prototype.isPriorityReset;

/**
 * New total quoted size in number of shares
 * @type {!number}
 * @export
 */
API.Client.Level3ModifyOrderModel.prototype.size;

/**
 * Price as decimal
 * @type {!number}
 * @export
 */
API.Client.Level3ModifyOrderModel.prototype.price;

