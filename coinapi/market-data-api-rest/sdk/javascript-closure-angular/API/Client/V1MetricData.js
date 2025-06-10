goog.provide('API.Client.v1.MetricData');

/**
 * Represents a data model for metric data.
 * @record
 */
API.Client.V1MetricData = function() {}

/**
 * Gets or sets the symbol id.
 * @type {!string}
 * @export
 */
API.Client.V1MetricData.prototype.symbolId;

/**
 * Gets or sets the time at which the value is recorded.
 * @type {!Date}
 * @export
 */
API.Client.V1MetricData.prototype.time;

/**
 * Gets or sets the value of the metric.
 * @type {!number}
 * @export
 */
API.Client.V1MetricData.prototype.value;

