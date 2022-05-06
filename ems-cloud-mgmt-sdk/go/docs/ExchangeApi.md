# \ExchangeApi

All URIs are relative to *https://ems-mgmt-sandbox.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ExchangeLoginRequire**](ExchangeApi.md#ExchangeLoginRequire) | **Get** /v1/exchanges | Get exchange configuration



## ExchangeLoginRequire

> []ExchangeLoginRequire ExchangeLoginRequire(ctx).Execute()

Get exchange configuration



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

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.ExchangeApi.ExchangeLoginRequire(context.Background()).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `ExchangeApi.ExchangeLoginRequire``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `ExchangeLoginRequire`: []ExchangeLoginRequire
    fmt.Fprintf(os.Stdout, "Response from `ExchangeApi.ExchangeLoginRequire`: %v\n", resp)
}
```

### Path Parameters

This endpoint does not need any parameter.

### Other Parameters

Other parameters are passed through a pointer to a apiExchangeLoginRequireRequest struct via the builder pattern


### Return type

[**[]ExchangeLoginRequire**](ExchangeLoginRequire.md)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader), [APIKeyQueryParam](../README.md#APIKeyQueryParam)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

