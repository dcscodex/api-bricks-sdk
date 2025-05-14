# \ExchangeRatesAPI

All URIs are relative to *https://api-historical.exrates.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GetSpecificRate**](ExchangeRatesAPI.md#GetSpecificRate) | **Get** /v1/exchangerate/{asset_id_base}/{asset_id_quote} | Get specific rate
[**V1ExchangerateAssetIdBaseAssetIdQuoteHistoryGet**](ExchangeRatesAPI.md#V1ExchangerateAssetIdBaseAssetIdQuoteHistoryGet) | **Get** /v1/exchangerate/{asset_id_base}/{asset_id_quote}/history | Timeseries data
[**V1ExchangerateAssetIdBaseGet**](ExchangeRatesAPI.md#V1ExchangerateAssetIdBaseGet) | **Get** /v1/exchangerate/{asset_id_base} | Get all current rates
[**V1ExchangerateHistoryPeriodsGet**](ExchangeRatesAPI.md#V1ExchangerateHistoryPeriodsGet) | **Get** /v1/exchangerate/history/periods | Timeseries periods



## GetSpecificRate

> V1ExchangeRate GetSpecificRate(ctx, assetIdBase, assetIdQuote).Time(time).Execute()

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
	time := "time_example" // string | Time at which exchange rate is calculated (optional, if not supplied then current rate is returned) (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.ExchangeRatesAPI.GetSpecificRate(context.Background(), assetIdBase, assetIdQuote).Time(time).Execute()
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


 **time** | **string** | Time at which exchange rate is calculated (optional, if not supplied then current rate is returned) | 

### Return type

[**V1ExchangeRate**](V1ExchangeRate.md)

### Authorization

[APIKey](../README.md#APIKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## V1ExchangerateAssetIdBaseAssetIdQuoteHistoryGet

> []V1ExchangeRatesTimeseriesItem V1ExchangerateAssetIdBaseAssetIdQuoteHistoryGet(ctx, assetIdBase, assetIdQuote).PeriodId(periodId).TimeStart(timeStart).TimeEnd(timeEnd).Limit(limit).Execute()

Timeseries data



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
	assetIdQuote := "assetIdQuote_example" // string | Requested exchange rates base asset identifier (from the Metadata -> Assets)
	periodId := "periodId_example" // string | Identifier of requested timeseries period (required, e.g. `5SEC` or `1HRS`) (optional)
	timeStart := "timeStart_example" // string | Timeseries starting time in ISO 8601 (required) (optional)
	timeEnd := "timeEnd_example" // string | Timeseries ending time in ISO 8601 (required) (optional)
	limit := int32(56) // int32 | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) (optional) (default to 100)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.ExchangeRatesAPI.V1ExchangerateAssetIdBaseAssetIdQuoteHistoryGet(context.Background(), assetIdBase, assetIdQuote).PeriodId(periodId).TimeStart(timeStart).TimeEnd(timeEnd).Limit(limit).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ExchangeRatesAPI.V1ExchangerateAssetIdBaseAssetIdQuoteHistoryGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `V1ExchangerateAssetIdBaseAssetIdQuoteHistoryGet`: []V1ExchangeRatesTimeseriesItem
	fmt.Fprintf(os.Stdout, "Response from `ExchangeRatesAPI.V1ExchangerateAssetIdBaseAssetIdQuoteHistoryGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**assetIdBase** | **string** | Requested exchange rates base asset identifier (from the Metadata -&gt; Assets) | 
**assetIdQuote** | **string** | Requested exchange rates base asset identifier (from the Metadata -&gt; Assets) | 

### Other Parameters

Other parameters are passed through a pointer to a apiV1ExchangerateAssetIdBaseAssetIdQuoteHistoryGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


 **periodId** | **string** | Identifier of requested timeseries period (required, e.g. &#x60;5SEC&#x60; or &#x60;1HRS&#x60;) | 
 **timeStart** | **string** | Timeseries starting time in ISO 8601 (required) | 
 **timeEnd** | **string** | Timeseries ending time in ISO 8601 (required) | 
 **limit** | **int32** | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [default to 100]

### Return type

[**[]V1ExchangeRatesTimeseriesItem**](V1ExchangeRatesTimeseriesItem.md)

### Authorization

[APIKey](../README.md#APIKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## V1ExchangerateAssetIdBaseGet

> V1ExchangeRates V1ExchangerateAssetIdBaseGet(ctx, assetIdBase).FilterAssetId(filterAssetId).Invert(invert).Time(time).Execute()

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
	time := "time_example" // string | Time for historical rates (optional) (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.ExchangeRatesAPI.V1ExchangerateAssetIdBaseGet(context.Background(), assetIdBase).FilterAssetId(filterAssetId).Invert(invert).Time(time).Execute()
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
 **time** | **string** | Time for historical rates (optional) | 

### Return type

[**V1ExchangeRates**](V1ExchangeRates.md)

### Authorization

[APIKey](../README.md#APIKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## V1ExchangerateHistoryPeriodsGet

> []V1TimeseriesPeriod V1ExchangerateHistoryPeriodsGet(ctx).Execute()

Timeseries periods



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
	resp, r, err := apiClient.ExchangeRatesAPI.V1ExchangerateHistoryPeriodsGet(context.Background()).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ExchangeRatesAPI.V1ExchangerateHistoryPeriodsGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `V1ExchangerateHistoryPeriodsGet`: []V1TimeseriesPeriod
	fmt.Fprintf(os.Stdout, "Response from `ExchangeRatesAPI.V1ExchangerateHistoryPeriodsGet`: %v\n", resp)
}
```

### Path Parameters

This endpoint does not need any parameter.

### Other Parameters

Other parameters are passed through a pointer to a apiV1ExchangerateHistoryPeriodsGetRequest struct via the builder pattern


### Return type

[**[]V1TimeseriesPeriod**](V1TimeseriesPeriod.md)

### Authorization

[APIKey](../README.md#APIKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

