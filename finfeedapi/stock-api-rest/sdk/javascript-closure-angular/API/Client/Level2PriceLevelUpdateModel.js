goog.provide('API.Client.Level2.PriceLevelUpdateModel');

/**
 * Represents the response DTO for price level update information
 * @record
 */
API.Client.Level2PriceLevelUpdateModel = function() {}

/**
 * The stock symbol
 * @type {!string}
 * @export
 */
API.Client.Level2PriceLevelUpdateModel.prototype.symbol;

/**
 * Original timestamp in nanoseconds since epoch
 * @type {!number}
 * @export
 */
API.Client.Level2PriceLevelUpdateModel.prototype.timestampNanos;

/**
 * Time when the price level update was recorded as DateTime
 * @type {!Date}
 * @export
 */
API.Client.Level2PriceLevelUpdateModel.prototype.timestamp;

/**
 * Indicates if this is a price level update for the Buy Side.
 * @type {!boolean}
 * @export
 */
API.Client.Level2PriceLevelUpdateModel.prototype.isSideBuy;

/**
 * Indicates if event processing is complete.
 * @type {!boolean}
 * @export
 */
API.Client.Level2PriceLevelUpdateModel.prototype.isEventProcessingComplete;

/**
 * Aggregate quoted size at the price level
 * @type {!number}
 * @export
 */
API.Client.Level2PriceLevelUpdateModel.prototype.size;

/**
 * Price level as decimal
 * @type {!number}
 * @export
 */
API.Client.Level2PriceLevelUpdateModel.prototype.price;

