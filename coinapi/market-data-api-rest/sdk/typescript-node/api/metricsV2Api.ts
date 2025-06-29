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


import localVarRequest from 'request';
import http from 'http';

/* tslint:disable:no-unused-locals */
import { V1MetricInfo } from '../model/v1MetricInfo';

import { ObjectSerializer, Authentication, VoidAuth, Interceptor } from '../model/models';
import { HttpBasicAuth, HttpBearerAuth, ApiKeyAuth, OAuth } from '../model/models';

import { HttpError, RequestFile } from './apis';

let defaultBasePath = 'https://rest.coinapi.io';

// ===============================================
// This file is autogenerated - Please do not edit
// ===============================================

export enum MetricsV2ApiApiKeys {
    APIKey,
}

export class MetricsV2Api {
    protected _basePath = defaultBasePath;
    protected _defaultHeaders : any = {};
    protected _useQuerystring : boolean = false;

    protected authentications = {
        'default': <Authentication>new VoidAuth(),
        'APIKey': new ApiKeyAuth('header', 'Authorization'),
        'JWT': new HttpBearerAuth(),
    }

    protected interceptors: Interceptor[] = [];

    constructor(basePath?: string);
    constructor(basePathOrUsername: string, password?: string, basePath?: string) {
        if (password) {
            if (basePath) {
                this.basePath = basePath;
            }
        } else {
            if (basePathOrUsername) {
                this.basePath = basePathOrUsername
            }
        }
    }

    set useQuerystring(value: boolean) {
        this._useQuerystring = value;
    }

    set basePath(basePath: string) {
        this._basePath = basePath;
    }

    set defaultHeaders(defaultHeaders: any) {
        this._defaultHeaders = defaultHeaders;
    }

    get defaultHeaders() {
        return this._defaultHeaders;
    }

    get basePath() {
        return this._basePath;
    }

    public setDefaultAuthentication(auth: Authentication) {
        this.authentications.default = auth;
    }

    public setApiKey(key: MetricsV2ApiApiKeys, value: string) {
        (this.authentications as any)[MetricsV2ApiApiKeys[key]].apiKey = value;
    }

    set accessToken(accessToken: string | (() => string)) {
        this.authentications.JWT.accessToken = accessToken;
    }

    public addInterceptor(interceptor: Interceptor) {
        this.interceptors.push(interceptor);
    }

