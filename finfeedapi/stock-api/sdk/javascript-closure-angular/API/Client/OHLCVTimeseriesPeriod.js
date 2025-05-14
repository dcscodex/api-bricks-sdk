goog.provide('API.Client.OHLCV.TimeseriesPeriod');

/**
 * Represents a timeseries period used in exchange rate data.
 * @record
 */
API.Client.OHLCVTimeseriesPeriod = function() {}

/**
 * Gets or sets the period ID.
 * @type {!string}
 * @export
 */
API.Client.OHLCVTimeseriesPeriod.prototype.periodId;

/**
 * Gets or sets the length of the period in seconds.
 * @type {!number}
 * @export
 */
API.Client.OHLCVTimeseriesPeriod.prototype.lengthSeconds;

/**
 * Gets or sets the length of the period in months.
 * @type {!number}
 * @export
 */
API.Client.OHLCVTimeseriesPeriod.prototype.lengthMonths;

/**
 * Gets or sets the unit count.
 * @type {!number}
 * @export
 */
API.Client.OHLCVTimeseriesPeriod.prototype.unitCount;

/**
 * Gets or sets the unit name.
 * @type {!string}
 * @export
 */
API.Client.OHLCVTimeseriesPeriod.prototype.unitName;

/**
 * Gets or sets the display name of the timeseries period.
 * @type {!string}
 * @export
 */
API.Client.OHLCVTimeseriesPeriod.prototype.displayName;

