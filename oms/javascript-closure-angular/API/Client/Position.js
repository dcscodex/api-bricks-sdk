goog.provide('API.Client.position');

/**
 * @record
 */
API.Client.Position = function() {}

/**
 * Result type.
 * @type {!string}
 * @export
 */
API.Client.Position.prototype.type;

/**
 * Name of exchange.
 * @type {!string}
 * @export
 */
API.Client.Position.prototype.exchangeName;

/**
 * @type {!Array<!API.Client.position_data>}
 * @export
 */
API.Client.Position.prototype.data;

