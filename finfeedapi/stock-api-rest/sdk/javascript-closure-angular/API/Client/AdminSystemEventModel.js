goog.provide('API.Client.Admin.SystemEventModel');

/**
 * Represents the response DTO for system event information
 * @record
 */
API.Client.AdminSystemEventModel = function() {}

/**
 * Original timestamp in nanoseconds since epoch
 * @type {!number}
 * @export
 */
API.Client.AdminSystemEventModel.prototype.timestampNanos;

/**
 * Time when the system event was recorded as DateTime
 * @type {!Date}
 * @export
 */
API.Client.AdminSystemEventModel.prototype.timestamp;

/**
 * System event as byte value
 * @type {!number}
 * @export
 */
API.Client.AdminSystemEventModel.prototype.systemEvent;

/**
 * System event as string
 * @type {!string}
 * @export
 */
API.Client.AdminSystemEventModel.prototype.systemEventCode;

/**
 * Human-readable description of the system event
 * @type {!string}
 * @export
 */
API.Client.AdminSystemEventModel.prototype.systemEventText;

/**
 * Indicates if the system event is 'Start of Messages' (O). Outside of heartbeat messages on the lower level protocol,  the start of day message is the first message sent in any trading session.
 * @type {!boolean}
 * @export
 */
API.Client.AdminSystemEventModel.prototype.isSystemEventStartOfMessages;

/**
 * Indicates if the system event is 'Start of System Hours' (S). This message indicates that IEX is open and ready to start accepting orders.
 * @type {!boolean}
 * @export
 */
API.Client.AdminSystemEventModel.prototype.isSystemEventStartOfSystemHours;

/**
 * Indicates if the system event is 'Start of Regular Market Hours' (R). This message indicates that DAY and GTX orders, as well as market orders and pegged orders,  are available for execution on IEX.
 * @type {!boolean}
 * @export
 */
API.Client.AdminSystemEventModel.prototype.isSystemEventStartOfRegularMarketHours;

/**
 * Indicates if the system event is 'End of Regular Market Hours' (M). This message indicates that DAY orders, market orders, and pegged orders  are no longer accepted by IEX.
 * @type {!boolean}
 * @export
 */
API.Client.AdminSystemEventModel.prototype.isSystemEventEndOfRegularMarketHours;

/**
 * Indicates if the system event is 'End of System Hours' (E). This message indicates that IEX is now closed and will not accept  any new orders during this trading session. It is still possible  to receive messages after the end of day.
 * @type {!boolean}
 * @export
 */
API.Client.AdminSystemEventModel.prototype.isSystemEventEndOfSystemHours;

/**
 * Indicates if the system event is 'End of Messages' (C). This is always the last message sent in any trading session.
 * @type {!boolean}
 * @export
 */
API.Client.AdminSystemEventModel.prototype.isSystemEventEndOfMessages;

