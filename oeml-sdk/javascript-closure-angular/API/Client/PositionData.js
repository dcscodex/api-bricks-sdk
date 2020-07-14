goog.provide('API.Client.Position_data');

/**
 * The Position object.
 * @record
 */
API.Client.PositionData = function() {}

/**
 * Exchange symbol.
 * @type {!string}
 * @export
 */
API.Client.PositionData.prototype.symbolIdExchange;

/**
 * CoinAPI symbol.
 * @type {!string}
 * @export
 */
API.Client.PositionData.prototype.symbolIdCoinapi;

/**
 * Calculated average price of all fills on this position.
 * @type {!number}
 * @export
 */
API.Client.PositionData.prototype.avgEntryPrice;

/**
 * The current position quantity.
 * @type {!number}
 * @export
 */
API.Client.PositionData.prototype.quantity;

/**
 * @type {!API.Client.OrdSide}
 * @export
 */
API.Client.PositionData.prototype.side;

/**
 * Unrealised profit or loss (PNL) of this position.
 * @type {!number}
 * @export
 */
API.Client.PositionData.prototype.unrealizedPnl;

/**
 * Leverage for this position reported by the exchange.
 * @type {!number}
 * @export
 */
API.Client.PositionData.prototype.leverage;

/**
 * Is cross margin mode enable for this position?
 * @type {!boolean}
 * @export
 */
API.Client.PositionData.prototype.crossMargin;

/**
 * Liquidation price. If mark price will reach this value, the position will be liquidated.
 * @type {!number}
 * @export
 */
API.Client.PositionData.prototype.liquidationPrice;

/**
 * @type {!API.Client.Object}
 * @export
 */
API.Client.PositionData.prototype.rawData;

