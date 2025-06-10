goog.provide('API.Client.Options.Strike');

/**
 * Represents a strike within the option exchange group.
 * @record
 */
API.Client.OptionsStrike = function() {}

/**
 * The strike price.
 * @type {!number}
 * @export
 */
API.Client.OptionsStrike.prototype.strikePrice;

/**
 * @type {!API.Client.v1.QuoteTrade}
 * @export
 */
API.Client.OptionsStrike.prototype.call;

/**
 * @type {!API.Client.v1.QuoteTrade}
 * @export
 */
API.Client.OptionsStrike.prototype.put;

