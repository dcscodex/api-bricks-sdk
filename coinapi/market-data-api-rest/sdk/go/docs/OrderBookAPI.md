# \OrderBookAPI

All URIs are relative to *https://rest.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**V1OrderbooksSymbolIdCurrentGet**](OrderBookAPI.md#V1OrderbooksSymbolIdCurrentGet) | **Get** /v1/orderbooks/{symbol_id}/current | Get current order book
[**V1OrderbooksSymbolIdDepthCurrentGet**](OrderBookAPI.md#V1OrderbooksSymbolIdDepthCurrentGet) | **Get** /v1/orderbooks/{symbol_id}/depth/current | Current depth of the order book
[**V1OrderbooksSymbolIdHistoryGet**](OrderBookAPI.md#V1OrderbooksSymbolIdHistoryGet) | **Get** /v1/orderbooks/{symbol_id}/history | Historical data
[**V1OrderbooksSymbolIdLatestGet**](OrderBookAPI.md#V1OrderbooksSymbolIdLatestGet) | **Get** /v1/orderbooks/{symbol_id}/latest | Latest data



## V1OrderbooksSymbolIdCurrentGet

> V1OrderBookBase V1OrderbooksSymbolIdCurrentGet(ctx, symbolId).LimitLevels(limitLevels).Execute()

Get current order book



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
	symbolId := "symbolId_example" // string | The symbol ID (from the Metadata -> Symbols)
	limitLevels := int32(56) // int32 | The maximum number of levels to include in the response. (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.OrderBookAPI.V1OrderbooksSymbolIdCurrentGet(context.Background(), symbolId).LimitLevels(limitLevels).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `OrderBookAPI.V1OrderbooksSymbolIdCurrentGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `V1OrderbooksSymbolIdCurrentGet`: V1OrderBookBase
	fmt.Fprintf(os.Stdout, "Response from `OrderBookAPI.V1OrderbooksSymbolIdCurrentGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**symbolId** | **string** | The symbol ID (from the Metadata -&gt; Symbols) | 

### Other Parameters

Other parameters are passed through a pointer to a apiV1OrderbooksSymbolIdCurrentGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **limitLevels** | **int32** | The maximum number of levels to include in the response. | 

### Return type

[**V1OrderBookBase**](V1OrderBookBase.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## V1OrderbooksSymbolIdDepthCurrentGet

> V1OrderBookDepth V1OrderbooksSymbolIdDepthCurrentGet(ctx, symbolId).LimitLevels(limitLevels).Execute()

Current depth of the order book



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
	symbolId := "symbolId_example" // string | The symbol ID (from the Metadata -> Symbols)
	limitLevels := int32(56) // int32 | The maximum number of levels to include in the response. (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.OrderBookAPI.V1OrderbooksSymbolIdDepthCurrentGet(context.Background(), symbolId).LimitLevels(limitLevels).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `OrderBookAPI.V1OrderbooksSymbolIdDepthCurrentGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `V1OrderbooksSymbolIdDepthCurrentGet`: V1OrderBookDepth
	fmt.Fprintf(os.Stdout, "Response from `OrderBookAPI.V1OrderbooksSymbolIdDepthCurrentGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**symbolId** | **string** | The symbol ID (from the Metadata -&gt; Symbols) | 

### Other Parameters

Other parameters are passed through a pointer to a apiV1OrderbooksSymbolIdDepthCurrentGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **limitLevels** | **int32** | The maximum number of levels to include in the response. | 

### Return type

[**V1OrderBookDepth**](V1OrderBookDepth.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## V1OrderbooksSymbolIdHistoryGet

> []V1OrderBook V1OrderbooksSymbolIdHistoryGet(ctx, symbolId).Date(date).TimeStart(timeStart).TimeEnd(timeEnd).Limit(limit).LimitLevels(limitLevels).Execute()

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
	date := "date_example" // string | Date in ISO 8601, returned data is for the whole given day (preferred method, required if 'time_start' is not provided) (optional)
	timeStart := "timeStart_example" // string | Starting time in ISO 8601 (deprecated, use 'date' instead) (optional)
	timeEnd := "timeEnd_example" // string | Timeseries ending time in ISO 8601 (deprecated, use 'date' instead) (optional)
	limit := int32(56) // int32 | Amount of items to return (optional, minimum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) (optional) (default to 100)
	limitLevels := int32(56) // int32 | Maximum amount of levels from each side of the book to include in response (optional) (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.OrderBookAPI.V1OrderbooksSymbolIdHistoryGet(context.Background(), symbolId).Date(date).TimeStart(timeStart).TimeEnd(timeEnd).Limit(limit).LimitLevels(limitLevels).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `OrderBookAPI.V1OrderbooksSymbolIdHistoryGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `V1OrderbooksSymbolIdHistoryGet`: []V1OrderBook
	fmt.Fprintf(os.Stdout, "Response from `OrderBookAPI.V1OrderbooksSymbolIdHistoryGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**symbolId** | **string** | Symbol identifier for requested timeseries (from the Metadata -&gt; Symbols) | 

### Other Parameters

Other parameters are passed through a pointer to a apiV1OrderbooksSymbolIdHistoryGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **date** | **string** | Date in ISO 8601, returned data is for the whole given day (preferred method, required if &#39;time_start&#39; is not provided) | 
 **timeStart** | **string** | Starting time in ISO 8601 (deprecated, use &#39;date&#39; instead) | 
 **timeEnd** | **string** | Timeseries ending time in ISO 8601 (deprecated, use &#39;date&#39; instead) | 
 **limit** | **int32** | Amount of items to return (optional, minimum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [default to 100]
 **limitLevels** | **int32** | Maximum amount of levels from each side of the book to include in response (optional) | 

### Return type

[**[]V1OrderBook**](V1OrderBook.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## V1OrderbooksSymbolIdLatestGet

> []V1OrderBook V1OrderbooksSymbolIdLatestGet(ctx, symbolId).Limit(limit).LimitLevels(limitLevels).Execute()

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
	symbolId := "symbolId_example" // string | Symbol identifier of requested timeseries (from the Metadata -> Symbols)
	limit := int32(56) // int32 | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) (optional) (default to 100)
	limitLevels := int32(56) // int32 | Maximum amount of levels from each side of the book to include in response (optional) (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.OrderBookAPI.V1OrderbooksSymbolIdLatestGet(context.Background(), symbolId).Limit(limit).LimitLevels(limitLevels).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `OrderBookAPI.V1OrderbooksSymbolIdLatestGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `V1OrderbooksSymbolIdLatestGet`: []V1OrderBook
	fmt.Fprintf(os.Stdout, "Response from `OrderBookAPI.V1OrderbooksSymbolIdLatestGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**symbolId** | **string** | Symbol identifier of requested timeseries (from the Metadata -&gt; Symbols) | 

### Other Parameters

Other parameters are passed through a pointer to a apiV1OrderbooksSymbolIdLatestGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **limit** | **int32** | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [default to 100]
 **limitLevels** | **int32** | Maximum amount of levels from each side of the book to include in response (optional) | 

### Return type

[**[]V1OrderBook**](V1OrderBook.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

