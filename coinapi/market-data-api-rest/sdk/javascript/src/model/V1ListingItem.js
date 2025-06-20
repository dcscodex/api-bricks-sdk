/**
 * CoinAPI Market Data REST API
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * The version of the OpenAPI document: v1
 * Contact: support@apibricks.io
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 *
 */

import ApiClient from '../ApiClient';

/**
 * The V1ListingItem model module.
 * @module model/V1ListingItem
 * @version v1
 */
class V1ListingItem {
    /**
     * Constructs a new <code>V1ListingItem</code>.
     * Represents a listing item.
     * @alias module:model/V1ListingItem
     */
    constructor() { 
        
        V1ListingItem.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>V1ListingItem</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/V1ListingItem} obj Optional instance to populate.
     * @return {module:model/V1ListingItem} The populated <code>V1ListingItem</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new V1ListingItem();

            if (data.hasOwnProperty('metric_id')) {
                obj['metric_id'] = ApiClient.convertToType(data['metric_id'], 'String');
            }
            if (data.hasOwnProperty('symbol_id')) {
                obj['symbol_id'] = ApiClient.convertToType(data['symbol_id'], 'String');
            }
            if (data.hasOwnProperty('symbol_id_external')) {
                obj['symbol_id_external'] = ApiClient.convertToType(data['symbol_id_external'], 'String');
            }
            if (data.hasOwnProperty('exchange_id')) {
                obj['exchange_id'] = ApiClient.convertToType(data['exchange_id'], 'String');
            }
            if (data.hasOwnProperty('asset_id')) {
                obj['asset_id'] = ApiClient.convertToType(data['asset_id'], 'String');
            }
            if (data.hasOwnProperty('asset_id_external')) {
                obj['asset_id_external'] = ApiClient.convertToType(data['asset_id_external'], 'String');
            }
            if (data.hasOwnProperty('chain_id')) {
                obj['chain_id'] = ApiClient.convertToType(data['chain_id'], 'String');
            }
            if (data.hasOwnProperty('network_id')) {
                obj['network_id'] = ApiClient.convertToType(data['network_id'], 'String');
            }
        }
        return obj;
    }

    /**
     * Validates the JSON data with respect to <code>V1ListingItem</code>.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @return {boolean} to indicate whether the JSON data is valid with respect to <code>V1ListingItem</code>.
     */
    static validateJSON(data) {
        // ensure the json data is a string
        if (data['metric_id'] && !(typeof data['metric_id'] === 'string' || data['metric_id'] instanceof String)) {
            throw new Error("Expected the field `metric_id` to be a primitive type in the JSON string but got " + data['metric_id']);
        }
        // ensure the json data is a string
        if (data['symbol_id'] && !(typeof data['symbol_id'] === 'string' || data['symbol_id'] instanceof String)) {
            throw new Error("Expected the field `symbol_id` to be a primitive type in the JSON string but got " + data['symbol_id']);
        }
        // ensure the json data is a string
        if (data['symbol_id_external'] && !(typeof data['symbol_id_external'] === 'string' || data['symbol_id_external'] instanceof String)) {
            throw new Error("Expected the field `symbol_id_external` to be a primitive type in the JSON string but got " + data['symbol_id_external']);
        }
        // ensure the json data is a string
        if (data['exchange_id'] && !(typeof data['exchange_id'] === 'string' || data['exchange_id'] instanceof String)) {
            throw new Error("Expected the field `exchange_id` to be a primitive type in the JSON string but got " + data['exchange_id']);
        }
        // ensure the json data is a string
        if (data['asset_id'] && !(typeof data['asset_id'] === 'string' || data['asset_id'] instanceof String)) {
            throw new Error("Expected the field `asset_id` to be a primitive type in the JSON string but got " + data['asset_id']);
        }
        // ensure the json data is a string
        if (data['asset_id_external'] && !(typeof data['asset_id_external'] === 'string' || data['asset_id_external'] instanceof String)) {
            throw new Error("Expected the field `asset_id_external` to be a primitive type in the JSON string but got " + data['asset_id_external']);
        }
        // ensure the json data is a string
        if (data['chain_id'] && !(typeof data['chain_id'] === 'string' || data['chain_id'] instanceof String)) {
            throw new Error("Expected the field `chain_id` to be a primitive type in the JSON string but got " + data['chain_id']);
        }
        // ensure the json data is a string
        if (data['network_id'] && !(typeof data['network_id'] === 'string' || data['network_id'] instanceof String)) {
            throw new Error("Expected the field `network_id` to be a primitive type in the JSON string but got " + data['network_id']);
        }

        return true;
    }


}



/**
 * Gets or sets the metric ID.
 * @member {String} metric_id
 */
V1ListingItem.prototype['metric_id'] = undefined;

/**
 * Gets or sets the symbol ID.
 * @member {String} symbol_id
 */
V1ListingItem.prototype['symbol_id'] = undefined;

/**
 * Gets or sets the symbol ID from the exchange.
 * @member {String} symbol_id_external
 */
V1ListingItem.prototype['symbol_id_external'] = undefined;

/**
 * Gets or sets the exchange ID.
 * @member {String} exchange_id
 */
V1ListingItem.prototype['exchange_id'] = undefined;

/**
 * Gets or sets the asset ID.
 * @member {String} asset_id
 */
V1ListingItem.prototype['asset_id'] = undefined;

/**
 * Gets or sets the asset ID from the exchange.
 * @member {String} asset_id_external
 */
V1ListingItem.prototype['asset_id_external'] = undefined;

/**
 * Gets or sets the chain id.
 * @member {String} chain_id
 */
V1ListingItem.prototype['chain_id'] = undefined;

/**
 * Gets or sets the network id.
 * @member {String} network_id
 */
V1ListingItem.prototype['network_id'] = undefined;






export default V1ListingItem;

