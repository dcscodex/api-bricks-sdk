goog.provide('API.Client.v1.MetricInfo');

/**
 * Represents a metric information.
 * @record
 */
API.Client.V1MetricInfo = function() {}

/**
 * Gets or sets the metric identifier.
 * @type {!string}
 * @export
 */
API.Client.V1MetricInfo.prototype.metricId;

/**
 * Gets or sets the description of the metric.
 * @type {!string}
 * @export
 */
API.Client.V1MetricInfo.prototype.description;

/**
 * Gets or sets the source identifier of the metric.
 * @type {!string}
 * @export
 */
API.Client.V1MetricInfo.prototype.sourceId;