    /**
     * Get asset metrics history.
     * @summary Historical metrics for the asset
     * @param metricId Metric identifier (e.g., &#x60;TVL&#x60;, &#x60;STABLES_BRIDGED_USD&#x60;)
     * @param assetId Asset identifier (e.g., &#x60;USDC&#x60;, &#x60;USDT&#x60;)
     * @param timeStart Starting time in ISO 8601
     * @param timeEnd Ending time in ISO 8601
     * @param timeFormat If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec)
     * @param periodId Identifier of requested timeseries period (e.g. &#x60;1MIN&#x60; or &#x60;2MTH&#x60;), default value is &#x60;1MIN&#x60;
     * @param limit Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
     */
    public async v2MetricsAssetHistoryGet (metricId: string, assetId: string, timeStart?: Date, timeEnd?: Date, timeFormat?: string, periodId?: string, limit?: number, options: {headers: {[name: string]: string}} = {headers: {}}) : Promise<{ response: http.IncomingMessage; body: Array<object>;  }> {
        const localVarPath = this.basePath + '/v2/metrics/asset/history';
        let localVarQueryParameters: any = {};
        let localVarHeaderParams: any = (<any>Object).assign({}, this._defaultHeaders);
        const produces = ['text/plain', 'application/json', 'text/json', 'application/x-msgpack'];
        // give precedence to 'application/json'
        if (produces.indexOf('application/json') >= 0) {
            localVarHeaderParams.Accept = 'application/json';
        } else {
            localVarHeaderParams.Accept = produces.join(',');
        }
        let localVarFormParams: any = {};

        // verify required parameter 'metricId' is not null or undefined
        if (metricId === null || metricId === undefined) {
            throw new Error('Required parameter metricId was null or undefined when calling v2MetricsAssetHistoryGet.');
        }

        // verify required parameter 'assetId' is not null or undefined
        if (assetId === null || assetId === undefined) {
            throw new Error('Required parameter assetId was null or undefined when calling v2MetricsAssetHistoryGet.');
        }

        if (metricId !== undefined) {
            localVarQueryParameters['metric_id'] = ObjectSerializer.serialize(metricId, "string");
        }

        if (assetId !== undefined) {
            localVarQueryParameters['asset_id'] = ObjectSerializer.serialize(assetId, "string");
        }

        if (timeStart !== undefined) {
            localVarQueryParameters['time_start'] = ObjectSerializer.serialize(timeStart, "Date");
        }

        if (timeEnd !== undefined) {
            localVarQueryParameters['time_end'] = ObjectSerializer.serialize(timeEnd, "Date");
        }

        if (timeFormat !== undefined) {
            localVarQueryParameters['time_format'] = ObjectSerializer.serialize(timeFormat, "string");
        }

        if (periodId !== undefined) {
            localVarQueryParameters['period_id'] = ObjectSerializer.serialize(periodId, "string");
        }

        if (limit !== undefined) {
            localVarQueryParameters['limit'] = ObjectSerializer.serialize(limit, "number");
        }

        (<any>Object).assign(localVarHeaderParams, options.headers);

        let localVarUseFormData = false;

        let localVarRequestOptions: localVarRequest.Options = {
            method: 'GET',
            qs: localVarQueryParameters,
            headers: localVarHeaderParams,
            uri: localVarPath,
            useQuerystring: this._useQuerystring,
            json: true,
        };

        let authenticationPromise = Promise.resolve();
        if (this.authentications.APIKey.apiKey) {
            authenticationPromise = authenticationPromise.then(() => this.authentications.APIKey.applyToRequest(localVarRequestOptions));
        }
        if (this.authentications.JWT.accessToken) {
            authenticationPromise = authenticationPromise.then(() => this.authentications.JWT.applyToRequest(localVarRequestOptions));
        }
        authenticationPromise = authenticationPromise.then(() => this.authentications.default.applyToRequest(localVarRequestOptions));

        let interceptorPromise = authenticationPromise;
        for (const interceptor of this.interceptors) {
            interceptorPromise = interceptorPromise.then(() => interceptor(localVarRequestOptions));
        }

        return interceptorPromise.then(() => {
            if (Object.keys(localVarFormParams).length) {
                if (localVarUseFormData) {
                    (<any>localVarRequestOptions).formData = localVarFormParams;
                } else {
                    localVarRequestOptions.form = localVarFormParams;
                }
            }
            return new Promise<{ response: http.IncomingMessage; body: Array<object>;  }>((resolve, reject) => {
                localVarRequest(localVarRequestOptions, (error, response, body) => {
                    if (error) {
                        reject(error);
                    } else {
                        if (response.statusCode && response.statusCode >= 200 && response.statusCode <= 299) {
                            body = ObjectSerializer.deserialize(body, "Array<object>");
                            resolve({ response: response, body: body });
                        } else {
                            reject(new HttpError(response, body, response.statusCode));
                        }
                    }
                });
            });
        });
    }
    /**
     * Get all metrics that are actually available for the specified asset.
     * @summary Listing of metrics available for specific asset
     * @param assetId Asset identifier (e.g., USDC, USDT)
     */
    public async v2MetricsAssetListingGet (assetId: string, options: {headers: {[name: string]: string}} = {headers: {}}) : Promise<{ response: http.IncomingMessage; body: Array<V1MetricInfo>;  }> {
        const localVarPath = this.basePath + '/v2/metrics/asset/listing';
        let localVarQueryParameters: any = {};
        let localVarHeaderParams: any = (<any>Object).assign({}, this._defaultHeaders);
        const produces = ['text/plain', 'application/json', 'text/json', 'application/x-msgpack'];
        // give precedence to 'application/json'
        if (produces.indexOf('application/json') >= 0) {
            localVarHeaderParams.Accept = 'application/json';
        } else {
            localVarHeaderParams.Accept = produces.join(',');
        }
        let localVarFormParams: any = {};

        // verify required parameter 'assetId' is not null or undefined
        if (assetId === null || assetId === undefined) {
            throw new Error('Required parameter assetId was null or undefined when calling v2MetricsAssetListingGet.');
        }

        if (assetId !== undefined) {
            localVarQueryParameters['asset_id'] = ObjectSerializer.serialize(assetId, "string");
        }

        (<any>Object).assign(localVarHeaderParams, options.headers);

        let localVarUseFormData = false;

        let localVarRequestOptions: localVarRequest.Options = {
            method: 'GET',
            qs: localVarQueryParameters,
            headers: localVarHeaderParams,
            uri: localVarPath,
            useQuerystring: this._useQuerystring,
            json: true,
        };

        let authenticationPromise = Promise.resolve();
        if (this.authentications.APIKey.apiKey) {
            authenticationPromise = authenticationPromise.then(() => this.authentications.APIKey.applyToRequest(localVarRequestOptions));
        }
        if (this.authentications.JWT.accessToken) {
            authenticationPromise = authenticationPromise.then(() => this.authentications.JWT.applyToRequest(localVarRequestOptions));
        }
        authenticationPromise = authenticationPromise.then(() => this.authentications.default.applyToRequest(localVarRequestOptions));

        let interceptorPromise = authenticationPromise;
        for (const interceptor of this.interceptors) {
            interceptorPromise = interceptorPromise.then(() => interceptor(localVarRequestOptions));
        }

        return interceptorPromise.then(() => {
            if (Object.keys(localVarFormParams).length) {
                if (localVarUseFormData) {
                    (<any>localVarRequestOptions).formData = localVarFormParams;
                } else {
                    localVarRequestOptions.form = localVarFormParams;
                }
            }
            return new Promise<{ response: http.IncomingMessage; body: Array<V1MetricInfo>;  }>((resolve, reject) => {
                localVarRequest(localVarRequestOptions, (error, response, body) => {
                    if (error) {
                        reject(error);
                    } else {
                        if (response.statusCode && response.statusCode >= 200 && response.statusCode <= 299) {
                            body = ObjectSerializer.deserialize(body, "Array<V1MetricInfo>");
                            resolve({ response: response, body: body });
                        } else {
                            reject(new HttpError(response, body, response.statusCode));
                        }
                    }
                });
            });
        });
    }
    /**
     * Get chain metrics history.
     * @summary Historical metrics for the chain
     * @param metricId Metric identifier (e.g., &#x60;TVL&#x60;, &#x60;STABLES_BRIDGED_USD&#x60;)
     * @param chainId Chain identifier (e.g., &#x60;Ethereum&#x60;, &#x60;Arbitrum&#x60;)
     * @param timeStart Starting time in ISO 8601
     * @param timeEnd Ending time in ISO 8601
     * @param timeFormat If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec)
     * @param periodId Identifier of requested timeseries period (e.g. &#x60;1MIN&#x60; or &#x60;2MTH&#x60;), default value is &#x60;1MIN&#x60;
     * @param limit Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
     */
    public async v2MetricsChainHistoryGet (metricId: string, chainId: string, timeStart?: Date, timeEnd?: Date, timeFormat?: string, periodId?: string, limit?: number, options: {headers: {[name: string]: string}} = {headers: {}}) : Promise<{ response: http.IncomingMessage; body: Array<object>;  }> {
        const localVarPath = this.basePath + '/v2/metrics/chain/history';
        let localVarQueryParameters: any = {};
        let localVarHeaderParams: any = (<any>Object).assign({}, this._defaultHeaders);
        const produces = ['text/plain', 'application/json', 'text/json', 'application/x-msgpack'];
        // give precedence to 'application/json'
        if (produces.indexOf('application/json') >= 0) {
            localVarHeaderParams.Accept = 'application/json';
        } else {
            localVarHeaderParams.Accept = produces.join(',');
        }
        let localVarFormParams: any = {};

        // verify required parameter 'metricId' is not null or undefined
        if (metricId === null || metricId === undefined) {
            throw new Error('Required parameter metricId was null or undefined when calling v2MetricsChainHistoryGet.');
        }

        // verify required parameter 'chainId' is not null or undefined
        if (chainId === null || chainId === undefined) {
            throw new Error('Required parameter chainId was null or undefined when calling v2MetricsChainHistoryGet.');
        }

        if (metricId !== undefined) {
            localVarQueryParameters['metric_id'] = ObjectSerializer.serialize(metricId, "string");
        }

        if (chainId !== undefined) {
            localVarQueryParameters['chain_id'] = ObjectSerializer.serialize(chainId, "string");
        }

        if (timeStart !== undefined) {
            localVarQueryParameters['time_start'] = ObjectSerializer.serialize(timeStart, "Date");
        }

        if (timeEnd !== undefined) {
            localVarQueryParameters['time_end'] = ObjectSerializer.serialize(timeEnd, "Date");
        }

        if (timeFormat !== undefined) {
            localVarQueryParameters['time_format'] = ObjectSerializer.serialize(timeFormat, "string");
        }

        if (periodId !== undefined) {
            localVarQueryParameters['period_id'] = ObjectSerializer.serialize(periodId, "string");
        }

        if (limit !== undefined) {
            localVarQueryParameters['limit'] = ObjectSerializer.serialize(limit, "number");
        }

        (<any>Object).assign(localVarHeaderParams, options.headers);

        let localVarUseFormData = false;

        let localVarRequestOptions: localVarRequest.Options = {
            method: 'GET',
            qs: localVarQueryParameters,
            headers: localVarHeaderParams,
            uri: localVarPath,
            useQuerystring: this._useQuerystring,
            json: true,
        };

        let authenticationPromise = Promise.resolve();
        if (this.authentications.APIKey.apiKey) {
            authenticationPromise = authenticationPromise.then(() => this.authentications.APIKey.applyToRequest(localVarRequestOptions));
        }
        if (this.authentications.JWT.accessToken) {
            authenticationPromise = authenticationPromise.then(() => this.authentications.JWT.applyToRequest(localVarRequestOptions));
        }
        authenticationPromise = authenticationPromise.then(() => this.authentications.default.applyToRequest(localVarRequestOptions));

        let interceptorPromise = authenticationPromise;
        for (const interceptor of this.interceptors) {
            interceptorPromise = interceptorPromise.then(() => interceptor(localVarRequestOptions));
        }

        return interceptorPromise.then(() => {
            if (Object.keys(localVarFormParams).length) {
                if (localVarUseFormData) {
                    (<any>localVarRequestOptions).formData = localVarFormParams;
                } else {
                    localVarRequestOptions.form = localVarFormParams;
                }
            }
            return new Promise<{ response: http.IncomingMessage; body: Array<object>;  }>((resolve, reject) => {
                localVarRequest(localVarRequestOptions, (error, response, body) => {
                    if (error) {
                        reject(error);
                    } else {
                        if (response.statusCode && response.statusCode >= 200 && response.statusCode <= 299) {
                            body = ObjectSerializer.deserialize(body, "Array<object>");
                            resolve({ response: response, body: body });
                        } else {
                            reject(new HttpError(response, body, response.statusCode));
                        }
                    }
                });
            });
        });
    }
    /**
     * Get all metrics that are actually available for the specified blockchain chain.
     * @summary Listing of metrics available for specific chain
     * @param chainId Chain identifier (e.g., ETHEREUM, ARBITRUM)
     */
    public async v2MetricsChainListingGet (chainId: string, options: {headers: {[name: string]: string}} = {headers: {}}) : Promise<{ response: http.IncomingMessage; body: Array<V1MetricInfo>;  }> {
        const localVarPath = this.basePath + '/v2/metrics/chain/listing';
        let localVarQueryParameters: any = {};
        let localVarHeaderParams: any = (<any>Object).assign({}, this._defaultHeaders);
        const produces = ['text/plain', 'application/json', 'text/json', 'application/x-msgpack'];
        // give precedence to 'application/json'
        if (produces.indexOf('application/json') >= 0) {
            localVarHeaderParams.Accept = 'application/json';
        } else {
            localVarHeaderParams.Accept = produces.join(',');
        }
        let localVarFormParams: any = {};

        // verify required parameter 'chainId' is not null or undefined
        if (chainId === null || chainId === undefined) {
            throw new Error('Required parameter chainId was null or undefined when calling v2MetricsChainListingGet.');
        }

        if (chainId !== undefined) {
            localVarQueryParameters['chain_id'] = ObjectSerializer.serialize(chainId, "string");
        }

        (<any>Object).assign(localVarHeaderParams, options.headers);

        let localVarUseFormData = false;

        let localVarRequestOptions: localVarRequest.Options = {
            method: 'GET',
            qs: localVarQueryParameters,
            headers: localVarHeaderParams,
            uri: localVarPath,
            useQuerystring: this._useQuerystring,
            json: true,
        };

        let authenticationPromise = Promise.resolve();
        if (this.authentications.APIKey.apiKey) {
            authenticationPromise = authenticationPromise.then(() => this.authentications.APIKey.applyToRequest(localVarRequestOptions));
        }
        if (this.authentications.JWT.accessToken) {
            authenticationPromise = authenticationPromise.then(() => this.authentications.JWT.applyToRequest(localVarRequestOptions));
        }
        authenticationPromise = authenticationPromise.then(() => this.authentications.default.applyToRequest(localVarRequestOptions));

        let interceptorPromise = authenticationPromise;
        for (const interceptor of this.interceptors) {
            interceptorPromise = interceptorPromise.then(() => interceptor(localVarRequestOptions));
        }

        return interceptorPromise.then(() => {
            if (Object.keys(localVarFormParams).length) {
                if (localVarUseFormData) {
                    (<any>localVarRequestOptions).formData = localVarFormParams;
                } else {
                    localVarRequestOptions.form = localVarFormParams;
                }
            }
            return new Promise<{ response: http.IncomingMessage; body: Array<V1MetricInfo>;  }>((resolve, reject) => {
                localVarRequest(localVarRequestOptions, (error, response, body) => {
                    if (error) {
                        reject(error);
                    } else {
                        if (response.statusCode && response.statusCode >= 200 && response.statusCode <= 299) {
                            body = ObjectSerializer.deserialize(body, "Array<V1MetricInfo>");
                            resolve({ response: response, body: body });
                        } else {
                            reject(new HttpError(response, body, response.statusCode));
                        }
                    }
                });
            });
        });
    }
    /**
     * Get exchange metrics history.
     * @summary Historical metrics for the exchange
     * @param metricId Metric identifier (e.g., &#x60;TVL&#x60;, &#x60;STABLES_BRIDGED_USD&#x60;)
     * @param exchangeId Exchange identifier (e.g., &#x60;BINANCE&#x60;, &#x60;UNISWAP-V3-ETHEREUM&#x60;)
     * @param timeStart Starting time in ISO 8601
     * @param timeEnd Ending time in ISO 8601
     * @param timeFormat If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec)
     * @param periodId Identifier of requested timeseries period (e.g. &#x60;1MIN&#x60; or &#x60;2MTH&#x60;), default value is &#x60;1MIN&#x60;
     * @param limit Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
     */
    public async v2MetricsExchangeHistoryGet (metricId: string, exchangeId: string, timeStart?: Date, timeEnd?: Date, timeFormat?: string, periodId?: string, limit?: number, options: {headers: {[name: string]: string}} = {headers: {}}) : Promise<{ response: http.IncomingMessage; body: Array<object>;  }> {
        const localVarPath = this.basePath + '/v2/metrics/exchange/history';
        let localVarQueryParameters: any = {};
        let localVarHeaderParams: any = (<any>Object).assign({}, this._defaultHeaders);
        const produces = ['text/plain', 'application/json', 'text/json', 'application/x-msgpack'];
        // give precedence to 'application/json'
        if (produces.indexOf('application/json') >= 0) {
            localVarHeaderParams.Accept = 'application/json';
        } else {
            localVarHeaderParams.Accept = produces.join(',');
        }
        let localVarFormParams: any = {};

        // verify required parameter 'metricId' is not null or undefined
        if (metricId === null || metricId === undefined) {
            throw new Error('Required parameter metricId was null or undefined when calling v2MetricsExchangeHistoryGet.');
        }

        // verify required parameter 'exchangeId' is not null or undefined
        if (exchangeId === null || exchangeId === undefined) {
            throw new Error('Required parameter exchangeId was null or undefined when calling v2MetricsExchangeHistoryGet.');
        }

        if (metricId !== undefined) {
            localVarQueryParameters['metric_id'] = ObjectSerializer.serialize(metricId, "string");
        }

        if (exchangeId !== undefined) {
            localVarQueryParameters['exchange_id'] = ObjectSerializer.serialize(exchangeId, "string");
        }

        if (timeStart !== undefined) {
            localVarQueryParameters['time_start'] = ObjectSerializer.serialize(timeStart, "Date");
        }

        if (timeEnd !== undefined) {
            localVarQueryParameters['time_end'] = ObjectSerializer.serialize(timeEnd, "Date");
        }

        if (timeFormat !== undefined) {
            localVarQueryParameters['time_format'] = ObjectSerializer.serialize(timeFormat, "string");
        }

        if (periodId !== undefined) {
            localVarQueryParameters['period_id'] = ObjectSerializer.serialize(periodId, "string");
        }

        if (limit !== undefined) {
            localVarQueryParameters['limit'] = ObjectSerializer.serialize(limit, "number");
        }

        (<any>Object).assign(localVarHeaderParams, options.headers);

        let localVarUseFormData = false;

        let localVarRequestOptions: localVarRequest.Options = {
            method: 'GET',
            qs: localVarQueryParameters,
            headers: localVarHeaderParams,
            uri: localVarPath,
            useQuerystring: this._useQuerystring,
            json: true,
        };

        let authenticationPromise = Promise.resolve();
        if (this.authentications.APIKey.apiKey) {
            authenticationPromise = authenticationPromise.then(() => this.authentications.APIKey.applyToRequest(localVarRequestOptions));
        }
        if (this.authentications.JWT.accessToken) {
            authenticationPromise = authenticationPromise.then(() => this.authentications.JWT.applyToRequest(localVarRequestOptions));
        }
        authenticationPromise = authenticationPromise.then(() => this.authentications.default.applyToRequest(localVarRequestOptions));

        let interceptorPromise = authenticationPromise;
        for (const interceptor of this.interceptors) {
            interceptorPromise = interceptorPromise.then(() => interceptor(localVarRequestOptions));
        }

        return interceptorPromise.then(() => {
            if (Object.keys(localVarFormParams).length) {
                if (localVarUseFormData) {
                    (<any>localVarRequestOptions).formData = localVarFormParams;
                } else {
                    localVarRequestOptions.form = localVarFormParams;
                }
            }
            return new Promise<{ response: http.IncomingMessage; body: Array<object>;  }>((resolve, reject) => {
                localVarRequest(localVarRequestOptions, (error, response, body) => {
                    if (error) {
                        reject(error);
                    } else {
                        if (response.statusCode && response.statusCode >= 200 && response.statusCode <= 299) {
                            body = ObjectSerializer.deserialize(body, "Array<object>");
                            resolve({ response: response, body: body });
                        } else {
                            reject(new HttpError(response, body, response.statusCode));
                        }
                    }
                });
            });
        });
    }
    /**
     * Get all metrics that are actually available for the specified exchange.
     * @summary Listing of metrics available for specific exchange
     * @param exchangeId Exchange identifier (e.g., BINANCE, UNISWAP-V3-ETHEREUM)
     */
    public async v2MetricsExchangeListingGet (exchangeId: string, options: {headers: {[name: string]: string}} = {headers: {}}) : Promise<{ response: http.IncomingMessage; body: Array<V1MetricInfo>;  }> {
        const localVarPath = this.basePath + '/v2/metrics/exchange/listing';
        let localVarQueryParameters: any = {};
        let localVarHeaderParams: any = (<any>Object).assign({}, this._defaultHeaders);
        const produces = ['text/plain', 'application/json', 'text/json', 'application/x-msgpack'];
        // give precedence to 'application/json'
        if (produces.indexOf('application/json') >= 0) {
            localVarHeaderParams.Accept = 'application/json';
        } else {
            localVarHeaderParams.Accept = produces.join(',');
        }
        let localVarFormParams: any = {};

        // verify required parameter 'exchangeId' is not null or undefined
        if (exchangeId === null || exchangeId === undefined) {
            throw new Error('Required parameter exchangeId was null or undefined when calling v2MetricsExchangeListingGet.');
        }

        if (exchangeId !== undefined) {
            localVarQueryParameters['exchange_id'] = ObjectSerializer.serialize(exchangeId, "string");
        }

        (<any>Object).assign(localVarHeaderParams, options.headers);

        let localVarUseFormData = false;

        let localVarRequestOptions: localVarRequest.Options = {
            method: 'GET',
            qs: localVarQueryParameters,
            headers: localVarHeaderParams,
            uri: localVarPath,
            useQuerystring: this._useQuerystring,
            json: true,
        };

        let authenticationPromise = Promise.resolve();
        if (this.authentications.APIKey.apiKey) {
            authenticationPromise = authenticationPromise.then(() => this.authentications.APIKey.applyToRequest(localVarRequestOptions));
        }
        if (this.authentications.JWT.accessToken) {
            authenticationPromise = authenticationPromise.then(() => this.authentications.JWT.applyToRequest(localVarRequestOptions));
        }
        authenticationPromise = authenticationPromise.then(() => this.authentications.default.applyToRequest(localVarRequestOptions));

        let interceptorPromise = authenticationPromise;
        for (const interceptor of this.interceptors) {
            interceptorPromise = interceptorPromise.then(() => interceptor(localVarRequestOptions));
        }

        return interceptorPromise.then(() => {
            if (Object.keys(localVarFormParams).length) {
                if (localVarUseFormData) {
                    (<any>localVarRequestOptions).formData = localVarFormParams;
                } else {
                    localVarRequestOptions.form = localVarFormParams;
                }
            }
            return new Promise<{ response: http.IncomingMessage; body: Array<V1MetricInfo>;  }>((resolve, reject) => {
                localVarRequest(localVarRequestOptions, (error, response, body) => {
                    if (error) {
                        reject(error);
                    } else {
                        if (response.statusCode && response.statusCode >= 200 && response.statusCode <= 299) {
                            body = ObjectSerializer.deserialize(body, "Array<V1MetricInfo>");
                            resolve({ response: response, body: body });
                        } else {
                            reject(new HttpError(response, body, response.statusCode));
                        }
                    }
                });
            });
        });
    }
    /**
     * Get all metrics available in the system.
     * @summary Listing of all supported metrics
     */
    public async v2MetricsListingGet (options: {headers: {[name: string]: string}} = {headers: {}}) : Promise<{ response: http.IncomingMessage; body: Array<V1MetricInfo>;  }> {
        const localVarPath = this.basePath + '/v2/metrics/listing';
        let localVarQueryParameters: any = {};
        let localVarHeaderParams: any = (<any>Object).assign({}, this._defaultHeaders);
        const produces = ['text/plain', 'application/json', 'text/json', 'application/x-msgpack'];
        // give precedence to 'application/json'
        if (produces.indexOf('application/json') >= 0) {
            localVarHeaderParams.Accept = 'application/json';
        } else {
            localVarHeaderParams.Accept = produces.join(',');
        }
        let localVarFormParams: any = {};

        (<any>Object).assign(localVarHeaderParams, options.headers);

        let localVarUseFormData = false;

        let localVarRequestOptions: localVarRequest.Options = {
            method: 'GET',
            qs: localVarQueryParameters,
            headers: localVarHeaderParams,
            uri: localVarPath,
            useQuerystring: this._useQuerystring,
            json: true,
        };

        let authenticationPromise = Promise.resolve();
        if (this.authentications.APIKey.apiKey) {
            authenticationPromise = authenticationPromise.then(() => this.authentications.APIKey.applyToRequest(localVarRequestOptions));
        }
        if (this.authentications.JWT.accessToken) {
            authenticationPromise = authenticationPromise.then(() => this.authentications.JWT.applyToRequest(localVarRequestOptions));
        }
        authenticationPromise = authenticationPromise.then(() => this.authentications.default.applyToRequest(localVarRequestOptions));

        let interceptorPromise = authenticationPromise;
        for (const interceptor of this.interceptors) {
            interceptorPromise = interceptorPromise.then(() => interceptor(localVarRequestOptions));
        }

        return interceptorPromise.then(() => {
            if (Object.keys(localVarFormParams).length) {
                if (localVarUseFormData) {
                    (<any>localVarRequestOptions).formData = localVarFormParams;
                } else {
                    localVarRequestOptions.form = localVarFormParams;
                }
            }
            return new Promise<{ response: http.IncomingMessage; body: Array<V1MetricInfo>;  }>((resolve, reject) => {
                localVarRequest(localVarRequestOptions, (error, response, body) => {
                    if (error) {
                        reject(error);
                    } else {
                        if (response.statusCode && response.statusCode >= 200 && response.statusCode <= 299) {
                            body = ObjectSerializer.deserialize(body, "Array<V1MetricInfo>");
                            resolve({ response: response, body: body });
                        } else {
                            reject(new HttpError(response, body, response.statusCode));
                        }
                    }
                });
            });
        });
    }
}
