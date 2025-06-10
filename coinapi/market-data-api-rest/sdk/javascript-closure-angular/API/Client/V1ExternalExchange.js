goog.provide('API.Client.v1.ExternalExchange');

/**
 * Represents an exchange with external mapping for metrics.
 * @record
 */
API.Client.V1ExternalExchange = function() {}

/**
 * Gets or sets the internal exchange identifier.
 * @type {!string}
 * @export
 */
API.Client.V1ExternalExchange.prototype.exchangeId;

/**
 * Gets or sets the external protocol name/slug.
 * @type {!string}
 * @export
 */
API.Client.V1ExternalExchange.prototype.externalName;

/**
 * Gets or sets the description of the exchange.
 * @type {!string}
 * @export
 */
API.Client.V1ExternalExchange.prototype.description;

/**
 * @type {!string}
 * @export
 */
API.Client.V1ExternalExchange.prototype.sourceId;

