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
 * The V1MetricData model module.
 * @module model/V1MetricData
 * @version v1
 */
class V1MetricData {
    /**
     * Constructs a new <code>V1MetricData</code>.
     * Represents a data model for metric data.
     * @alias module:model/V1MetricData
     */
    constructor() { 
        
        V1MetricData.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>V1MetricData</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/V1MetricData} obj Optional instance to populate.
     * @return {module:model/V1MetricData} The populated <code>V1MetricData</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new V1MetricData();

            if (data.hasOwnProperty('symbol_id')) {
                obj['symbol_id'] = ApiClient.convertToType(data['symbol_id'], 'String');
            }
            if (data.hasOwnProperty('time')) {
                obj['time'] = ApiClient.convertToType(data['time'], 'Date');
            }
            if (data.hasOwnProperty('value')) {
                obj['value'] = ApiClient.convertToType(data['value'], 'Number');
            }
        }
        return obj;
    }

    /**
     * Validates the JSON data with respect to <code>V1MetricData</code>.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @return {boolean} to indicate whether the JSON data is valid with respect to <code>V1MetricData</code>.
     */
    static validateJSON(data) {
        // ensure the json data is a string
        if (data['symbol_id'] && !(typeof data['symbol_id'] === 'string' || data['symbol_id'] instanceof String)) {
            throw new Error("Expected the field `symbol_id` to be a primitive type in the JSON string but got " + data['symbol_id']);
        }

        return true;
    }


}



/**
 * Gets or sets the symbol id.
 * @member {String} symbol_id
 */
V1MetricData.prototype['symbol_id'] = undefined;

/**
 * Gets or sets the time at which the value is recorded.
 * @member {Date} time
 */
V1MetricData.prototype['time'] = undefined;

/**
 * Gets or sets the value of the metric.
 * @member {Number} value
 */
V1MetricData.prototype['value'] = undefined;






export default V1MetricData;

