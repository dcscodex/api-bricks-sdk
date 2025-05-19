goog.provide('API.Client.Metadata.TimeseriesPeriod');

/**
 * Represents a timeseries period used in exchange rate data.
 * @record
 */
API.Client.MetadataTimeseriesPeriod = function() {}

/**
 * Gets or sets the period ID.
 * @type {!string}
 * @export
 */
API.Client.MetadataTimeseriesPeriod.prototype.periodId;

/**
 * Gets or sets the length of the period in seconds.
 * @type {!number}
 * @export
 */
API.Client.MetadataTimeseriesPeriod.prototype.lengthSeconds;

/**
 * Gets or sets the length of the period in months.
 * @type {!number}
 * @export
 */
API.Client.MetadataTimeseriesPeriod.prototype.lengthMonths;

/**
 * Gets or sets the unit count.
 * @type {!number}
 * @export
 */
API.Client.MetadataTimeseriesPeriod.prototype.unitCount;

/**
 * Gets or sets the unit name.
 * @type {!string}
 * @export
 */
API.Client.MetadataTimeseriesPeriod.prototype.unitName;

/**
 * Gets or sets the display name of the timeseries period.
 * @type {!string}
 * @export
 */
API.Client.MetadataTimeseriesPeriod.prototype.displayName;

