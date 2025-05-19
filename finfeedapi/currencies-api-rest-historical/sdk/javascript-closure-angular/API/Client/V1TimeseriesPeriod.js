goog.provide('API.Client.v1.TimeseriesPeriod');

/**
 * Represents a timeseries period used in exchange rate data.
 * @record
 */
API.Client.V1TimeseriesPeriod = function() {}

/**
 * The period ID.
 * @type {!string}
 * @export
 */
API.Client.V1TimeseriesPeriod.prototype.periodId;

/**
 * The length of the period in seconds.
 * @type {!number}
 * @export
 */
API.Client.V1TimeseriesPeriod.prototype.lengthSeconds;

/**
 * The length of the period in months.
 * @type {!number}
 * @export
 */
API.Client.V1TimeseriesPeriod.prototype.lengthMonths;

/**
 * The unit count.
 * @type {!number}
 * @export
 */
API.Client.V1TimeseriesPeriod.prototype.unitCount;

/**
 * The unit name.
 * @type {!string}
 * @export
 */
API.Client.V1TimeseriesPeriod.prototype.unitName;

/**
 * The display name of the timeseries period.
 * @type {!string}
 * @export
 */
API.Client.V1TimeseriesPeriod.prototype.displayName;

