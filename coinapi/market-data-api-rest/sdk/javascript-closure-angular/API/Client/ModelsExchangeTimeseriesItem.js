goog.provide('API.Client.Models.ExchangeTimeseriesItem');

/**
 * Represents a timeseries item with price and volume information.
 * @record
 */
API.Client.ModelsExchangeTimeseriesItem = function() {}

/**
 * The start time of the time period.
 * @type {!Date}
 * @export
 */
API.Client.ModelsExchangeTimeseriesItem.prototype.timePeriodStart;

/**
 * The end time of the time period.
 * @type {!Date}
 * @export
 */
API.Client.ModelsExchangeTimeseriesItem.prototype.timePeriodEnd;

/**
 * The time when the price opened.
 * @type {!Date}
 * @export
 */
API.Client.ModelsExchangeTimeseriesItem.prototype.timeOpen;

/**
 * The time when the price closed.
 * @type {!Date}
 * @export
 */
API.Client.ModelsExchangeTimeseriesItem.prototype.timeClose;

/**
 * The opening price.
 * @type {!number}
 * @export
 */
API.Client.ModelsExchangeTimeseriesItem.prototype.priceOpen;

/**
 * The highest price during the time period.
 * @type {!number}
 * @export
 */
API.Client.ModelsExchangeTimeseriesItem.prototype.priceHigh;

/**
 * The lowest price during the time period.
 * @type {!number}
 * @export
 */
API.Client.ModelsExchangeTimeseriesItem.prototype.priceLow;

/**
 * The closing price.
 * @type {!number}
 * @export
 */
API.Client.ModelsExchangeTimeseriesItem.prototype.priceClose;

/**
 * The total volume traded during the time period.
 * @type {!number}
 * @export
 */
API.Client.ModelsExchangeTimeseriesItem.prototype.volumeTraded;

/**
 * The number of trades executed during the time period.
 * @type {!number}
 * @export
 */
API.Client.ModelsExchangeTimeseriesItem.prototype.tradesCount;

/**
 * @type {!string}
 * @export
 */
API.Client.ModelsExchangeTimeseriesItem.prototype.symbolIdExchange;

/**
 * @type {!string}
 * @export
 */
API.Client.ModelsExchangeTimeseriesItem.prototype.symbolIdCoinapi;

