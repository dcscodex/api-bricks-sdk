goog.provide('API.Client.Admin.SecurityEventModel');

/**
 * Represents the response DTO for security event information
 * @record
 */
API.Client.AdminSecurityEventModel = function() {}

/**
 * The stock symbol
 * @type {!string}
 * @export
 */
API.Client.AdminSecurityEventModel.prototype.symbol;

/**
 * Original timestamp in nanoseconds since epoch
 * @type {!number}
 * @export
 */
API.Client.AdminSecurityEventModel.prototype.timestampNanos;

/**
 * Time when the security event was recorded as DateTime
 * @type {!Date}
 * @export
 */
API.Client.AdminSecurityEventModel.prototype.timestamp;

/**
 * Security event as byte value
 * @type {!number}
 * @export
 */
API.Client.AdminSecurityEventModel.prototype.securityEvent;

/**
 * Security event as character string ('O' or 'C')
 * @type {!string}
 * @export
 */
API.Client.AdminSecurityEventModel.prototype.securityEventCode;

/**
 * Human-readable description of the security event
 * @type {!string}
 * @export
 */
API.Client.AdminSecurityEventModel.prototype.securityEventText;

/**
 * Indicates if the security event is 'Opening Process Complete' ('O'/0x4f).
 * @type {!boolean}
 * @export
 */
API.Client.AdminSecurityEventModel.prototype.isOpeningProcessComplete;

/**
 * Indicates if the security event is 'Closing Process Complete' ('C'/0x43).
 * @type {!boolean}
 * @export
 */
API.Client.AdminSecurityEventModel.prototype.isClosingProcessComplete;

