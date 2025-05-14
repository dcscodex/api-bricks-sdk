goog.provide('API.Client.Level3.ClearBookModel');

/**
 * Represents the response DTO for clear book information
 * @record
 */
API.Client.Level3ClearBookModel = function() {}

/**
 * The stock symbol
 * @type {!string}
 * @export
 */
API.Client.Level3ClearBookModel.prototype.symbol;

/**
 * Original timestamp in nanoseconds since epoch
 * @type {!number}
 * @export
 */
API.Client.Level3ClearBookModel.prototype.timestampNanos;

/**
 * Time when the book was cleared as DateTime
 * @type {!Date}
 * @export
 */
API.Client.Level3ClearBookModel.prototype.timestamp;

