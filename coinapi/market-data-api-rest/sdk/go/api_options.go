/*
CoinAPI Market Data REST API

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


// OptionsAPIService OptionsAPI service
type OptionsAPIService service

type ApiV1OptionsExchangeIdCurrentGetRequest struct {
	ctx context.Context
	ApiService *OptionsAPIService
	exchangeId string
}

func (r ApiV1OptionsExchangeIdCurrentGetRequest) Execute() ([]OptionsOptionExchangeGroup, *http.Response, error) {
	return r.ApiService.V1OptionsExchangeIdCurrentGetExecute(r)
}

/*
V1OptionsExchangeIdCurrentGet Current data by Exchange

Get current options data for a specific exchange.

Returns option data grouped by underlying asset, quote currency, and expiration time,
with quotes for both calls and puts at each strike price.

 @param ctx context.Context - for authentication, logging, cancellation, deadlines, tracing, etc. Passed from http.Request or context.Background().
 @param exchangeId Exchange identifier (from the Metadata -> Exchanges)
 @return ApiV1OptionsExchangeIdCurrentGetRequest
*/
func (a *OptionsAPIService) V1OptionsExchangeIdCurrentGet(ctx context.Context, exchangeId string) ApiV1OptionsExchangeIdCurrentGetRequest {
	return ApiV1OptionsExchangeIdCurrentGetRequest{
		ApiService: a,
		ctx: ctx,
		exchangeId: exchangeId,
	}
}

// Execute executes the request
//  @return []OptionsOptionExchangeGroup
func (a *OptionsAPIService) V1OptionsExchangeIdCurrentGetExecute(r ApiV1OptionsExchangeIdCurrentGetRequest) ([]OptionsOptionExchangeGroup, *http.Response, error) {
	var (
		localVarHTTPMethod   = http.MethodGet
		localVarPostBody     interface{}
		formFiles            []formFile
		localVarReturnValue  []OptionsOptionExchangeGroup
	)

	localBasePath, err := a.client.cfg.ServerURLWithContext(r.ctx, "OptionsAPIService.V1OptionsExchangeIdCurrentGet")
	if err != nil {
		return localVarReturnValue, nil, &GenericOpenAPIError{error: err.Error()}
	}

	localVarPath := localBasePath + "/v1/options/{exchange_id}/current"
	localVarPath = strings.Replace(localVarPath, "{"+"exchange_id"+"}", url.PathEscape(parameterValueToString(r.exchangeId, "exchangeId")), -1)

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
