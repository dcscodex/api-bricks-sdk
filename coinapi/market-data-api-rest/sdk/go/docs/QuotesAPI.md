# \QuotesAPI

All URIs are relative to *https://rest.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**V1QuotesCurrentGet**](QuotesAPI.md#V1QuotesCurrentGet) | **Get** /v1/quotes/current | Current data
[**V1QuotesLatestGet**](QuotesAPI.md#V1QuotesLatestGet) | **Get** /v1/quotes/latest | Latest data
[**V1QuotesSymbolIdCurrentGet**](QuotesAPI.md#V1QuotesSymbolIdCurrentGet) | **Get** /v1/quotes/{symbol_id}/current | Current quotes for a specific symbol
[**V1QuotesSymbolIdHistoryGet**](QuotesAPI.md#V1QuotesSymbolIdHistoryGet) | **Get** /v1/quotes/{symbol_id}/history | Historical data
[**V1QuotesSymbolIdLatestGet**](QuotesAPI.md#V1QuotesSymbolIdLatestGet) | **Get** /v1/quotes/{symbol_id}/latest | Latest quote updates for a specific symbol



## V1QuotesCurrentGet

> []V1QuoteTrade V1QuotesCurrentGet(ctx).FilterSymbolId(filterSymbolId).Execute()

Current data



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

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.QuotesAPI.V1QuotesCurrentGet(context.Background()).FilterSymbolId(filterSymbolId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `QuotesAPI.V1QuotesCurrentGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `V1QuotesCurrentGet`: []V1QuoteTrade
	fmt.Fprintf(os.Stdout, "Response from `QuotesAPI.V1QuotesCurrentGet`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiV1QuotesCurrentGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterSymbolId** | **string** | Comma or semicolon delimited parts of symbol identifier used to filter response. (optional) | 

### Return type

[**[]V1QuoteTrade**](V1QuoteTrade.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## V1QuotesLatestGet

> []V1Quote V1QuotesLatestGet(ctx).FilterSymbolId(filterSymbolId).Limit(limit).Execute()

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
	limit := int32(56) // int32 | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) (optional) (default to 100)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.QuotesAPI.V1QuotesLatestGet(context.Background()).FilterSymbolId(filterSymbolId).Limit(limit).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `QuotesAPI.V1QuotesLatestGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `V1QuotesLatestGet`: []V1Quote
	fmt.Fprintf(os.Stdout, "Response from `QuotesAPI.V1QuotesLatestGet`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiV1QuotesLatestGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterSymbolId** | **string** | Comma or semicolon delimited parts of symbol identifier used to filter response. (optional) | 
 **limit** | **int32** | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [default to 100]

### Return type

[**[]V1Quote**](V1Quote.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## V1QuotesSymbolIdCurrentGet

> V1QuoteTrade V1QuotesSymbolIdCurrentGet(ctx, symbolId).Execute()

Current quotes for a specific symbol

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
	symbolId := "symbolId_example" // string | The symbol identifier (from the Metadata -> Symbols)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.QuotesAPI.V1QuotesSymbolIdCurrentGet(context.Background(), symbolId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `QuotesAPI.V1QuotesSymbolIdCurrentGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `V1QuotesSymbolIdCurrentGet`: V1QuoteTrade
	fmt.Fprintf(os.Stdout, "Response from `QuotesAPI.V1QuotesSymbolIdCurrentGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**symbolId** | **string** | The symbol identifier (from the Metadata -&gt; Symbols) | 

### Other Parameters

Other parameters are passed through a pointer to a apiV1QuotesSymbolIdCurrentGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**V1QuoteTrade**](V1QuoteTrade.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## V1QuotesSymbolIdHistoryGet

> []V1Quote V1QuotesSymbolIdHistoryGet(ctx, symbolId).Date(date).TimeStart(timeStart).TimeEnd(timeEnd).Limit(limit).Execute()

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
	timeStart := "timeStart_example" // string | Starting time in ISO 8601 (optional)
	timeEnd := "timeEnd_example" // string | Timeseries ending time in ISO 8601 (optional)
	limit := int32(56) // int32 | Amount of items to return (optional, minimum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) (optional) (default to 100)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.QuotesAPI.V1QuotesSymbolIdHistoryGet(context.Background(), symbolId).Date(date).TimeStart(timeStart).TimeEnd(timeEnd).Limit(limit).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `QuotesAPI.V1QuotesSymbolIdHistoryGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `V1QuotesSymbolIdHistoryGet`: []V1Quote
	fmt.Fprintf(os.Stdout, "Response from `QuotesAPI.V1QuotesSymbolIdHistoryGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**symbolId** | **string** | Symbol identifier for requested timeseries (from the Metadata -&gt; Symbols) | 

### Other Parameters

Other parameters are passed through a pointer to a apiV1QuotesSymbolIdHistoryGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **date** | **string** | Date in ISO 8601, returned data is for the whole given day (preferred method, required if &#39;time_start&#39; is not provided) | 
 **timeStart** | **string** | Starting time in ISO 8601 | 
 **timeEnd** | **string** | Timeseries ending time in ISO 8601 | 
 **limit** | **int32** | Amount of items to return (optional, minimum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [default to 100]

### Return type

[**[]V1Quote**](V1Quote.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## V1QuotesSymbolIdLatestGet

> []V1Quote V1QuotesSymbolIdLatestGet(ctx, symbolId).Limit(limit).Execute()

Latest quote updates for a specific symbol

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

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.QuotesAPI.V1QuotesSymbolIdLatestGet(context.Background(), symbolId).Limit(limit).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `QuotesAPI.V1QuotesSymbolIdLatestGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `V1QuotesSymbolIdLatestGet`: []V1Quote
	fmt.Fprintf(os.Stdout, "Response from `QuotesAPI.V1QuotesSymbolIdLatestGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**symbolId** | **string** | Symbol identifier of requested timeseries (from the Metadata -&gt; Symbols) | 

### Other Parameters

Other parameters are passed through a pointer to a apiV1QuotesSymbolIdLatestGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **limit** | **int32** | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [default to 100]

### Return type

[**[]V1Quote**](V1Quote.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

