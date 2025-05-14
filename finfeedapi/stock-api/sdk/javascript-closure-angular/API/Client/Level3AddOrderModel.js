goog.provide('API.Client.Level3.AddOrderModel');

/**
 * Represents the response DTO for add order information
 * @record
 */
API.Client.Level3AddOrderModel = function() {}

/**
 * The stock symbol
 * @type {!string}
 * @export
 */
API.Client.Level3AddOrderModel.prototype.symbol;

/**
 * Original timestamp in nanoseconds since epoch
 * @type {!number}
 * @export
 */
API.Client.Level3AddOrderModel.prototype.timestampNanos;

/**
 * Time when the order was added as DateTime (UTC)
 * @type {!Date}
 * @export
 */
API.Client.Level3AddOrderModel.prototype.timestamp;

/**
 * Indicates if this is a Buy order ('8'/0x38).
 * @type {!boolean}
 * @export
 */
API.Client.Level3AddOrderModel.prototype.isSideBuy;

/**
 * Quoted size in number of shares
 * @type {!number}
 * @export
 */
API.Client.Level3AddOrderModel.prototype.size;

/**
 * Price as decimal
 * @type {!number}
 * @export
 */
API.Client.Level3AddOrderModel.prototype.price;

/**
 * Order identifier
 * @type {!number}
 * @export
 */
API.Client.Level3AddOrderModel.prototype.orderId;

