goog.provide('API.Client.v1.ChainNetworkAddress');

/**
 * Contains information about assets' chain network addresses
 * @record
 */
API.Client.V1ChainNetworkAddress = function() {}

/**
 * Gets or sets chain id
 * @type {!string}
 * @export
 */
API.Client.V1ChainNetworkAddress.prototype.chainId;

/**
 * Gets or sets network id
 * @type {!string}
 * @export
 */
API.Client.V1ChainNetworkAddress.prototype.networkId;

/**
 * Gets or sets chain address
 * @type {!string}
 * @export
 */
API.Client.V1ChainNetworkAddress.prototype.address;

