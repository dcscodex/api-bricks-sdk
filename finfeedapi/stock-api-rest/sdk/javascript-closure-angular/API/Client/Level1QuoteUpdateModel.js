goog.provide('API.Client.Level1.QuoteUpdateModel');

/**
 * Represents the response DTO for quote update information
 * @record
 */
API.Client.Level1QuoteUpdateModel = function() {}

/**
 * The stock symbol
 * @type {!string}
 * @export
 */
API.Client.Level1QuoteUpdateModel.prototype.symbol;

/**
 * Original timestamp in nanoseconds since epoch
 * @type {!number}
 * @export
 */
API.Client.Level1QuoteUpdateModel.prototype.timestampNanos;

/**
 * Time when the quote update was recorded as DateTime
 * @type {!Date}
 * @export
 */
API.Client.Level1QuoteUpdateModel.prototype.timestamp;

/**
 * Gets whether the symbol is available for trading  True if active, False if halted, paused, or otherwise not available
 * @type {!boolean}
 * @export
 */
API.Client.Level1QuoteUpdateModel.prototype.isSymbolAvailable;

/**
 * Gets whether the market session is regular or pre/post-market  True if pre/post-market session, False if regular market session
 * @type {!boolean}
 * @export
 */
API.Client.Level1QuoteUpdateModel.prototype.isPrePostMarketSession;

/**
 * Ask size in number of shares
 * @type {!number}
 * @export
 */
API.Client.Level1QuoteUpdateModel.prototype.askSize;

/**
 * Ask price as decimal
 * @type {!number}
 * @export
 */
API.Client.Level1QuoteUpdateModel.prototype.askPrice;

/**
 * Bid price as decimal
 * @type {!number}
 * @export
 */
API.Client.Level1QuoteUpdateModel.prototype.bidPrice;

/**
 * Bid size in number of shares
 * @type {!number}
 * @export
 */
API.Client.Level1QuoteUpdateModel.prototype.bidSize;

