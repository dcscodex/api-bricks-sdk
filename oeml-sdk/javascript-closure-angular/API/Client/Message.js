goog.provide('API.Client.Message');

/**
 * @record
 */
API.Client.Message = function() {}

/**
 * Type of message.
 * @type {!string}
 * @export
 */
API.Client.Message.prototype.type;

/**
 * @type {!API.Client.Severity}
 * @export
 */
API.Client.Message.prototype.severity;

/**
 * If the message related to exchange, then the identifier of the exchange will be provided.
 * @type {!string}
 * @export
 */
API.Client.Message.prototype.exchangeId;

/**
 * Message text.
 * @type {!string}
 * @export
 */
API.Client.Message.prototype.message;

