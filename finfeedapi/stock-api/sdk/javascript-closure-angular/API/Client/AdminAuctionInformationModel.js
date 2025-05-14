goog.provide('API.Client.Admin.AuctionInformationModel');

/**
 * Represents the response DTO for auction information
 * @record
 */
API.Client.AdminAuctionInformationModel = function() {}

/**
 * The stock symbol
 * @type {!string}
 * @export
 */
API.Client.AdminAuctionInformationModel.prototype.symbol;

/**
 * Original timestamp in nanoseconds since epoch
 * @type {!number}
 * @export
 */
API.Client.AdminAuctionInformationModel.prototype.timestampNanos;

/**
 * Time when the auction data was recorded as DateTime
 * @type {!Date}
 * @export
 */
API.Client.AdminAuctionInformationModel.prototype.timestamp;

/**
 * Type of auction as byte value
 * @type {!number}
 * @export
 */
API.Client.AdminAuctionInformationModel.prototype.auctionType;

/**
 * Type of auction as character string
 * @type {!string}
 * @export
 */
API.Client.AdminAuctionInformationModel.prototype.auctionTypeCode;

/**
 * Human-readable description of the auction type
 * @type {!string}
 * @export
 */
API.Client.AdminAuctionInformationModel.prototype.auctionTypeText;

/**
 * Indicates if the auction type is 'Opening Auction' ('O'/0x4f).
 * @type {!boolean}
 * @export
 */
API.Client.AdminAuctionInformationModel.prototype.isAuctionTypeOpening;

/**
 * Indicates if the auction type is 'Closing Auction' ('C'/0x43).
 * @type {!boolean}
 * @export
 */
API.Client.AdminAuctionInformationModel.prototype.isAuctionTypeClosing;

/**
 * Indicates if the auction type is 'IPO Auction' ('I'/0x49).
 * @type {!boolean}
 * @export
 */
API.Client.AdminAuctionInformationModel.prototype.isAuctionTypeIpo;

/**
 * Indicates if the auction type is 'Halt Auction' ('H'/0x48).
 * @type {!boolean}
 * @export
 */
API.Client.AdminAuctionInformationModel.prototype.isAuctionTypeHalt;

/**
 * Indicates if the auction type is 'Volatility Auction' ('V'/0x56).
 * @type {!boolean}
 * @export
 */
API.Client.AdminAuctionInformationModel.prototype.isAuctionTypeVolatility;

/**
 * Number of shares paired at the Reference Price
 * @type {!number}
 * @export
 */
API.Client.AdminAuctionInformationModel.prototype.pairedShares;

/**
 * Reference price as decimal
 * @type {!number}
 * @export
 */
API.Client.AdminAuctionInformationModel.prototype.referencePrice;

/**
 * Indicative clearing price as decimal
 * @type {!number}
 * @export
 */
API.Client.AdminAuctionInformationModel.prototype.indicativeClearingPrice;

/**
 * Number of unpaired shares at the Reference Price
 * @type {!number}
 * @export
 */
API.Client.AdminAuctionInformationModel.prototype.imbalanceShares;

/**
 * Side of the imbalance as byte value
 * @type {!number}
 * @export
 */
API.Client.AdminAuctionInformationModel.prototype.imbalanceSide;

/**
 * Side of the imbalance as character string
 * @type {!string}
 * @export
 */
API.Client.AdminAuctionInformationModel.prototype.imbalanceSideCode;

/**
 * Human-readable description of the imbalance side
 * @type {!string}
 * @export
 */
API.Client.AdminAuctionInformationModel.prototype.imbalanceSideText;

/**
 * Indicates if there is a buy-side imbalance ('B'/0x42).
 * @type {!boolean}
 * @export
 */
API.Client.AdminAuctionInformationModel.prototype.isImbalanceSideBuy;

/**
 * Indicates if there is a sell-side imbalance ('S'/0x53).
 * @type {!boolean}
 * @export
 */
API.Client.AdminAuctionInformationModel.prototype.isImbalanceSideSell;

/**
 * Indicates if there is no imbalance ('N'/0x4e).
 * @type {!boolean}
 * @export
 */
API.Client.AdminAuctionInformationModel.prototype.isImbalanceSideNone;

/**
 * Number of extensions to the auction
 * @type {!number}
 * @export
 */
API.Client.AdminAuctionInformationModel.prototype.extensionNumber;

/**
 * Scheduled auction time in seconds since epoch
 * @type {!number}
 * @export
 */
API.Client.AdminAuctionInformationModel.prototype.scheduledAuctionTimeSeconds;

/**
 * Scheduled time for the auction as DateTime
 * @type {!Date}
 * @export
 */
API.Client.AdminAuctionInformationModel.prototype.scheduledAuctionTime;

/**
 * Auction book clearing price as decimal
 * @type {!number}
 * @export
 */
API.Client.AdminAuctionInformationModel.prototype.auctionBookClearingPrice;

/**
 * Collar reference price as decimal
 * @type {!number}
 * @export
 */
API.Client.AdminAuctionInformationModel.prototype.collarReferencePrice;

/**
 * Lower auction collar as decimal
 * @type {!number}
 * @export
 */
API.Client.AdminAuctionInformationModel.prototype.lowerAuctionCollar;

/**
 * Upper auction collar as decimal
 * @type {!number}
 * @export
 */
API.Client.AdminAuctionInformationModel.prototype.upperAuctionCollar;

