goog.provide('API.Client.Mvc.ValidationProblemDetails');

/**
 * @record
 */
API.Client.MvcValidationProblemDetails = function() {}

/**
 * @type {!string}
 * @export
 */
API.Client.MvcValidationProblemDetails.prototype.type;

/**
 * @type {!string}
 * @export
 */
API.Client.MvcValidationProblemDetails.prototype.title;

/**
 * @type {!number}
 * @export
 */
API.Client.MvcValidationProblemDetails.prototype.status;

/**
 * @type {!string}
 * @export
 */
API.Client.MvcValidationProblemDetails.prototype.detail;

/**
 * @type {!string}
 * @export
 */
API.Client.MvcValidationProblemDetails.prototype.instance;

/**
 * @type {!Object<!string, Array<!string>>}
 * @export
 */
API.Client.MvcValidationProblemDetails.prototype.errors;

