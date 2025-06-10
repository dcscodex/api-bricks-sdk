# \ExchangeRatesAPI

All URIs are relative to *https://api-realtime.exrates.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GetSpecificRate**](ExchangeRatesAPI.md#GetSpecificRate) | **Get** /v1/exchangerate/{asset_id_base}/{asset_id_quote} | Get specific rate
[**V1ExchangerateAssetIdBaseGet**](ExchangeRatesAPI.md#V1ExchangerateAssetIdBaseGet) | **Get** /v1/exchangerate/{asset_id_base} | Get all current rates



## GetSpecificRate

> V1ExchangeRate GetSpecificRate(ctx, assetIdBase, assetIdQuote).Execute()

Get specific rate



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
	assetIdBase := "assetIdBase_example" // string | Requested exchange rate base asset identifier (from the Metadata -> Assets)
	assetIdQuote := "assetIdQuote_example" // string | Requested exchange rate quote asset identifier (from the Metadata -> Assets)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.ExchangeRatesAPI.GetSpecificRate(context.Background(), assetIdBase, assetIdQuote).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ExchangeRatesAPI.GetSpecificRate``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `GetSpecificRate`: V1ExchangeRate
	fmt.Fprintf(os.Stdout, "Response from `ExchangeRatesAPI.GetSpecificRate`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**assetIdBase** | **string** | Requested exchange rate base asset identifier (from the Metadata -&gt; Assets) | 
**assetIdQuote** | **string** | Requested exchange rate quote asset identifier (from the Metadata -&gt; Assets) | 

### Other Parameters

Other parameters are passed through a pointer to a apiGetSpecificRateRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

[**V1ExchangeRate**](V1ExchangeRate.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## V1ExchangerateAssetIdBaseGet

> V1ExchangeRates V1ExchangerateAssetIdBaseGet(ctx, assetIdBase).FilterAssetId(filterAssetId).Invert(invert).Execute()

Get all current rates



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
	assetIdBase := "assetIdBase_example" // string | Requested exchange rates base asset identifier (from the Metadata -> Assets)
	filterAssetId := "filterAssetId_example" // string | Comma or semicolon delimited asset identifiers used to filter response (optional) (optional)
	invert := true // bool | True will invert all the rates (optional, if true then rates will be calculated as `rate = 1 / actual_rate` eg. `USD/BTC` as `BTC/USD`) (optional) (default to false)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.ExchangeRatesAPI.V1ExchangerateAssetIdBaseGet(context.Background(), assetIdBase).FilterAssetId(filterAssetId).Invert(invert).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ExchangeRatesAPI.V1ExchangerateAssetIdBaseGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `V1ExchangerateAssetIdBaseGet`: V1ExchangeRates
	fmt.Fprintf(os.Stdout, "Response from `ExchangeRatesAPI.V1ExchangerateAssetIdBaseGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**assetIdBase** | **string** | Requested exchange rates base asset identifier (from the Metadata -&gt; Assets) | 

### Other Parameters

Other parameters are passed through a pointer to a apiV1ExchangerateAssetIdBaseGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **filterAssetId** | **string** | Comma or semicolon delimited asset identifiers used to filter response (optional) | 
 **invert** | **bool** | True will invert all the rates (optional, if true then rates will be calculated as &#x60;rate &#x3D; 1 / actual_rate&#x60; eg. &#x60;USD/BTC&#x60; as &#x60;BTC/USD&#x60;) | [default to false]

### Return type

[**V1ExchangeRates**](V1ExchangeRates.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

