goog.provide('API.Client.v1.SymbolMapping');

/**
 * Represents symbol mapping information for exchange symbols.
 * @record
 */
API.Client.V1SymbolMapping = function() {}

/**
 * The symbol ID.
 * @type {!string}
 * @export
 */
API.Client.V1SymbolMapping.prototype.symbolId;

/**
 * The exchange-specific symbol ID.
 * @type {!string}
 * @export
 */
API.Client.V1SymbolMapping.prototype.symbolIdExchange;

/**
 * The CoinAPI DataInfo ID.
 * @type {!number}
 * @export
 */
API.Client.V1SymbolMapping.prototype.coinapiDatainfoId;

/**
 * The exchange-specific base asset ID.
 * @type {!string}
 * @export
 */
API.Client.V1SymbolMapping.prototype.assetIdBaseExchange;

/**
 * The exchange-specific quote asset ID.
 * @type {!string}
 * @export
 */
API.Client.V1SymbolMapping.prototype.assetIdQuoteExchange;

/**
 * The base asset ID.
 * @type {!string}
 * @export
 */
API.Client.V1SymbolMapping.prototype.assetIdBase;

/**
 * The quote asset ID.
 * @type {!string}
 * @export
 */
API.Client.V1SymbolMapping.prototype.assetIdQuote;

/**
 * The price precision.
 * @type {!number}
 * @export
 */
API.Client.V1SymbolMapping.prototype.pricePrecision;

/**
 * The size precision.
 * @type {!number}
 * @export
 */
API.Client.V1SymbolMapping.prototype.sizePrecision;

