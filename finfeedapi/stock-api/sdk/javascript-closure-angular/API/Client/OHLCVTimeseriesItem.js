goog.provide('API.Client.OHLCV.TimeseriesItem');

/**
 * Represents a timeseries item with price and volume information.
 * @record
 */
API.Client.OHLCVTimeseriesItem = function() {}

/**
 * Gets or sets the start time of the time period.
 * @type {!Date}
 * @export
 */
API.Client.OHLCVTimeseriesItem.prototype.timePeriodStart;

/**
 * Gets or sets the end time of the time period.
 * @type {!Date}
 * @export
 */
API.Client.OHLCVTimeseriesItem.prototype.timePeriodEnd;

/**
 * Gets or sets the time when the price opened.
 * @type {!Date}
 * @export
 */
API.Client.OHLCVTimeseriesItem.prototype.timeOpen;

/**
 * Gets or sets the time when the price closed.
 * @type {!Date}
 * @export
 */
API.Client.OHLCVTimeseriesItem.prototype.timeClose;

/**
 * Gets or sets the opening price.
 * @type {!number}
 * @export
 */
API.Client.OHLCVTimeseriesItem.prototype.priceOpen;

/**
 * Gets or sets the highest price during the time period.
 * @type {!number}
 * @export
 */
API.Client.OHLCVTimeseriesItem.prototype.priceHigh;

/**
 * Gets or sets the lowest price during the time period.
 * @type {!number}
 * @export
 */
API.Client.OHLCVTimeseriesItem.prototype.priceLow;

/**
 * Gets or sets the closing price.
 * @type {!number}
 * @export
 */
API.Client.OHLCVTimeseriesItem.prototype.priceClose;

/**
 * Gets or sets the total volume traded during the time period.
 * @type {!number}
 * @export
 */
API.Client.OHLCVTimeseriesItem.prototype.volumeTraded;

/**
 * Gets or sets the number of trades executed during the time period.
 * @type {!number}
 * @export
 */
API.Client.OHLCVTimeseriesItem.prototype.tradesCount;

