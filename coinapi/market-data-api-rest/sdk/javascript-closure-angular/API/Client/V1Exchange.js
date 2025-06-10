goog.provide('API.Client.v1.Exchange');

/**
 * Represents an exchange.
 * @record
 */
API.Client.V1Exchange = function() {}

/**
 * Gets or sets the exchange ID.
 * @type {!string}
 * @export
 */
API.Client.V1Exchange.prototype.exchangeId;

/**
 * Gets or sets the website URL of the exchange.
 * @type {!string}
 * @export
 */
API.Client.V1Exchange.prototype.website;

/**
 * Gets or sets the name of the exchange.
 * @type {!string}
 * @export
 */
API.Client.V1Exchange.prototype.name;

/**
 * @type {!string}
 * @export
 */
API.Client.V1Exchange.prototype.dataStart;

/**
 * @type {!string}
 * @export
 */
API.Client.V1Exchange.prototype.dataEnd;

/**
 * Gets or sets the start date of quote data.
 * @type {!Date}
 * @export
 */
API.Client.V1Exchange.prototype.dataQuoteStart;

/**
 * Gets or sets the end date of quote data.
 * @type {!Date}
 * @export
 */
API.Client.V1Exchange.prototype.dataQuoteEnd;

/**
 * Gets or sets the start date of order book data.
 * @type {!Date}
 * @export
 */
API.Client.V1Exchange.prototype.dataOrderbookStart;

/**
 * Gets or sets the end date of order book data.
 * @type {!Date}
 * @export
 */
API.Client.V1Exchange.prototype.dataOrderbookEnd;

/**
 * Gets or sets the start date of trade data.
 * @type {!Date}
 * @export
 */
API.Client.V1Exchange.prototype.dataTradeStart;

/**
 * Gets or sets the end date of trade data.
 * @type {!Date}
 * @export
 */
API.Client.V1Exchange.prototype.dataTradeEnd;

/**
 * Gets or sets the number of trades.
 * @type {!number}
 * @export
 */
API.Client.V1Exchange.prototype.dataTradeCount;

/**
 * Gets or sets the number of symbols.
 * @type {!number}
 * @export
 */
API.Client.V1Exchange.prototype.dataSymbolsCount;

/**
 * Gets or sets the USD volume in the last 1 hour.
 * @type {!number}
 * @export
 */
API.Client.V1Exchange.prototype.volume1hrsUsd;

/**
 * Gets or sets the USD volume in the last 1 day.
 * @type {!number}
 * @export
 */
API.Client.V1Exchange.prototype.volume1dayUsd;

/**
 * Gets or sets the USD volume in the last 1 month.
 * @type {!number}
 * @export
 */
API.Client.V1Exchange.prototype.volume1mthUsd;

/**
 * Gets or sets the list of metric IDs.
 * @type {!Array<!string>}
 * @export
 */
API.Client.V1Exchange.prototype.metricId;

/**
 * Gets or sets the list of icons for the exchange.
 * @type {!Array<!API.Client.v1.Icon>}
 * @export
 */
API.Client.V1Exchange.prototype.icons;

/**
 * Rank of the exchange.
 * @type {!number}
 * @export
 */
API.Client.V1Exchange.prototype.rank;

/**
 * Status of the integration
 * @type {!string}
 * @export
 */
API.Client.V1Exchange.prototype.integrationStatus;

