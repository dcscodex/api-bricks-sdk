goog.provide('API.Client.v1.Symbol');

/**
 * Represents a symbol data model.
 * @record
 */
API.Client.V1Symbol = function() {}

/**
 * The symbol identifier.
 * @type {!string}
 * @export
 */
API.Client.V1Symbol.prototype.symbolId;

/**
 * The exchange identifier.
 * @type {!string}
 * @export
 */
API.Client.V1Symbol.prototype.exchangeId;

/**
 * The symbol type.
 * @type {!string}
 * @export
 */
API.Client.V1Symbol.prototype.symbolType;

/**
 * The base asset identifier.
 * @type {!string}
 * @export
 */
API.Client.V1Symbol.prototype.assetIdBase;

/**
 * The quote asset identifier.
 * @type {!string}
 * @export
 */
API.Client.V1Symbol.prototype.assetIdQuote;

/**
 * The unit asset identifier.
 * @type {!string}
 * @export
 */
API.Client.V1Symbol.prototype.assetIdUnit;

/**
 * The contract unit for futures.
 * @type {!number}
 * @export
 */
API.Client.V1Symbol.prototype.futureContractUnit;

/**
 * The asset used as the unit for futures contract.
 * @type {!string}
 * @export
 */
API.Client.V1Symbol.prototype.futureContractUnitAsset;

/**
 * The future delivery time for futures contract.
 * @type {!Date}
 * @export
 */
API.Client.V1Symbol.prototype.futureDeliveryTime;

/**
 * Indicates whether the option type is a call.
 * @type {!boolean}
 * @export
 */
API.Client.V1Symbol.prototype.optionTypeIsCall;

/**
 * The strike price for options.
 * @type {!number}
 * @export
 */
API.Client.V1Symbol.prototype.optionStrikePrice;

/**
 * The contract unit for options.
 * @type {!number}
 * @export
 */
API.Client.V1Symbol.prototype.optionContractUnit;

/**
 * The exercise style for options.
 * @type {!string}
 * @export
 */
API.Client.V1Symbol.prototype.optionExerciseStyle;

/**
 * The expiration time for options.
 * @type {!Date}
 * @export
 */
API.Client.V1Symbol.prototype.optionExpirationTime;

/**
 * The delivery time for contracts.
 * @type {!Date}
 * @export
 */
API.Client.V1Symbol.prototype.contractDeliveryTime;

/**
 * The contract unit for contracts.
 * @type {!number}
 * @export
 */
API.Client.V1Symbol.prototype.contractUnit;

/**
 * The asset used as the unit for contracts.
 * @type {!string}
 * @export
 */
API.Client.V1Symbol.prototype.contractUnitAsset;

/**
 * The contract identifier.
 * @type {!string}
 * @export
 */
API.Client.V1Symbol.prototype.contractId;

/**
 * The display name of the contract.
 * @type {!string}
 * @export
 */
API.Client.V1Symbol.prototype.contractDisplayName;

/**
 * The display description of the contract.
 * @type {!string}
 * @export
 */
API.Client.V1Symbol.prototype.contractDisplayDescription;

/**
 * @type {!string}
 * @export
 */
API.Client.V1Symbol.prototype.dataStart;

/**
 * @type {!string}
 * @export
 */
API.Client.V1Symbol.prototype.dataEnd;

/**
 * The start date of quote data.
 * @type {!Date}
 * @export
 */
API.Client.V1Symbol.prototype.dataQuoteStart;

/**
 * The end date of quote data.
 * @type {!Date}
 * @export
 */
API.Client.V1Symbol.prototype.dataQuoteEnd;

/**
 * The start date of order book data.
 * @type {!Date}
 * @export
 */
API.Client.V1Symbol.prototype.dataOrderbookStart;

/**
 * The end date of order book data.
 * @type {!Date}
 * @export
 */
API.Client.V1Symbol.prototype.dataOrderbookEnd;

/**
 * The start date of trade data.
 * @type {!Date}
 * @export
 */
API.Client.V1Symbol.prototype.dataTradeStart;

/**
 * The end date of trade data.
 * @type {!Date}
 * @export
 */
API.Client.V1Symbol.prototype.dataTradeEnd;

/**
 * The index identifier.
 * @type {!string}
 * @export
 */
API.Client.V1Symbol.prototype.indexId;

/**
 * The display name of the index.
 * @type {!string}
 * @export
 */
API.Client.V1Symbol.prototype.indexDisplayName;

/**
 * The display description of the index.
 * @type {!string}
 * @export
 */
API.Client.V1Symbol.prototype.indexDisplayDescription;

/**
 * The volume in the last 1 hour.
 * @type {!number}
 * @export
 */
API.Client.V1Symbol.prototype.volume1hrs;

/**
 * The volume in USD in the last 1 hour.
 * @type {!number}
 * @export
 */
API.Client.V1Symbol.prototype.volume1hrsUsd;

/**
 * The volume in the last 1 day.
 * @type {!number}
 * @export
 */
API.Client.V1Symbol.prototype.volume1day;

/**
 * The volume in USD in the last 1 day.
 * @type {!number}
 * @export
 */
API.Client.V1Symbol.prototype.volume1dayUsd;

/**
 * The volume in the last 1 month.
 * @type {!number}
 * @export
 */
API.Client.V1Symbol.prototype.volume1mth;

/**
 * The volume in USD in the last 1 month.
 * @type {!number}
 * @export
 */
API.Client.V1Symbol.prototype.volume1mthUsd;

/**
 * The price.
 * @type {!number}
 * @export
 */
API.Client.V1Symbol.prototype.price;

/**
 * The symbol identifier in the exchange.
 * @type {!string}
 * @export
 */
API.Client.V1Symbol.prototype.symbolIdExchange;

/**
 * The base asset identifier in the exchange.
 * @type {!string}
 * @export
 */
API.Client.V1Symbol.prototype.assetIdBaseExchange;

/**
 * The quote asset identifier in the exchange.
 * @type {!string}
 * @export
 */
API.Client.V1Symbol.prototype.assetIdQuoteExchange;

/**
 * The price precision.
 * @type {!number}
 * @export
 */
API.Client.V1Symbol.prototype.pricePrecision;

/**
 * The size precision.
 * @type {!number}
 * @export
 */
API.Client.V1Symbol.prototype.sizePrecision;

/**
 * Not normalized raw kvp data.
 * @type {!Object<!string, string>}
 * @export
 */
API.Client.V1Symbol.prototype.rawKvp;

/**
 * Volume unit in USD.
 * @type {!number}
 * @export
 */
API.Client.V1Symbol.prototype.volumeToUsd;

