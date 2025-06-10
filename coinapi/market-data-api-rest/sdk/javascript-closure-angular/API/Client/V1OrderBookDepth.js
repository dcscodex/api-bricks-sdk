goog.provide('API.Client.v1.OrderBookDepth');

/**
 * Represents the depth of an order book.
 * @record
 */
API.Client.V1OrderBookDepth = function() {}

/**
 * The symbol identifier.
 * @type {!string}
 * @export
 */
API.Client.V1OrderBookDepth.prototype.symbolId;

/**
 * The exchange time of the order book.
 * @type {!Date}
 * @export
 */
API.Client.V1OrderBookDepth.prototype.timeExchange;

/**
 * The CoinAPI time when the order book was received.
 * @type {!Date}
 * @export
 */
API.Client.V1OrderBookDepth.prototype.timeCoinapi;

/**
 * The number of ask levels in the order book.
 * @type {!number}
 * @export
 */
API.Client.V1OrderBookDepth.prototype.askLevels;

/**
 * The number of bid levels in the order book.
 * @type {!number}
 * @export
 */
API.Client.V1OrderBookDepth.prototype.bidLevels;

/**
 * The depth of the ask side of the order book.
 * @type {!number}
 * @export
 */
API.Client.V1OrderBookDepth.prototype.askDepth;

/**
 * The depth of the bid side of the order book.
 * @type {!number}
 * @export
 */
API.Client.V1OrderBookDepth.prototype.bidDepth;

