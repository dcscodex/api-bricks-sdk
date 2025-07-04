/*
FX Realtime REST API

No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

API version: v1
Contact: support@apibricks.io
*/

// Code generated by OpenAPI Generator (https://openapi-generator.tech); DO NOT EDIT.

package openapi

import (
	"bytes"
	"context"
	"io"
	"net/http"
	"net/url"
	"strings"
)


// ExchangeRatesAPIService ExchangeRatesAPI service
type ExchangeRatesAPIService service

type ApiGetSpecificRateRequest struct {
	ctx context.Context
	ApiService *ExchangeRatesAPIService
	assetIdBase string
	assetIdQuote string
}

func (r ApiGetSpecificRateRequest) Execute() (*V1ExchangeRate, *http.Response, error) {
	return r.ApiService.GetSpecificRateExecute(r)
}

/*
GetSpecificRate Get specific rate

Retrieves the exchange rate for a specific base and quote asset at a given time or the current rate.
            
:::info
If you are using an exchange rate for mission-critical operations, then for best reliability, you should measure the difference between current time and the time returned from the response to ensure that value of the difference between those meets your internal requirements.
:::

 @param ctx context.Context - for authentication, logging, cancellation, deadlines, tracing, etc. Passed from http.Request or context.Background().
 @param assetIdBase Requested exchange rate base asset identifier (from the Metadata -> Assets)
 @param assetIdQuote Requested exchange rate quote asset identifier (from the Metadata -> Assets)
 @return ApiGetSpecificRateRequest
*/
func (a *ExchangeRatesAPIService) GetSpecificRate(ctx context.Context, assetIdBase string, assetIdQuote string) ApiGetSpecificRateRequest {
	return ApiGetSpecificRateRequest{
		ApiService: a,
		ctx: ctx,
		assetIdBase: assetIdBase,
		assetIdQuote: assetIdQuote,
	}
}

// Execute executes the request
//  @return V1ExchangeRate
func (a *ExchangeRatesAPIService) GetSpecificRateExecute(r ApiGetSpecificRateRequest) (*V1ExchangeRate, *http.Response, error) {
	var (
		localVarHTTPMethod   = http.MethodGet
		localVarPostBody     interface{}
		formFiles            []formFile
		localVarReturnValue  *V1ExchangeRate
	)

	localBasePath, err := a.client.cfg.ServerURLWithContext(r.ctx, "ExchangeRatesAPIService.GetSpecificRate")
	if err != nil {
		return localVarReturnValue, nil, &GenericOpenAPIError{error: err.Error()}
	}

	localVarPath := localBasePath + "/v1/exchangerate/{asset_id_base}/{asset_id_quote}"
	localVarPath = strings.Replace(localVarPath, "{"+"asset_id_base"+"}", url.PathEscape(parameterValueToString(r.assetIdBase, "assetIdBase")), -1)
	localVarPath = strings.Replace(localVarPath, "{"+"asset_id_quote"+"}", url.PathEscape(parameterValueToString(r.assetIdQuote, "assetIdQuote")), -1)

	localVarHeaderParams := make(map[string]string)
	localVarQueryParams := url.Values{}
	localVarFormParams := url.Values{}

	// to determine the Content-Type header
	localVarHTTPContentTypes := []string{}

	// set Content-Type header
	localVarHTTPContentType := selectHeaderContentType(localVarHTTPContentTypes)
	if localVarHTTPContentType != "" {
		localVarHeaderParams["Content-Type"] = localVarHTTPContentType
	}

	// to determine the Accept header
	localVarHTTPHeaderAccepts := []string{"text/plain", "application/json", "text/json", "application/x-msgpack"}

	// set Accept header
	localVarHTTPHeaderAccept := selectHeaderAccept(localVarHTTPHeaderAccepts)
	if localVarHTTPHeaderAccept != "" {
		localVarHeaderParams["Accept"] = localVarHTTPHeaderAccept
	}
	if r.ctx != nil {
		// API Key Authentication
		if auth, ok := r.ctx.Value(ContextAPIKeys).(map[string]APIKey); ok {
			if apiKey, ok := auth["APIKey"]; ok {
				var key string
				if apiKey.Prefix != "" {
					key = apiKey.Prefix + " " + apiKey.Key
				} else {
					key = apiKey.Key
				}
				localVarHeaderParams["Authorization"] = key
			}
		}
	}
	req, err := a.client.prepareRequest(r.ctx, localVarPath, localVarHTTPMethod, localVarPostBody, localVarHeaderParams, localVarQueryParams, localVarFormParams, formFiles)
	if err != nil {
		return localVarReturnValue, nil, err
	}

	localVarHTTPResponse, err := a.client.callAPI(req)
	if err != nil || localVarHTTPResponse == nil {
		return localVarReturnValue, localVarHTTPResponse, err
	}

	localVarBody, err := io.ReadAll(localVarHTTPResponse.Body)
	localVarHTTPResponse.Body.Close()
	localVarHTTPResponse.Body = io.NopCloser(bytes.NewBuffer(localVarBody))
	if err != nil {
		return localVarReturnValue, localVarHTTPResponse, err
	}

	if localVarHTTPResponse.StatusCode >= 300 {
		newErr := &GenericOpenAPIError{
			body:  localVarBody,
			error: localVarHTTPResponse.Status,
		}
		return localVarReturnValue, localVarHTTPResponse, newErr
	}

	err = a.client.decode(&localVarReturnValue, localVarBody, localVarHTTPResponse.Header.Get("Content-Type"))
	if err != nil {
		newErr := &GenericOpenAPIError{
			body:  localVarBody,
			error: err.Error(),
		}
		return localVarReturnValue, localVarHTTPResponse, newErr
	}

	return localVarReturnValue, localVarHTTPResponse, nil
}

