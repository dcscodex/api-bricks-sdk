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


import ApiClient from "../ApiClient";
import V1OrderBook from '../model/V1OrderBook';
import V1OrderBookBase from '../model/V1OrderBookBase';
import V1OrderBookDepth from '../model/V1OrderBookDepth';

/**
* OrderBook service.
* @module api/OrderBookApi
* @version v1
*/
export default class OrderBookApi {

    /**
    * Constructs a new OrderBookApi. 
    * @alias module:api/OrderBookApi
    * @class
    * @param {module:ApiClient} [apiClient] Optional API client implementation to use,
    * default to {@link module:ApiClient#instance} if unspecified.
    */
    constructor(apiClient) {
        this.apiClient = apiClient || ApiClient.instance;
    }


    /**
     * Callback function to receive the result of the v1OrderbooksSymbolIdCurrentGet operation.
     * @callback module:api/OrderBookApi~v1OrderbooksSymbolIdCurrentGetCallback
     * @param {String} error Error message, if any.
     * @param {module:model/V1OrderBookBase} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Get current order book
     * Retrieves the current order book for the specified symbol.
     * @param {String} symbolId The symbol ID (from the Metadata -> Symbols)
     * @param {Object} opts Optional parameters
     * @param {Number} [limitLevels] The maximum number of levels to include in the response.
     * @param {module:api/OrderBookApi~v1OrderbooksSymbolIdCurrentGetCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:model/V1OrderBookBase}
     */
    v1OrderbooksSymbolIdCurrentGet(symbolId, opts, callback) {
      opts = opts || {};
      let postBody = null;
      // verify the required parameter 'symbolId' is set
      if (symbolId === undefined || symbolId === null) {
        throw new Error("Missing the required parameter 'symbolId' when calling v1OrderbooksSymbolIdCurrentGet");
      }

      let pathParams = {
        'symbol_id': symbolId
      };
      let queryParams = {
        'limit_levels': opts['limitLevels']
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = ['APIKey', 'JWT'];
      let contentTypes = [];
      let accepts = ['text/plain', 'application/json', 'text/json', 'application/x-msgpack'];
      let returnType = V1OrderBookBase;
      return this.apiClient.callApi(
        '/v1/orderbooks/{symbol_id}/current', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the v1OrderbooksSymbolIdDepthCurrentGet operation.
     * @callback module:api/OrderBookApi~v1OrderbooksSymbolIdDepthCurrentGetCallback
     * @param {String} error Error message, if any.
     * @param {module:model/V1OrderBookDepth} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Current depth of the order book
     * Retrieves the current depth of the order book for the specified symbol.
     * @param {String} symbolId The symbol ID (from the Metadata -> Symbols)
     * @param {Object} opts Optional parameters
     * @param {Number} [limitLevels] The maximum number of levels to include in the response.
     * @param {module:api/OrderBookApi~v1OrderbooksSymbolIdDepthCurrentGetCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:model/V1OrderBookDepth}
     */
    v1OrderbooksSymbolIdDepthCurrentGet(symbolId, opts, callback) {
      opts = opts || {};
      let postBody = null;
      // verify the required parameter 'symbolId' is set
      if (symbolId === undefined || symbolId === null) {
        throw new Error("Missing the required parameter 'symbolId' when calling v1OrderbooksSymbolIdDepthCurrentGet");
      }

      let pathParams = {
        'symbol_id': symbolId
      };
      let queryParams = {
        'limit_levels': opts['limitLevels']
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = ['APIKey', 'JWT'];
      let contentTypes = [];
      let accepts = ['text/plain', 'application/json', 'text/json', 'application/x-msgpack'];
      let returnType = V1OrderBookDepth;
      return this.apiClient.callApi(
        '/v1/orderbooks/{symbol_id}/depth/current', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the v1OrderbooksSymbolIdHistoryGet operation.
     * @callback module:api/OrderBookApi~v1OrderbooksSymbolIdHistoryGetCallback
     * @param {String} error Error message, if any.
     * @param {Array.<module:model/V1OrderBook>} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Historical data
     * Get historical order book snapshots for a specific symbol within time range, returned in time ascending order.              :::info The historical order book data via the REST API is currently limited by a number of updates and to the maximum number of 20 levels. :::  :::warning The 'time_start' and 'time_end' parameters must be from the same day as this endpoint provides intraday data only for specific day. Please use the 'date' parameter instead for querying data for a specific day without filter. :::
     * @param {String} symbolId Symbol identifier for requested timeseries (from the Metadata -> Symbols)
     * @param {Object} opts Optional parameters
     * @param {String} [date] Date in ISO 8601, returned data is for the whole given day (preferred method, required if 'time_start' is not provided)
     * @param {String} [timeStart] Starting time in ISO 8601 (deprecated, use 'date' instead)
     * @param {String} [timeEnd] Timeseries ending time in ISO 8601 (deprecated, use 'date' instead)
     * @param {Number} [limit = 100)] Amount of items to return (optional, minimum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
     * @param {Number} [limitLevels] Maximum amount of levels from each side of the book to include in response (optional)
     * @param {module:api/OrderBookApi~v1OrderbooksSymbolIdHistoryGetCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link Array.<module:model/V1OrderBook>}
     */
    v1OrderbooksSymbolIdHistoryGet(symbolId, opts, callback) {
      opts = opts || {};
      let postBody = null;
      // verify the required parameter 'symbolId' is set
      if (symbolId === undefined || symbolId === null) {
        throw new Error("Missing the required parameter 'symbolId' when calling v1OrderbooksSymbolIdHistoryGet");
      }

      let pathParams = {
        'symbol_id': symbolId
      };
      let queryParams = {
        'date': opts['date'],
        'time_start': opts['timeStart'],
        'time_end': opts['timeEnd'],
        'limit': opts['limit'],
        'limit_levels': opts['limitLevels']
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = ['APIKey', 'JWT'];
      let contentTypes = [];
      let accepts = ['text/plain', 'application/json', 'text/json', 'application/x-msgpack'];
      let returnType = [V1OrderBook];
      return this.apiClient.callApi(
        '/v1/orderbooks/{symbol_id}/history', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the v1OrderbooksSymbolIdLatestGet operation.
     * @callback module:api/OrderBookApi~v1OrderbooksSymbolIdLatestGetCallback
     * @param {String} error Error message, if any.
     * @param {Array.<module:model/V1OrderBook>} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Latest data
     * Get latest order book snapshots for a specific symbol, returned in time descending order.              :::info The historical order book data via the REST API is currently limited by a number of updates and to the maximum number of 20 levels. :::
     * @param {String} symbolId Symbol identifier of requested timeseries (from the Metadata -> Symbols)
     * @param {Object} opts Optional parameters
     * @param {Number} [limit = 100)] Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
     * @param {Number} [limitLevels] Maximum amount of levels from each side of the book to include in response (optional)
     * @param {module:api/OrderBookApi~v1OrderbooksSymbolIdLatestGetCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link Array.<module:model/V1OrderBook>}
     */
    v1OrderbooksSymbolIdLatestGet(symbolId, opts, callback) {
      opts = opts || {};
      let postBody = null;
      // verify the required parameter 'symbolId' is set
      if (symbolId === undefined || symbolId === null) {
        throw new Error("Missing the required parameter 'symbolId' when calling v1OrderbooksSymbolIdLatestGet");
      }

      let pathParams = {
        'symbol_id': symbolId
      };
      let queryParams = {
        'limit': opts['limit'],
        'limit_levels': opts['limitLevels']
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = ['APIKey', 'JWT'];
      let contentTypes = [];
      let accepts = ['text/plain', 'application/json', 'text/json', 'application/x-msgpack'];
      let returnType = [V1OrderBook];
      return this.apiClient.callApi(
        '/v1/orderbooks/{symbol_id}/latest', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }


}
