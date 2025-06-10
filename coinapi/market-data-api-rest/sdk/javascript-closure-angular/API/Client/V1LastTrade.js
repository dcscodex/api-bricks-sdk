goog.provide('API.Client.v1.LastTrade');

/**
 * Represents the last executed transaction.
 * @record
 */
API.Client.V1LastTrade = function() {}

/**
 * The exchange time of the last trade.
 * @type {!Date}
 * @export
 */
API.Client.V1LastTrade.prototype.timeExchange;

/**
 * The CoinAPI time when the last trade was received.
 * @type {!Date}
 * @export
 */
API.Client.V1LastTrade.prototype.timeCoinapi;

/**
 * The UUID of the last trade.
 * @type {!API.Client.UUID}
 * @export
 */
API.Client.V1LastTrade.prototype.uuid;

/**
 * The price of the last trade.
 * @type {!number}
 * @export
 */
API.Client.V1LastTrade.prototype.price;

/**
 * The size of the last trade.
 * @type {!number}
 * @export
 */
API.Client.V1LastTrade.prototype.size;

/**
 * The taker side of the last trade.
 * @type {!string}
 * @export
 */
API.Client.V1LastTrade.prototype.takerSide;

