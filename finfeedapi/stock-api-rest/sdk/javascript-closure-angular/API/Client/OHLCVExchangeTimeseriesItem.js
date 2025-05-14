goog.provide('API.Client.OHLCV.ExchangeTimeseriesItem');

/**
 * Represents a timeseries item with price and volume information.
 * @record
 */
API.Client.OHLCVExchangeTimeseriesItem = function() {}

/**
 * Gets or sets the start time of the time period.
 * @type {!Date}
 * @export
 */
API.Client.OHLCVExchangeTimeseriesItem.prototype.timePeriodStart;

/**
 * Gets or sets the end time of the time period.
 * @type {!Date}
 * @export
 */
API.Client.OHLCVExchangeTimeseriesItem.prototype.timePeriodEnd;

/**
 * Gets or sets the time when the price opened.
 * @type {!Date}
 * @export
 */
API.Client.OHLCVExchangeTimeseriesItem.prototype.timeOpen;

/**
 * Gets or sets the time when the price closed.
 * @type {!Date}
 * @export
 */
API.Client.OHLCVExchangeTimeseriesItem.prototype.timeClose;

/**
 * Gets or sets the opening price.
 * @type {!number}
 * @export
 */
API.Client.OHLCVExchangeTimeseriesItem.prototype.priceOpen;

/**
 * Gets or sets the highest price during the time period.
 * @type {!number}
 * @export
 */
API.Client.OHLCVExchangeTimeseriesItem.prototype.priceHigh;

/**
 * Gets or sets the lowest price during the time period.
 * @type {!number}
 * @export
 */
API.Client.OHLCVExchangeTimeseriesItem.prototype.priceLow;

/**
 * Gets or sets the closing price.
 * @type {!number}
 * @export
 */
API.Client.OHLCVExchangeTimeseriesItem.prototype.priceClose;

/**
 * Gets or sets the total volume traded during the time period.
 * @type {!number}
 * @export
 */
API.Client.OHLCVExchangeTimeseriesItem.prototype.volumeTraded;

/**
 * Gets or sets the number of trades executed during the time period.
 * @type {!number}
 * @export
 */
API.Client.OHLCVExchangeTimeseriesItem.prototype.tradesCount;

/**
 * @type {!string}
 * @export
 */
API.Client.OHLCVExchangeTimeseriesItem.prototype.symbolIdExchange;

