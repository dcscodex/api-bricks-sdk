goog.provide('API.Client.v1.GeneralData');

/**
 * Class representation of general metric data. This class is an XML type with name 'general_data' and inherits from the BaseCsvModel class.
 * @record
 */
API.Client.V1GeneralData = function() {}

/**
 * Gets or sets the entry time for the data point.
 * @type {!Date}
 * @export
 */
API.Client.V1GeneralData.prototype.entryTime;

/**
 * Gets or sets the received time for the data point.
 * @type {!Date}
 * @export
 */
API.Client.V1GeneralData.prototype.recvTime;

/**
 * Gets or sets the identifier for the exchange.
 * @type {!string}
 * @export
 */
API.Client.V1GeneralData.prototype.exchangeId;

/**
 * Gets or sets the identifier for the asset.
 * @type {!string}
 * @export
 */
API.Client.V1GeneralData.prototype.assetId;

/**
 * Gets or sets the identifier for the symbol.
 * @type {!string}
 * @export
 */
API.Client.V1GeneralData.prototype.symbolId;

/**
 * Gets or sets the identifier for the metric.
 * @type {!string}
 * @export
 */
API.Client.V1GeneralData.prototype.metricId;

/**
 * Gets or sets the decimal value for the metric.
 * @type {!number}
 * @export
 */
API.Client.V1GeneralData.prototype.valueDecimal;

/**
 * Gets or sets the textual representation of the value for the metric.
 * @type {!string}
 * @export
 */
API.Client.V1GeneralData.prototype.valueText;

/**
 * Gets or sets the timestamp value for the metric.
 * @type {!Date}
 * @export
 */
API.Client.V1GeneralData.prototype.valueTime;

