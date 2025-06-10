goog.provide('API.Client.v1.Asset');

/**
 * Represents an asset.
 * @record
 */
API.Client.V1Asset = function() {}

/**
 * Gets or sets the asset ID.
 * @type {!string}
 * @export
 */
API.Client.V1Asset.prototype.assetId;

/**
 * Gets or sets the name of the asset.
 * @type {!string}
 * @export
 */
API.Client.V1Asset.prototype.name;

/**
 * Gets or sets a value indicating whether the asset is a cryptocurrency.
 * @type {!number}
 * @export
 */
API.Client.V1Asset.prototype.typeIsCrypto;

/**
 * Gets or sets the start date of quote data.
 * @type {!Date}
 * @export
 */
API.Client.V1Asset.prototype.dataQuoteStart;

/**
 * Gets or sets the end date of quote data.
 * @type {!Date}
 * @export
 */
API.Client.V1Asset.prototype.dataQuoteEnd;

/**
 * Gets or sets the start date of order book data.
 * @type {!Date}
 * @export
 */
API.Client.V1Asset.prototype.dataOrderbookStart;

/**
 * Gets or sets the end date of order book data.
 * @type {!Date}
 * @export
 */
API.Client.V1Asset.prototype.dataOrderbookEnd;

/**
 * Gets or sets the start date of trade data.
 * @type {!Date}
 * @export
 */
API.Client.V1Asset.prototype.dataTradeStart;

/**
 * Gets or sets the end date of trade data.
 * @type {!Date}
 * @export
 */
API.Client.V1Asset.prototype.dataTradeEnd;

/**
 * Gets or sets the number of symbols.
 * @type {!number}
 * @export
 */
API.Client.V1Asset.prototype.dataSymbolsCount;

/**
 * Gets or sets the USD volume in the last 1 hour.
 * @type {!number}
 * @export
 */
API.Client.V1Asset.prototype.volume1hrsUsd;

/**
 * Gets or sets the USD volume in the last 1 day.
 * @type {!number}
 * @export
 */
API.Client.V1Asset.prototype.volume1dayUsd;

/**
 * Gets or sets the USD volume in the last 1 month.
 * @type {!number}
 * @export
 */
API.Client.V1Asset.prototype.volume1mthUsd;

/**
 * Gets or sets the USD price of the asset.
 * @type {!number}
 * @export
 */
API.Client.V1Asset.prototype.priceUsd;

/**
 * Gets or sets the ID of the icon for the asset.
 * @type {!API.Client.UUID}
 * @export
 */
API.Client.V1Asset.prototype.idIcon;

/**
 * Gets or sets the current supply of the asset.
 * @type {!number}
 * @export
 */
API.Client.V1Asset.prototype.supplyCurrent;

/**
 * Gets or sets the total supply of the asset.
 * @type {!number}
 * @export
 */
API.Client.V1Asset.prototype.supplyTotal;

/**
 * Gets or sets the maximum supply of the asset.
 * @type {!number}
 * @export
 */
API.Client.V1Asset.prototype.supplyMax;

/**
 * 
 * @type {!Array<!API.Client.v1.ChainNetworkAddress>}
 * @export
 */
API.Client.V1Asset.prototype.chainAddresses;

/**
 * @type {!string}
 * @export
 */
API.Client.V1Asset.prototype.dataStart;

/**
 * @type {!string}
 * @export
 */
API.Client.V1Asset.prototype.dataEnd;

