# \OptionsAPI

All URIs are relative to *https://rest.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**V1OptionsExchangeIdCurrentGet**](OptionsAPI.md#V1OptionsExchangeIdCurrentGet) | **Get** /v1/options/{exchange_id}/current | Current data by Exchange



## V1OptionsExchangeIdCurrentGet

> []OptionsOptionExchangeGroup V1OptionsExchangeIdCurrentGet(ctx, exchangeId).Execute()

Current data by Exchange



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
	exchangeId := "exchangeId_example" // string | Exchange identifier (from the Metadata -> Exchanges)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.OptionsAPI.V1OptionsExchangeIdCurrentGet(context.Background(), exchangeId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `OptionsAPI.V1OptionsExchangeIdCurrentGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `V1OptionsExchangeIdCurrentGet`: []OptionsOptionExchangeGroup
	fmt.Fprintf(os.Stdout, "Response from `OptionsAPI.V1OptionsExchangeIdCurrentGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**exchangeId** | **string** | Exchange identifier (from the Metadata -&gt; Exchanges) | 

### Other Parameters

Other parameters are passed through a pointer to a apiV1OptionsExchangeIdCurrentGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**[]OptionsOptionExchangeGroup**](OptionsOptionExchangeGroup.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

