goog.provide('API.Client.v1.ExternalAsset');

/**
 * Represents an external asset with description.
 * @record
 */
API.Client.V1ExternalAsset = function() {}

/**
 * Gets or sets the asset identifier.
 * @type {!string}
 * @export
 */
API.Client.V1ExternalAsset.prototype.assetId;

/**
 * Gets or sets the description of the asset.
 * @type {!string}
 * @export
 */
API.Client.V1ExternalAsset.prototype.description;

/**
 * Gets or sets the type/category of the asset.
 * @type {!string}
 * @export
 */
API.Client.V1ExternalAsset.prototype.assetType;

