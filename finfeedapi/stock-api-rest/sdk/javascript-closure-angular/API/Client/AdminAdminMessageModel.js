goog.provide('API.Client.Admin.AdminMessageModel');

/**
 * Represents the response DTO for IEX admin information, combining all symbol-based admin message types
 * @record
 */
API.Client.AdminAdminMessageModel = function() {}

/**
 * @type {!API.Client.Admin.TradingStatusModel}
 * @export
 */
API.Client.AdminAdminMessageModel.prototype.tradingStatus;

/**
 * @type {!API.Client.Admin.OfficialPriceModel}
 * @export
 */
API.Client.AdminAdminMessageModel.prototype.officialPrice;

/**
 * @type {!API.Client.Admin.SecurityEventModel}
 * @export
 */
API.Client.AdminAdminMessageModel.prototype.securityEvent;

/**
 * @type {!API.Client.Admin.AuctionInformationModel}
 * @export
 */
API.Client.AdminAdminMessageModel.prototype.auctionInformation;

/**
 * @type {!API.Client.Admin.ShortSalePriceTestStatusModel}
 * @export
 */
API.Client.AdminAdminMessageModel.prototype.shortSalePriceTest;

/**
 * @type {!API.Client.Admin.OperationalHaltStatusModel}
 * @export
 */
API.Client.AdminAdminMessageModel.prototype.operationalHaltStatus;

/**
 * @type {!API.Client.Admin.RetailLiquidityIndicatorModel}
 * @export
 */
API.Client.AdminAdminMessageModel.prototype.retailLiquidityIndicator;

/**
 * @type {!API.Client.Admin.SystemEventModel}
 * @export
 */
API.Client.AdminAdminMessageModel.prototype.systemEvent;

/**
 * @type {!API.Client.Admin.SecurityDirectoryModel}
 * @export
 */
API.Client.AdminAdminMessageModel.prototype.securityDirectory;

