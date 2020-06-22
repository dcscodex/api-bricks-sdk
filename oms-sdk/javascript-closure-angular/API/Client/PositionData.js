goog.provide('API.Client.position_data');

/**
 * @record
 */
API.Client.PositionData = function() {}

/**
 * Unique position ID
 * @type {!string}
 * @export
 */
API.Client.PositionData.prototype.id;

/**
 * The contract for this position.
 * @type {!string}
 * @export
 */
API.Client.PositionData.prototype.symbolExchange;

/**
 * The coinapi contract for this position.
 * @type {!string}
 * @export
 */
API.Client.PositionData.prototype.symbolCoinapi;

/**
 * @type {!number}
 * @export
 */
API.Client.PositionData.prototype.avgEntryPrice;

/**
 * The current position amount in contracts.
 * @type {!number}
 * @export
 */
API.Client.PositionData.prototype.quantity;

/**
 * @type {!boolean}
 * @export
 */
API.Client.PositionData.prototype.isBuy;

/**
 * Unrealised PNL is all the unrealised profit or loss coming from your portfolio's open positions.
 * @type {!number}
 * @export
 */
API.Client.PositionData.prototype.unrealisedPnL;

/**
 * 1 / initMarginReq.
 * @type {!number}
 * @export
 */
API.Client.PositionData.prototype.leverage;

/**
 * True/false depending on whether you set cross margin on this position.
 * @type {!boolean}
 * @export
 */
API.Client.PositionData.prototype.crossMargin;

/**
 * Once markPrice reaches this price, this position will be liquidated.
 * @type {!number}
 * @export
 */
API.Client.PositionData.prototype.liquidationPrice;

/**
 * @type {!string}
 * @export
 */
API.Client.PositionData.prototype.rawData;

