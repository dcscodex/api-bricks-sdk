# \TradesAPI

All URIs are relative to *https://rest.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**V1TradesLatestGet**](TradesAPI.md#V1TradesLatestGet) | **Get** /v1/trades/latest | Latest data
[**V1TradesSymbolIdHistoryGet**](TradesAPI.md#V1TradesSymbolIdHistoryGet) | **Get** /v1/trades/{symbol_id}/history | Historical data
[**V1TradesSymbolIdLatestGet**](TradesAPI.md#V1TradesSymbolIdLatestGet) | **Get** /v1/trades/{symbol_id}/latest | Latest data by symbol_id



## V1TradesLatestGet

> []V1Trade V1TradesLatestGet(ctx).FilterSymbolId(filterSymbolId).IncludeId(includeId).Limit(limit).Execute()

Latest data



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {
	filterSymbolId := "filterSymbolId_example" // string | Comma or semicolon delimited parts of symbol identifier used to filter response. (optional) (optional)
	includeId := true // bool | Information that additional exchange trade identifier should be included in the `id_trade` parameter of the trade if exchange providing identifiers. (optional) (default to false)
	limit := int32(56) // int32 | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) (optional) (default to 100)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.TradesAPI.V1TradesLatestGet(context.Background()).FilterSymbolId(filterSymbolId).IncludeId(includeId).Limit(limit).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `TradesAPI.V1TradesLatestGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `V1TradesLatestGet`: []V1Trade
	fmt.Fprintf(os.Stdout, "Response from `TradesAPI.V1TradesLatestGet`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiV1TradesLatestGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterSymbolId** | **string** | Comma or semicolon delimited parts of symbol identifier used to filter response. (optional) | 
 **includeId** | **bool** | Information that additional exchange trade identifier should be included in the &#x60;id_trade&#x60; parameter of the trade if exchange providing identifiers. | [default to false]
 **limit** | **int32** | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [default to 100]

### Return type

[**[]V1Trade**](V1Trade.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## V1TradesSymbolIdHistoryGet

> []V1Trade V1TradesSymbolIdHistoryGet(ctx, symbolId).Date(date).TimeStart(timeStart).TimeEnd(timeEnd).Limit(limit).IncludeId(includeId).Execute()

Historical data



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {
	symbolId := "symbolId_example" // string | Symbol identifier for requested timeseries (from the Metadata -> Symbols)
	date := "date_example" // string | Date in ISO 8601, returned data is for the whole given day (required if 'time_start' is not provided) (optional)
	timeStart := "timeStart_example" // string | Starting time in ISO 8601 (optional)
	timeEnd := "timeEnd_example" // string | Timeseries ending time in ISO 8601 (optional)
	limit := int32(56) // int32 | Amount of items to return (optional, minimum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) (optional) (default to 100)
	includeId := true // bool | Information that additional exchange trade identifier should be included in the `id_trade` parameter of the trade if exchange providing identifiers. (optional) (default to false)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.TradesAPI.V1TradesSymbolIdHistoryGet(context.Background(), symbolId).Date(date).TimeStart(timeStart).TimeEnd(timeEnd).Limit(limit).IncludeId(includeId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `TradesAPI.V1TradesSymbolIdHistoryGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `V1TradesSymbolIdHistoryGet`: []V1Trade
	fmt.Fprintf(os.Stdout, "Response from `TradesAPI.V1TradesSymbolIdHistoryGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**symbolId** | **string** | Symbol identifier for requested timeseries (from the Metadata -&gt; Symbols) | 

### Other Parameters

Other parameters are passed through a pointer to a apiV1TradesSymbolIdHistoryGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **date** | **string** | Date in ISO 8601, returned data is for the whole given day (required if &#39;time_start&#39; is not provided) | 
 **timeStart** | **string** | Starting time in ISO 8601 | 
 **timeEnd** | **string** | Timeseries ending time in ISO 8601 | 
 **limit** | **int32** | Amount of items to return (optional, minimum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [default to 100]
 **includeId** | **bool** | Information that additional exchange trade identifier should be included in the &#x60;id_trade&#x60; parameter of the trade if exchange providing identifiers. | [default to false]

### Return type

[**[]V1Trade**](V1Trade.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## V1TradesSymbolIdLatestGet

> []V1Trade V1TradesSymbolIdLatestGet(ctx, symbolId).Limit(limit).IncludeId(includeId).Execute()

Latest data by symbol_id



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {
	symbolId := "symbolId_example" // string | Symbol identifier for requested timeseries (from the Metadata -> Symbols)
	limit := int32(56) // int32 | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) (optional) (default to 100)
	includeId := true // bool | Information that additional exchange trade identifier should be included in the `id_trade` parameter of the trade if exchange providing identifiers. (optional) (default to false)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.TradesAPI.V1TradesSymbolIdLatestGet(context.Background(), symbolId).Limit(limit).IncludeId(includeId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `TradesAPI.V1TradesSymbolIdLatestGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `V1TradesSymbolIdLatestGet`: []V1Trade
	fmt.Fprintf(os.Stdout, "Response from `TradesAPI.V1TradesSymbolIdLatestGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**symbolId** | **string** | Symbol identifier for requested timeseries (from the Metadata -&gt; Symbols) | 

### Other Parameters

Other parameters are passed through a pointer to a apiV1TradesSymbolIdLatestGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **limit** | **int32** | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [default to 100]
 **includeId** | **bool** | Information that additional exchange trade identifier should be included in the &#x60;id_trade&#x60; parameter of the trade if exchange providing identifiers. | [default to false]

### Return type

[**[]V1Trade**](V1Trade.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

