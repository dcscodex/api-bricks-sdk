# \OrderBookL3API

All URIs are relative to *https://rest.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**V1Orderbooks3CurrentGet**](OrderBookL3API.md#V1Orderbooks3CurrentGet) | **Get** /v1/orderbooks3/current | Current order books
[**V1Orderbooks3SymbolIdCurrentGet**](OrderBookL3API.md#V1Orderbooks3SymbolIdCurrentGet) | **Get** /v1/orderbooks3/{symbol_id}/current | Current order book by symbol_id



## V1Orderbooks3CurrentGet

> []V1OrderBookBase V1Orderbooks3CurrentGet(ctx).FilterSymbolId(filterSymbolId).LimitLevels(limitLevels).Execute()

Current order books

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
	filterSymbolId := "filterSymbolId_example" // string | Comma or semicolon delimited parts of symbol identifier used to filter the response. (optional)
	limitLevels := int32(56) // int32 | The maximum number of levels to include in the response. (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.OrderBookL3API.V1Orderbooks3CurrentGet(context.Background()).FilterSymbolId(filterSymbolId).LimitLevels(limitLevels).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `OrderBookL3API.V1Orderbooks3CurrentGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `V1Orderbooks3CurrentGet`: []V1OrderBookBase
	fmt.Fprintf(os.Stdout, "Response from `OrderBookL3API.V1Orderbooks3CurrentGet`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiV1Orderbooks3CurrentGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterSymbolId** | **string** | Comma or semicolon delimited parts of symbol identifier used to filter the response. | 
 **limitLevels** | **int32** | The maximum number of levels to include in the response. | 

### Return type

[**[]V1OrderBookBase**](V1OrderBookBase.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## V1Orderbooks3SymbolIdCurrentGet

> V1OrderBookBase V1Orderbooks3SymbolIdCurrentGet(ctx, symbolId).LimitLevels(limitLevels).Execute()

Current order book by symbol_id



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
	resp, r, err := apiClient.OrderBookL3API.V1Orderbooks3SymbolIdCurrentGet(context.Background(), symbolId).LimitLevels(limitLevels).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `OrderBookL3API.V1Orderbooks3SymbolIdCurrentGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `V1Orderbooks3SymbolIdCurrentGet`: V1OrderBookBase
	fmt.Fprintf(os.Stdout, "Response from `OrderBookL3API.V1Orderbooks3SymbolIdCurrentGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**symbolId** | **string** | The symbol ID (from the Metadata -&gt; Symbols) | 

### Other Parameters

Other parameters are passed through a pointer to a apiV1Orderbooks3SymbolIdCurrentGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **limitLevels** | **int32** | The maximum number of levels to include in the response. | 

### Return type

[**V1OrderBookBase**](V1OrderBookBase.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