type ApiV1ExchangerateAssetIdBaseGetRequest struct {
	ctx context.Context
	ApiService *ExchangeRatesAPIService
	assetIdBase string
	filterAssetId *string
	invert *bool
}

// Comma or semicolon delimited asset identifiers used to filter response (optional)
func (r ApiV1ExchangerateAssetIdBaseGetRequest) FilterAssetId(filterAssetId string) ApiV1ExchangerateAssetIdBaseGetRequest {
	r.filterAssetId = &filterAssetId
	return r
}

// True will invert all the rates (optional, if true then rates will be calculated as &#x60;rate &#x3D; 1 / actual_rate&#x60; eg. &#x60;USD/BTC&#x60; as &#x60;BTC/USD&#x60;)
func (r ApiV1ExchangerateAssetIdBaseGetRequest) Invert(invert bool) ApiV1ExchangerateAssetIdBaseGetRequest {
	r.invert = &invert
	return r
}

func (r ApiV1ExchangerateAssetIdBaseGetRequest) Execute() (*V1ExchangeRates, *http.Response, error) {
	return r.ApiService.V1ExchangerateAssetIdBaseGetExecute(r)
}

/*
V1ExchangerateAssetIdBaseGet Get all current rates

Get the current exchange rate between requested asset and all other assets.
            
:::info
If you are using an exchange rate for mission-critical operations, then for best reliability, you should measure the difference between current time and the time returned from the response to ensure that value of the difference between those meets your internal requirements.
:::
            
:::info
You can invert the rates by using Y = 1 / X equation, for example BTC/USD = 1 / (USD/BTC);
:::

 @param ctx context.Context - for authentication, logging, cancellation, deadlines, tracing, etc. Passed from http.Request or context.Background().
 @param assetIdBase Requested exchange rates base asset identifier (from the Metadata -> Assets)
 @return ApiV1ExchangerateAssetIdBaseGetRequest
*/
func (a *ExchangeRatesAPIService) V1ExchangerateAssetIdBaseGet(ctx context.Context, assetIdBase string) ApiV1ExchangerateAssetIdBaseGetRequest {
	return ApiV1ExchangerateAssetIdBaseGetRequest{
		ApiService: a,
		ctx: ctx,
		assetIdBase: assetIdBase,
	}
}

