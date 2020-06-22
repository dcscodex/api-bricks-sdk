goog.provide('API.Client.messagesInfo');

/**
 * @record
 */
API.Client.MessagesInfo = function() {}

/**
 * Type of message
 * @type {!string}
 * @export
 */
API.Client.MessagesInfo.prototype.type;

/**
 * Exchange name
 * @type {!string}
 * @export
 */
API.Client.MessagesInfo.prototype.exchangeId;

/**
 * Error message
 * @type {!string}
 * @export
 */
API.Client.MessagesInfo.prototype.errorMessage;

