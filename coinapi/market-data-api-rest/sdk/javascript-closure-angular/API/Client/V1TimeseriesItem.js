goog.provide('API.Client.v1.TimeseriesItem');

/**
 * Represents a timeseries item with price and volume information.
 * @record
 */
API.Client.V1TimeseriesItem = function() {}

/**
 * The start time of the time period.
 * @type {!Date}
 * @export
 */
API.Client.V1TimeseriesItem.prototype.timePeriodStart;

/**
 * The end time of the time period.
 * @type {!Date}
 * @export
 */
API.Client.V1TimeseriesItem.prototype.timePeriodEnd;

/**
 * The time when the price opened.
 * @type {!Date}
 * @export
 */
API.Client.V1TimeseriesItem.prototype.timeOpen;

/**
 * The time when the price closed.
 * @type {!Date}
 * @export
 */
API.Client.V1TimeseriesItem.prototype.timeClose;

/**
 * The opening price.
 * @type {!number}
 * @export
 */
API.Client.V1TimeseriesItem.prototype.priceOpen;

/**
 * The highest price during the time period.
 * @type {!number}
 * @export
 */
API.Client.V1TimeseriesItem.prototype.priceHigh;

/**
 * The lowest price during the time period.
 * @type {!number}
 * @export
 */
API.Client.V1TimeseriesItem.prototype.priceLow;

/**
 * The closing price.
 * @type {!number}
 * @export
 */
API.Client.V1TimeseriesItem.prototype.priceClose;

/**
 * The total volume traded during the time period.
 * @type {!number}
 * @export
 */
API.Client.V1TimeseriesItem.prototype.volumeTraded;

/**
 * The number of trades executed during the time period.
 * @type {!number}
 * @export
 */
API.Client.V1TimeseriesItem.prototype.tradesCount;

