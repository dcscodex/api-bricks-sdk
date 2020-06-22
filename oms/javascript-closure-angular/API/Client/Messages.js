goog.provide('API.Client.messages');

/**
 * @record
 */
API.Client.Messages = function() {}

/**
 * Type of message
 * @type {!string}
 * @export
 */
API.Client.Messages.prototype.type;

/**
 * Exchange name
 * @type {!string}
 * @export
 */
API.Client.Messages.prototype.exchangeId;

/**
 * Message
 * @type {!string}
 * @export
 */
API.Client.Messages.prototype.message;

