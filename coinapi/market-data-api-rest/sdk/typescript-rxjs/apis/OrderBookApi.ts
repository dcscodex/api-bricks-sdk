// tslint:disable
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
 */

import type { Observable } from 'rxjs';
import type { AjaxResponse } from 'rxjs/ajax';
import { BaseAPI, throwIfNullOrUndefined, encodeURI } from '../runtime';
import type { OperationOpts, HttpHeaders, HttpQuery } from '../runtime';
import type {
    V1OrderBook,
    V1OrderBookBase,
    V1OrderBookDepth,
} from '../models';

export interface V1OrderbooksSymbolIdCurrentGetRequest {
    symbolId: string;
    limitLevels?: number;
}

export interface V1OrderbooksSymbolIdDepthCurrentGetRequest {
    symbolId: string;
    limitLevels?: number;
}

export interface V1OrderbooksSymbolIdHistoryGetRequest {
    symbolId: string;
    date?: string;
    timeStart?: string;
    timeEnd?: string;
    limit?: number;
    limitLevels?: number;
}

export interface V1OrderbooksSymbolIdLatestGetRequest {
    symbolId: string;
    limit?: number;
    limitLevels?: number;
}

/**
 * no description
 */
export class OrderBookApi extends BaseAPI {

    /**
     * Retrieves the current order book for the specified symbol.
     * Get current order book
     */
    v1OrderbooksSymbolIdCurrentGet({ symbolId, limitLevels }: V1OrderbooksSymbolIdCurrentGetRequest): Observable<V1OrderBookBase>
    v1OrderbooksSymbolIdCurrentGet({ symbolId, limitLevels }: V1OrderbooksSymbolIdCurrentGetRequest, opts?: OperationOpts): Observable<AjaxResponse<V1OrderBookBase>>
    v1OrderbooksSymbolIdCurrentGet({ symbolId, limitLevels }: V1OrderbooksSymbolIdCurrentGetRequest, opts?: OperationOpts): Observable<V1OrderBookBase | AjaxResponse<V1OrderBookBase>> {
        throwIfNullOrUndefined(symbolId, 'symbolId', 'v1OrderbooksSymbolIdCurrentGet');

        const headers: HttpHeaders = {
            ...(this.configuration.apiKey && { 'Authorization': this.configuration.apiKey('Authorization') }), // APIKey authentication
        };

        const query: HttpQuery = {};

        if (limitLevels != null) { query['limit_levels'] = limitLevels; }

        return this.request<V1OrderBookBase>({
            url: '/v1/orderbooks/{symbol_id}/current'.replace('{symbol_id}', encodeURI(symbolId)),
            method: 'GET',
            headers,
            query,
        }, opts?.responseOpts);
    };

    /**
     * Retrieves the current depth of the order book for the specified symbol.
     * Current depth of the order book
     */
    v1OrderbooksSymbolIdDepthCurrentGet({ symbolId, limitLevels }: V1OrderbooksSymbolIdDepthCurrentGetRequest): Observable<V1OrderBookDepth>
    v1OrderbooksSymbolIdDepthCurrentGet({ symbolId, limitLevels }: V1OrderbooksSymbolIdDepthCurrentGetRequest, opts?: OperationOpts): Observable<AjaxResponse<V1OrderBookDepth>>
    v1OrderbooksSymbolIdDepthCurrentGet({ symbolId, limitLevels }: V1OrderbooksSymbolIdDepthCurrentGetRequest, opts?: OperationOpts): Observable<V1OrderBookDepth | AjaxResponse<V1OrderBookDepth>> {
        throwIfNullOrUndefined(symbolId, 'symbolId', 'v1OrderbooksSymbolIdDepthCurrentGet');

        const headers: HttpHeaders = {
            ...(this.configuration.apiKey && { 'Authorization': this.configuration.apiKey('Authorization') }), // APIKey authentication
        };

        const query: HttpQuery = {};

        if (limitLevels != null) { query['limit_levels'] = limitLevels; }

        return this.request<V1OrderBookDepth>({
            url: '/v1/orderbooks/{symbol_id}/depth/current'.replace('{symbol_id}', encodeURI(symbolId)),
            method: 'GET',
            headers,
            query,
        }, opts?.responseOpts);
    };

