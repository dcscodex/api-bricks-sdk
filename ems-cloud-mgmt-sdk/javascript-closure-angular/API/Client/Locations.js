goog.provide('API.Client.Locations');

/**
 * @record
 */
API.Client.Locations = function() {}

/**
 * CoinAPI location identifier
 * @type {!string}
 * @export
 */
API.Client.Locations.prototype.locationId;

/**
 * Identifier of the region by the location provider
 * @type {!string}
 * @export
 */
API.Client.Locations.prototype.regionName;

/**
 * Identifier of the location provider
 * @type {!string}
 * @export
 */
API.Client.Locations.prototype.providerName;

