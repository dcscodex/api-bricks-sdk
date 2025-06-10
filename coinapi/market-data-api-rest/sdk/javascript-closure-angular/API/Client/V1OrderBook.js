goog.provide('API.Client.v1.OrderBook');

/**
 * Represents an order book with additional information and functionality.
 * @record
 */
API.Client.V1OrderBook = function() {}

/**
 * The symbol identifier.
 * @type {!string}
 * @export
 */
API.Client.V1OrderBook.prototype.symbolId;

/**
 * The exchange time of the order book.
 * @type {!Date}
 * @export
 */
API.Client.V1OrderBook.prototype.timeExchange;

/**
 * The CoinAPI time when the order book was received.
 * @type {!Date}
 * @export
 */
API.Client.V1OrderBook.prototype.timeCoinapi;

/**
 * The asks made by market makers.
 * @type {!API.Client.AnyType}
 * @export
 */
API.Client.V1OrderBook.prototype.asks;

/**
 * The bids made by market makers.
 * @type {!API.Client.AnyType}
 * @export
 */
API.Client.V1OrderBook.prototype.bids;

