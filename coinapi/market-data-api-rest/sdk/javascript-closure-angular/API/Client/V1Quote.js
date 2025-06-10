goog.provide('API.Client.v1.Quote');

/**
 * Represents a quote data model.
 * @record
 */
API.Client.V1Quote = function() {}

/**
 * The symbol identifier.
 * @type {!string}
 * @export
 */
API.Client.V1Quote.prototype.symbolId;

/**
 * The exchange time of the quote.
 * @type {!Date}
 * @export
 */
API.Client.V1Quote.prototype.timeExchange;

/**
 * The CoinAPI time when the quote was received.
 * @type {!Date}
 * @export
 */
API.Client.V1Quote.prototype.timeCoinapi;

/**
 * The best asking price.
 * @type {!number}
 * @export
 */
API.Client.V1Quote.prototype.askPrice;

/**
 * The volume resting on the best ask. If the value is equal to zero, then the size is unknown.
 * @type {!number}
 * @export
 */
API.Client.V1Quote.prototype.askSize;

/**
 * The best bidding price.
 * @type {!number}
 * @export
 */
API.Client.V1Quote.prototype.bidPrice;

/**
 * The volume resting on the best bid. If the value is equal to zero, then the size is unknown.
 * @type {!number}
 * @export
 */
API.Client.V1Quote.prototype.bidSize;

