goog.provide('API.Client.v1.OrderBookBase');

/**
 * Represents the base model for order book data.
 * @record
 */
API.Client.V1OrderBookBase = function() {}

/**
 * The symbol identifier.
 * @type {!string}
 * @export
 */
API.Client.V1OrderBookBase.prototype.symbolId;

/**
 * The exchange time of the order book.
 * @type {!Date}
 * @export
 */
API.Client.V1OrderBookBase.prototype.timeExchange;

/**
 * The CoinAPI time when the order book was received.
 * @type {!Date}
 * @export
 */
API.Client.V1OrderBookBase.prototype.timeCoinapi;

/**
 * The asks made by market makers.
 * @type {!API.Client.AnyType}
 * @export
 */
API.Client.V1OrderBookBase.prototype.asks;

/**
 * The bids made by market makers.
 * @type {!API.Client.AnyType}
 * @export
 */
API.Client.V1OrderBookBase.prototype.bids;