    /**
     * Get historical order book snapshots for a specific symbol within time range, returned in time ascending order.              :::info The historical order book data via the REST API is currently limited by a number of updates and to the maximum number of 20 levels. :::  :::warning The \'time_start\' and \'time_end\' parameters must be from the same day as this endpoint provides intraday data only for specific day. Please use the \'date\' parameter instead for querying data for a specific day without filter. :::
     * Historical data
     */
    v1OrderbooksSymbolIdHistoryGet({ symbolId, date, timeStart, timeEnd, limit, limitLevels }: V1OrderbooksSymbolIdHistoryGetRequest): Observable<Array<V1OrderBook>>
    v1OrderbooksSymbolIdHistoryGet({ symbolId, date, timeStart, timeEnd, limit, limitLevels }: V1OrderbooksSymbolIdHistoryGetRequest, opts?: OperationOpts): Observable<AjaxResponse<Array<V1OrderBook>>>
    v1OrderbooksSymbolIdHistoryGet({ symbolId, date, timeStart, timeEnd, limit, limitLevels }: V1OrderbooksSymbolIdHistoryGetRequest, opts?: OperationOpts): Observable<Array<V1OrderBook> | AjaxResponse<Array<V1OrderBook>>> {
        throwIfNullOrUndefined(symbolId, 'symbolId', 'v1OrderbooksSymbolIdHistoryGet');

        const headers: HttpHeaders = {
            ...(this.configuration.apiKey && { 'Authorization': this.configuration.apiKey('Authorization') }), // APIKey authentication
        };

        const query: HttpQuery = {};

        if (date != null) { query['date'] = date; }
        if (timeStart != null) { query['time_start'] = timeStart; }
        if (timeEnd != null) { query['time_end'] = timeEnd; }
        if (limit != null) { query['limit'] = limit; }
        if (limitLevels != null) { query['limit_levels'] = limitLevels; }

        return this.request<Array<V1OrderBook>>({
            url: '/v1/orderbooks/{symbol_id}/history'.replace('{symbol_id}', encodeURI(symbolId)),
            method: 'GET',
            headers,
            query,
        }, opts?.responseOpts);
    };

    /**
     * Get latest order book snapshots for a specific symbol, returned in time descending order.              :::info The historical order book data via the REST API is currently limited by a number of updates and to the maximum number of 20 levels. :::
     * Latest data
     */
    v1OrderbooksSymbolIdLatestGet({ symbolId, limit, limitLevels }: V1OrderbooksSymbolIdLatestGetRequest): Observable<Array<V1OrderBook>>
    v1OrderbooksSymbolIdLatestGet({ symbolId, limit, limitLevels }: V1OrderbooksSymbolIdLatestGetRequest, opts?: OperationOpts): Observable<AjaxResponse<Array<V1OrderBook>>>
    v1OrderbooksSymbolIdLatestGet({ symbolId, limit, limitLevels }: V1OrderbooksSymbolIdLatestGetRequest, opts?: OperationOpts): Observable<Array<V1OrderBook> | AjaxResponse<Array<V1OrderBook>>> {
        throwIfNullOrUndefined(symbolId, 'symbolId', 'v1OrderbooksSymbolIdLatestGet');

        const headers: HttpHeaders = {
            ...(this.configuration.apiKey && { 'Authorization': this.configuration.apiKey('Authorization') }), // APIKey authentication
        };

        const query: HttpQuery = {};

        if (limit != null) { query['limit'] = limit; }
        if (limitLevels != null) { query['limit_levels'] = limitLevels; }

        return this.request<Array<V1OrderBook>>({
            url: '/v1/orderbooks/{symbol_id}/latest'.replace('{symbol_id}', encodeURI(symbolId)),
            method: 'GET',
            headers,
            query,
        }, opts?.responseOpts);
    };

}
