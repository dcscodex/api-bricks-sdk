# \MetadataAPI

All URIs are relative to *https://api-historical.stock.finfeedapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**V1ExchangesGet**](MetadataAPI.md#V1ExchangesGet) | **Get** /v1/exchanges | List of exchanges
[**V1SymbolsExchangeIdGet**](MetadataAPI.md#V1SymbolsExchangeIdGet) | **Get** /v1/symbols/{exchange_id} | List of symbols for the exchange



## V1ExchangesGet

> []FinFeedAPIExchangeModel V1ExchangesGet(ctx).Execute()

List of exchanges

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

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.MetadataAPI.V1ExchangesGet(context.Background()).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `MetadataAPI.V1ExchangesGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `V1ExchangesGet`: []FinFeedAPIExchangeModel
	fmt.Fprintf(os.Stdout, "Response from `MetadataAPI.V1ExchangesGet`: %v\n", resp)
}
```

### Path Parameters

This endpoint does not need any parameter.

### Other Parameters

Other parameters are passed through a pointer to a apiV1ExchangesGetRequest struct via the builder pattern


### Return type

[**[]FinFeedAPIExchangeModel**](FinFeedAPIExchangeModel.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## V1SymbolsExchangeIdGet

> []FinFeedAPISymbolModel V1SymbolsExchangeIdGet(ctx, exchangeId).Execute()

List of symbols for the exchange

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
	exchangeId := "exchangeId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.MetadataAPI.V1SymbolsExchangeIdGet(context.Background(), exchangeId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `MetadataAPI.V1SymbolsExchangeIdGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `V1SymbolsExchangeIdGet`: []FinFeedAPISymbolModel
	fmt.Fprintf(os.Stdout, "Response from `MetadataAPI.V1SymbolsExchangeIdGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**exchangeId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiV1SymbolsExchangeIdGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**[]FinFeedAPISymbolModel**](FinFeedAPISymbolModel.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

