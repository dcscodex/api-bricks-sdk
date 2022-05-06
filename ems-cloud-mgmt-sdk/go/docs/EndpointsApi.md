# \EndpointsApi

All URIs are relative to *https://ems-mgmt-sandbox.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Endpoints**](EndpointsApi.md#Endpoints) | **Get** /v1/endpoints | Get API endpoints



## Endpoints

> []AccountEndpoint Endpoints(ctx).FilterExchangeId(filterExchangeId).Execute()

Get API endpoints



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "./openapi"
)

func main() {
    filterExchangeId := []string{"Inner_example"} // []string | Exchange id (optional)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.EndpointsApi.Endpoints(context.Background()).FilterExchangeId(filterExchangeId).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `EndpointsApi.Endpoints``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `Endpoints`: []AccountEndpoint
    fmt.Fprintf(os.Stdout, "Response from `EndpointsApi.Endpoints`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiEndpointsRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterExchangeId** | **[]string** | Exchange id | 

### Return type

[**[]AccountEndpoint**](AccountEndpoint.md)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader), [APIKeyQueryParam](../README.md#APIKeyQueryParam)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

