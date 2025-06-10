goog.provide('API.Client.v1.Trade');

/**
 * Represents a trade executed on the exchange.
 * @record
 */
API.Client.V1Trade = function() {}

/**
 * The symbol identifier.
 * @type {!string}
 * @export
 */
API.Client.V1Trade.prototype.symbolId;

/**
 * The time of trade reported by the exchange.
 * @type {!Date}
 * @export
 */
API.Client.V1Trade.prototype.timeExchange;

/**
 * The time when the trade was received by CoinAPI.
 * @type {!Date}
 * @export
 */
API.Client.V1Trade.prototype.timeCoinapi;

/**
 * The unique identifier for the trade.
 * @type {!API.Client.UUID}
 * @export
 */
API.Client.V1Trade.prototype.uuid;

/**
 * The price of the transaction.
 * @type {!number}
 * @export
 */
API.Client.V1Trade.prototype.price;

/**
 * The base asset amount traded in the transaction.
 * @type {!number}
 * @export
 */
API.Client.V1Trade.prototype.size;

/**
 * The aggressor side of the transaction (BUY/SELL/BUY_ESTIMATED/SELL_ESTIMATED/UNKNOWN).
 * @type {!string}
 * @export
 */
API.Client.V1Trade.prototype.takerSide;

/**
 * The trade identifier.
 * @type {!string}
 * @export
 */
API.Client.V1Trade.prototype.idTrade;

/**
 * The order maker identifier.
 * @type {!string}
 * @export
 */
API.Client.V1Trade.prototype.idOrderMaker;

/**
 * The order taker identifier.
 * @type {!string}
 * @export
 */
API.Client.V1Trade.prototype.idOrderTaker;

