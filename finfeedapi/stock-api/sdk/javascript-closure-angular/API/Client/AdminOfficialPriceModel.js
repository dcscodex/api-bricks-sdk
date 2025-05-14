goog.provide('API.Client.Admin.OfficialPriceModel');

/**
 * Represents the response DTO for official price information
 * @record
 */
API.Client.AdminOfficialPriceModel = function() {}

/**
 * The stock symbol
 * @type {!string}
 * @export
 */
API.Client.AdminOfficialPriceModel.prototype.symbol;

/**
 * Original timestamp in nanoseconds since epoch
 * @type {!number}
 * @export
 */
API.Client.AdminOfficialPriceModel.prototype.timestampNanos;

/**
 * Time when the official price was recorded as DateTime
 * @type {!Date}
 * @export
 */
API.Client.AdminOfficialPriceModel.prototype.timestamp;

/**
 * Type of price as byte value
 * @type {!number}
 * @export
 */
API.Client.AdminOfficialPriceModel.prototype.priceType;

/**
 * Type of price as character string
 * @type {!string}
 * @export
 */
API.Client.AdminOfficialPriceModel.prototype.priceTypeCode;

/**
 * Human-readable description of the price type
 * @type {!string}
 * @export
 */
API.Client.AdminOfficialPriceModel.prototype.priceTypeText;

/**
 * Indicates if the price type is 'IEX Official Opening Price' ('Q'/0x51).
 * @type {!boolean}
 * @export
 */
API.Client.AdminOfficialPriceModel.prototype.isPriceTypeOpening;

/**
 * Indicates if the price type is 'IEX Official Closing Price' ('M'/0x4d).
 * @type {!boolean}
 * @export
 */
API.Client.AdminOfficialPriceModel.prototype.isPriceTypeClosing;

/**
 * Official price as decimal
 * @type {!number}
 * @export
 */
API.Client.AdminOfficialPriceModel.prototype.officialPrice;