// Execute executes the request
//  @return V1ExchangeRates
func (a *ExchangeRatesAPIService) V1ExchangerateAssetIdBaseGetExecute(r ApiV1ExchangerateAssetIdBaseGetRequest) (*V1ExchangeRates, *http.Response, error) {
	var (
		localVarHTTPMethod   = http.MethodGet
		localVarPostBody     interface{}
		formFiles            []formFile
		localVarReturnValue  *V1ExchangeRates
	)

	localBasePath, err := a.client.cfg.ServerURLWithContext(r.ctx, "ExchangeRatesAPIService.V1ExchangerateAssetIdBaseGet")
	if err != nil {
		return localVarReturnValue, nil, &GenericOpenAPIError{error: err.Error()}
	}

	localVarPath := localBasePath + "/v1/exchangerate/{asset_id_base}"
	localVarPath = strings.Replace(localVarPath, "{"+"asset_id_base"+"}", url.PathEscape(parameterValueToString(r.assetIdBase, "assetIdBase")), -1)

	localVarHeaderParams := make(map[string]string)
	localVarQueryParams := url.Values{}
	localVarFormParams := url.Values{}

	if r.filterAssetId != nil {
		parameterAddToHeaderOrQuery(localVarQueryParams, "filter_asset_id", r.filterAssetId, "form", "")
	}
	if r.invert != nil {
		parameterAddToHeaderOrQuery(localVarQueryParams, "invert", r.invert, "form", "")
	} else {
		var defaultValue bool = false
		r.invert = &defaultValue
	}
	// to determine the Content-Type header
	localVarHTTPContentTypes := []string{}

	// set Content-Type header
	localVarHTTPContentType := selectHeaderContentType(localVarHTTPContentTypes)
	if localVarHTTPContentType != "" {
		localVarHeaderParams["Content-Type"] = localVarHTTPContentType
	}

	// to determine the Accept header
	localVarHTTPHeaderAccepts := []string{"text/plain", "application/json", "text/json", "application/x-msgpack"}

	// set Accept header
	localVarHTTPHeaderAccept := selectHeaderAccept(localVarHTTPHeaderAccepts)
	if localVarHTTPHeaderAccept != "" {
		localVarHeaderParams["Accept"] = localVarHTTPHeaderAccept
	}
	if r.ctx != nil {
		// API Key Authentication
		if auth, ok := r.ctx.Value(ContextAPIKeys).(map[string]APIKey); ok {
			if apiKey, ok := auth["APIKey"]; ok {
				var key string
				if apiKey.Prefix != "" {
					key = apiKey.Prefix + " " + apiKey.Key
				} else {
					key = apiKey.Key
				}
				localVarHeaderParams["Authorization"] = key
			}
		}
	}
	req, err := a.client.prepareRequest(r.ctx, localVarPath, localVarHTTPMethod, localVarPostBody, localVarHeaderParams, localVarQueryParams, localVarFormParams, formFiles)
	if err != nil {
		return localVarReturnValue, nil, err
	}

	localVarHTTPResponse, err := a.client.callAPI(req)
	if err != nil || localVarHTTPResponse == nil {
		return localVarReturnValue, localVarHTTPResponse, err
	}

	localVarBody, err := io.ReadAll(localVarHTTPResponse.Body)
	localVarHTTPResponse.Body.Close()
	localVarHTTPResponse.Body = io.NopCloser(bytes.NewBuffer(localVarBody))
	if err != nil {
		return localVarReturnValue, localVarHTTPResponse, err
	}

	if localVarHTTPResponse.StatusCode >= 300 {
		newErr := &GenericOpenAPIError{
			body:  localVarBody,
			error: localVarHTTPResponse.Status,
		}
		return localVarReturnValue, localVarHTTPResponse, newErr
	}

	err = a.client.decode(&localVarReturnValue, localVarBody, localVarHTTPResponse.Header.Get("Content-Type"))
	if err != nil {
		newErr := &GenericOpenAPIError{
			body:  localVarBody,
			error: err.Error(),
		}
		return localVarReturnValue, localVarHTTPResponse, newErr
	}

	return localVarReturnValue, localVarHTTPResponse, nil
}
