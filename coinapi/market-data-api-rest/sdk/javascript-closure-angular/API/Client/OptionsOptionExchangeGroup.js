goog.provide('API.Client.Options.OptionExchangeGroup');

/**
 * Represents an option exchange group data model.
 * @record
 */
API.Client.OptionsOptionExchangeGroup = function() {}

/**
 * The base asset identifier.
 * @type {!string}
 * @export
 */
API.Client.OptionsOptionExchangeGroup.prototype.assetIdBase;

/**
 * The quote asset identifier.
 * @type {!string}
 * @export
 */
API.Client.OptionsOptionExchangeGroup.prototype.assetIdQuote;

/**
 * The underlying price of the option.
 * @type {!number}
 * @export
 */
API.Client.OptionsOptionExchangeGroup.prototype.underlyingPrice;

/**
 * The expiration time of the option.
 * @type {!Date}
 * @export
 */
API.Client.OptionsOptionExchangeGroup.prototype.timeExpiration;

/**
 * The list of strikes available.
 * @type {!Array<!API.Client.Options.Strike>}
 * @export
 */
API.Client.OptionsOptionExchangeGroup.prototype.strikes;

