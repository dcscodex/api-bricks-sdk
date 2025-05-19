goog.provide('API.Client.Indexes.IndexValue');

/**
 * @record
 */
API.Client.IndexesIndexValue = function() {}

/**
 * @type {!Date}
 * @export
 */
API.Client.IndexesIndexValue.prototype.timestamp;

/**
 * @type {!number}
 * @export
 */
API.Client.IndexesIndexValue.prototype.value;

/**
 * @type {!Array<!API.Client.Indexes.IndexValueComponent>}
 * @export
 */
API.Client.IndexesIndexValue.prototype.composition;

