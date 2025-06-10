goog.provide('API.Client.v1.QuoteTrade');

/**
 * Represents a quote trade data model.
 * @record
 */
API.Client.V1QuoteTrade = function() {}

/**
 * The symbol identifier.
 * @type {!string}
 * @export
 */
API.Client.V1QuoteTrade.prototype.symbolId;

/**
 * The exchange time of the quote trade.
 * @type {!Date}
 * @export
 */
API.Client.V1QuoteTrade.prototype.timeExchange;

/**
 * The CoinAPI time when the quote trade was received.
 * @type {!Date}
 * @export
 */
API.Client.V1QuoteTrade.prototype.timeCoinapi;

/**
 * The best asking price.
 * @type {!number}
 * @export
 */
API.Client.V1QuoteTrade.prototype.askPrice;

/**
 * The volume resting on the best ask. If the value is equal to zero, then the size is unknown.
 * @type {!number}
 * @export
 */
API.Client.V1QuoteTrade.prototype.askSize;

/**
 * The best bidding price.
 * @type {!number}
 * @export
 */
API.Client.V1QuoteTrade.prototype.bidPrice;

/**
 * The volume resting on the best bid. If the value is equal to zero, then the size is unknown.
 * @type {!number}
 * @export
 */
API.Client.V1QuoteTrade.prototype.bidSize;

/**
 * @type {!API.Client.v1.LastTrade}
 * @export
 */
API.Client.V1QuoteTrade.prototype.lastTrade;

