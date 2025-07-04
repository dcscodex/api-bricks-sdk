/**
 * CoinAPI Indexes REST API
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


import ApiClient from "../ApiClient";
import MetadataExchange from '../model/MetadataExchange';

/**
* Metadata service.
* @module api/MetadataApi
* @version v1
*/
export default class MetadataApi {

    /**
    * Constructs a new MetadataApi. 
    * @alias module:api/MetadataApi
    * @class
    * @param {module:ApiClient} [apiClient] Optional API client implementation to use,
    * default to {@link module:ApiClient#instance} if unspecified.
    */
    constructor(apiClient) {
        this.apiClient = apiClient || ApiClient.instance;
    }


    /**
     * Callback function to receive the result of the apiMetadataExchangesExchangeIdGet operation.
     * @callback module:api/MetadataApi~apiMetadataExchangesExchangeIdGetCallback
     * @param {String} error Error message, if any.
     * @param {Array.<module:model/MetadataExchange>} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * List all exchanges by exchange_id
     * @param {String} exchangeId The ID of the exchange.
     * @param {module:api/MetadataApi~apiMetadataExchangesExchangeIdGetCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link Array.<module:model/MetadataExchange>}
     */
    apiMetadataExchangesExchangeIdGet(exchangeId, callback) {
      let postBody = null;
      // verify the required parameter 'exchangeId' is set
      if (exchangeId === undefined || exchangeId === null) {
        throw new Error("Missing the required parameter 'exchangeId' when calling apiMetadataExchangesExchangeIdGet");
      }

      let pathParams = {
        'exchange_id': exchangeId
      };
      let queryParams = {
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = ['APIKey', 'JWT'];
      let contentTypes = [];
      let accepts = ['text/plain', 'application/json', 'text/json', 'application/x-msgpack'];
      let returnType = [MetadataExchange];
      return this.apiClient.callApi(
        '/api/metadata/exchanges/{exchange_id}', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the apiMetadataExchangesGet operation.
     * @callback module:api/MetadataApi~apiMetadataExchangesGetCallback
     * @param {String} error Error message, if any.
     * @param {Array.<module:model/MetadataExchange>} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * List all exchanges
     * Get a detailed list of exchanges provided by the system.              :::info Properties of the output are providing aggregated information from across all symbols related to the specific exchange. If you need to calculate your aggregation (e.g., limiting only the particular type of symbols), you should use /v1/symbols endpoint as a data source. :::
     * @param {Object} opts Optional parameters
     * @param {String} [filterExchangeId] Comma or semicolon delimited exchange identifiers used to filter response. (optional, eg. `BITSTAMP;GEMINI`)
     * @param {module:api/MetadataApi~apiMetadataExchangesGetCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link Array.<module:model/MetadataExchange>}
     */
    apiMetadataExchangesGet(opts, callback) {
      opts = opts || {};
      let postBody = null;

      let pathParams = {
      };
      let queryParams = {
        'filter_exchange_id': opts['filterExchangeId']
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = ['APIKey', 'JWT'];
      let contentTypes = [];
      let accepts = ['text/plain', 'application/json', 'text/json', 'application/x-msgpack'];
      let returnType = [MetadataExchange];
      return this.apiClient.callApi(
        '/api/metadata/exchanges', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }


}
