# \MetadataAPI

All URIs are relative to *https://rest-api.indexes.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ApiMetadataExchangesExchangeIdGet**](MetadataAPI.md#ApiMetadataExchangesExchangeIdGet) | **Get** /api/metadata/exchanges/{exchange_id} | List all exchanges by exchange_id
[**ApiMetadataExchangesGet**](MetadataAPI.md#ApiMetadataExchangesGet) | **Get** /api/metadata/exchanges | List all exchanges



## ApiMetadataExchangesExchangeIdGet

> []MetadataExchange ApiMetadataExchangesExchangeIdGet(ctx, exchangeId).Execute()

List all exchanges by exchange_id

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
	exchangeId := "exchangeId_example" // string | The ID of the exchange.

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.MetadataAPI.ApiMetadataExchangesExchangeIdGet(context.Background(), exchangeId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `MetadataAPI.ApiMetadataExchangesExchangeIdGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `ApiMetadataExchangesExchangeIdGet`: []MetadataExchange
	fmt.Fprintf(os.Stdout, "Response from `MetadataAPI.ApiMetadataExchangesExchangeIdGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**exchangeId** | **string** | The ID of the exchange. | 

### Other Parameters

Other parameters are passed through a pointer to a apiApiMetadataExchangesExchangeIdGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**[]MetadataExchange**](MetadataExchange.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ApiMetadataExchangesGet

> []MetadataExchange ApiMetadataExchangesGet(ctx).FilterExchangeId(filterExchangeId).Execute()

List all exchanges



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
	filterExchangeId := "filterExchangeId_example" // string | Comma or semicolon delimited exchange identifiers used to filter response. (optional, eg. `BITSTAMP;GEMINI`) (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.MetadataAPI.ApiMetadataExchangesGet(context.Background()).FilterExchangeId(filterExchangeId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `MetadataAPI.ApiMetadataExchangesGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `ApiMetadataExchangesGet`: []MetadataExchange
	fmt.Fprintf(os.Stdout, "Response from `MetadataAPI.ApiMetadataExchangesGet`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiApiMetadataExchangesGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterExchangeId** | **string** | Comma or semicolon delimited exchange identifiers used to filter response. (optional, eg. &#x60;BITSTAMP;GEMINI&#x60;) | 

### Return type

[**[]MetadataExchange**](MetadataExchange.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

