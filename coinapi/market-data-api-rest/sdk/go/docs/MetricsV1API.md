# \MetricsV1API

All URIs are relative to *https://rest.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**V1MetricsAssetCurrentGet**](MetricsV1API.md#V1MetricsAssetCurrentGet) | **Get** /v1/metrics/asset/current | Current metrics for given asset
[**V1MetricsAssetHistoryGet**](MetricsV1API.md#V1MetricsAssetHistoryGet) | **Get** /v1/metrics/asset/history | Historical metrics for asset
[**V1MetricsAssetListingGet**](MetricsV1API.md#V1MetricsAssetListingGet) | **Get** /v1/metrics/asset/listing | Listing of all supported metrics for asset
[**V1MetricsExchangeCurrentGet**](MetricsV1API.md#V1MetricsExchangeCurrentGet) | **Get** /v1/metrics/exchange/current | Current metrics for given exchange
[**V1MetricsExchangeHistoryGet**](MetricsV1API.md#V1MetricsExchangeHistoryGet) | **Get** /v1/metrics/exchange/history | Historical metrics for the exchange
[**V1MetricsExchangeListingGet**](MetricsV1API.md#V1MetricsExchangeListingGet) | **Get** /v1/metrics/exchange/listing | Listing of all supported exchange metrics
[**V1MetricsListingGet**](MetricsV1API.md#V1MetricsListingGet) | **Get** /v1/metrics/listing | Listing of all supported metrics by CoinAPI
[**V1MetricsSymbolCurrentGet**](MetricsV1API.md#V1MetricsSymbolCurrentGet) | **Get** /v1/metrics/symbol/current | Current metrics for given symbol
[**V1MetricsSymbolHistoryGet**](MetricsV1API.md#V1MetricsSymbolHistoryGet) | **Get** /v1/metrics/symbol/history | Historical metrics for symbol
[**V1MetricsSymbolListingGet**](MetricsV1API.md#V1MetricsSymbolListingGet) | **Get** /v1/metrics/symbol/listing | Listing of all supported metrics for symbol



## V1MetricsAssetCurrentGet

> []V1GeneralData V1MetricsAssetCurrentGet(ctx).MetricId(metricId).AssetId(assetId).AssetIdExternal(assetIdExternal).ExchangeId(exchangeId).Execute()

Current metrics for given asset



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
	metricId := "metricId_example" // string | Metric identifier (from the Metrics -> Listing) (optional)
	assetId := "assetId_example" // string | Asset identifier (from the Metadata -> Assets) (optional)
	assetIdExternal := "assetIdExternal_example" // string | Exchange asset identifier (optional)
	exchangeId := "exchangeId_example" // string | Exchange identifier (from the Metadata -> Exchanges) (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.MetricsV1API.V1MetricsAssetCurrentGet(context.Background()).MetricId(metricId).AssetId(assetId).AssetIdExternal(assetIdExternal).ExchangeId(exchangeId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `MetricsV1API.V1MetricsAssetCurrentGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `V1MetricsAssetCurrentGet`: []V1GeneralData
	fmt.Fprintf(os.Stdout, "Response from `MetricsV1API.V1MetricsAssetCurrentGet`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiV1MetricsAssetCurrentGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **metricId** | **string** | Metric identifier (from the Metrics -&gt; Listing) | 
 **assetId** | **string** | Asset identifier (from the Metadata -&gt; Assets) | 
 **assetIdExternal** | **string** | Exchange asset identifier | 
 **exchangeId** | **string** | Exchange identifier (from the Metadata -&gt; Exchanges) | 

### Return type

[**[]V1GeneralData**](V1GeneralData.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## V1MetricsAssetHistoryGet

> []V1MetricData V1MetricsAssetHistoryGet(ctx).MetricId(metricId).ExchangeId(exchangeId).AssetId(assetId).AssetIdExternal(assetIdExternal).TimeStart(timeStart).TimeEnd(timeEnd).TimeFormat(timeFormat).PeriodId(periodId).Limit(limit).Execute()

Historical metrics for asset



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
    "time"
	openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {
	metricId := "metricId_example" // string | Metric identifier (from the Metrics -> Listing)
	exchangeId := "exchangeId_example" // string | Exchange identifier (from the Metadata -> Exchanges)
	assetId := "assetId_example" // string | Asset identifier (from the Metadata -> Assets) (optional)
	assetIdExternal := "assetIdExternal_example" // string | Exchange asset identifier (optional)
	timeStart := time.Now() // time.Time | Starting time in ISO 8601 (optional)
	timeEnd := time.Now() // time.Time | Ending time in ISO 8601 (optional)
	timeFormat := "timeFormat_example" // string | If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec) (optional)
	periodId := "periodId_example" // string | Identifier of requested timeseries period (e.g. `5SEC` or `2MTH`), default value is `1SEC` (optional)
	limit := int32(56) // int32 | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) (optional) (default to 100)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.MetricsV1API.V1MetricsAssetHistoryGet(context.Background()).MetricId(metricId).ExchangeId(exchangeId).AssetId(assetId).AssetIdExternal(assetIdExternal).TimeStart(timeStart).TimeEnd(timeEnd).TimeFormat(timeFormat).PeriodId(periodId).Limit(limit).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `MetricsV1API.V1MetricsAssetHistoryGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `V1MetricsAssetHistoryGet`: []V1MetricData
	fmt.Fprintf(os.Stdout, "Response from `MetricsV1API.V1MetricsAssetHistoryGet`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiV1MetricsAssetHistoryGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **metricId** | **string** | Metric identifier (from the Metrics -&gt; Listing) | 
 **exchangeId** | **string** | Exchange identifier (from the Metadata -&gt; Exchanges) | 
 **assetId** | **string** | Asset identifier (from the Metadata -&gt; Assets) | 
 **assetIdExternal** | **string** | Exchange asset identifier | 
 **timeStart** | **time.Time** | Starting time in ISO 8601 | 
 **timeEnd** | **time.Time** | Ending time in ISO 8601 | 
 **timeFormat** | **string** | If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec) | 
 **periodId** | **string** | Identifier of requested timeseries period (e.g. &#x60;5SEC&#x60; or &#x60;2MTH&#x60;), default value is &#x60;1SEC&#x60; | 
 **limit** | **int32** | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [default to 100]

### Return type

[**[]V1MetricData**](V1MetricData.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## V1MetricsAssetListingGet

> []V1ListingItem V1MetricsAssetListingGet(ctx).MetricId(metricId).ExchangeId(exchangeId).ChainId(chainId).NetworkId(networkId).AssetId(assetId).AssetIdExternal(assetIdExternal).Execute()

Listing of all supported metrics for asset



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
	metricId := "metricId_example" // string | Metric identifier (from the Metrics -> Listing) (optional)
	exchangeId := "exchangeId_example" // string | Exchange identifier (from the Metadata -> Exchanges) (optional)
	chainId := "chainId_example" // string | Chain identifier (optional)
	networkId := "networkId_example" // string | Network identifier (optional)
	assetId := "assetId_example" // string | Asset identifier (from the Metadata -> Assets) (optional)
	assetIdExternal := "assetIdExternal_example" // string | The asset external identifier (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.MetricsV1API.V1MetricsAssetListingGet(context.Background()).MetricId(metricId).ExchangeId(exchangeId).ChainId(chainId).NetworkId(networkId).AssetId(assetId).AssetIdExternal(assetIdExternal).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `MetricsV1API.V1MetricsAssetListingGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `V1MetricsAssetListingGet`: []V1ListingItem
	fmt.Fprintf(os.Stdout, "Response from `MetricsV1API.V1MetricsAssetListingGet`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiV1MetricsAssetListingGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **metricId** | **string** | Metric identifier (from the Metrics -&gt; Listing) | 
 **exchangeId** | **string** | Exchange identifier (from the Metadata -&gt; Exchanges) | 
 **chainId** | **string** | Chain identifier | 
 **networkId** | **string** | Network identifier | 
 **assetId** | **string** | Asset identifier (from the Metadata -&gt; Assets) | 
 **assetIdExternal** | **string** | The asset external identifier | 

### Return type

[**[]V1ListingItem**](V1ListingItem.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## V1MetricsExchangeCurrentGet

> []V1GeneralData V1MetricsExchangeCurrentGet(ctx).ExchangeId(exchangeId).MetricId(metricId).Execute()

Current metrics for given exchange



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
	exchangeId := "exchangeId_example" // string | The exchange identifier (from the Metadata -> Exchanges)
	metricId := "metricId_example" // string | The metric identifier (from the Metrics -> Listing) (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.MetricsV1API.V1MetricsExchangeCurrentGet(context.Background()).ExchangeId(exchangeId).MetricId(metricId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `MetricsV1API.V1MetricsExchangeCurrentGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `V1MetricsExchangeCurrentGet`: []V1GeneralData
	fmt.Fprintf(os.Stdout, "Response from `MetricsV1API.V1MetricsExchangeCurrentGet`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiV1MetricsExchangeCurrentGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchangeId** | **string** | The exchange identifier (from the Metadata -&gt; Exchanges) | 
 **metricId** | **string** | The metric identifier (from the Metrics -&gt; Listing) | 

### Return type

[**[]V1GeneralData**](V1GeneralData.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## V1MetricsExchangeHistoryGet

> []V1MetricData V1MetricsExchangeHistoryGet(ctx).MetricId(metricId).ExchangeId(exchangeId).TimeStart(timeStart).TimeEnd(timeEnd).TimeFormat(timeFormat).PeriodId(periodId).Limit(limit).Execute()

Historical metrics for the exchange



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
    "time"
	openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {
	metricId := "metricId_example" // string | Metric identifier (from the Metrics -> Listing)
	exchangeId := "exchangeId_example" // string | Exchange identifier (from the Metadata -> Exchanges)
	timeStart := time.Now() // time.Time | Starting time in ISO 8601 (optional)
	timeEnd := time.Now() // time.Time | Ending time in ISO 8601 (optional)
	timeFormat := "timeFormat_example" // string | If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec) (optional)
	periodId := "periodId_example" // string | Identifier of requested timeseries period (e.g. `5SEC` or `2MTH`), default value is `1SEC` (optional)
	limit := int32(56) // int32 | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) (optional) (default to 100)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.MetricsV1API.V1MetricsExchangeHistoryGet(context.Background()).MetricId(metricId).ExchangeId(exchangeId).TimeStart(timeStart).TimeEnd(timeEnd).TimeFormat(timeFormat).PeriodId(periodId).Limit(limit).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `MetricsV1API.V1MetricsExchangeHistoryGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `V1MetricsExchangeHistoryGet`: []V1MetricData
	fmt.Fprintf(os.Stdout, "Response from `MetricsV1API.V1MetricsExchangeHistoryGet`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiV1MetricsExchangeHistoryGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **metricId** | **string** | Metric identifier (from the Metrics -&gt; Listing) | 
 **exchangeId** | **string** | Exchange identifier (from the Metadata -&gt; Exchanges) | 
 **timeStart** | **time.Time** | Starting time in ISO 8601 | 
 **timeEnd** | **time.Time** | Ending time in ISO 8601 | 
 **timeFormat** | **string** | If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec) | 
 **periodId** | **string** | Identifier of requested timeseries period (e.g. &#x60;5SEC&#x60; or &#x60;2MTH&#x60;), default value is &#x60;1SEC&#x60; | 
 **limit** | **int32** | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [default to 100]

### Return type

[**[]V1MetricData**](V1MetricData.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## V1MetricsExchangeListingGet

> []V1ListingItem V1MetricsExchangeListingGet(ctx).ExchangeId(exchangeId).MetricId(metricId).Execute()

Listing of all supported exchange metrics



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
	exchangeId := "exchangeId_example" // string | The exchange identifier (from the Metadata -> Exchanges)
	metricId := "metricId_example" // string | The metric identifier (from the Metrics -> Listing) (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.MetricsV1API.V1MetricsExchangeListingGet(context.Background()).ExchangeId(exchangeId).MetricId(metricId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `MetricsV1API.V1MetricsExchangeListingGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `V1MetricsExchangeListingGet`: []V1ListingItem
	fmt.Fprintf(os.Stdout, "Response from `MetricsV1API.V1MetricsExchangeListingGet`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiV1MetricsExchangeListingGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchangeId** | **string** | The exchange identifier (from the Metadata -&gt; Exchanges) | 
 **metricId** | **string** | The metric identifier (from the Metrics -&gt; Listing) | 

### Return type

[**[]V1ListingItem**](V1ListingItem.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## V1MetricsListingGet

> []V1Metric V1MetricsListingGet(ctx).Execute()

Listing of all supported metrics by CoinAPI



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
	resp, r, err := apiClient.MetricsV1API.V1MetricsListingGet(context.Background()).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `MetricsV1API.V1MetricsListingGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `V1MetricsListingGet`: []V1Metric
	fmt.Fprintf(os.Stdout, "Response from `MetricsV1API.V1MetricsListingGet`: %v\n", resp)
}
```

### Path Parameters

This endpoint does not need any parameter.

### Other Parameters

Other parameters are passed through a pointer to a apiV1MetricsListingGetRequest struct via the builder pattern


### Return type

[**[]V1Metric**](V1Metric.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## V1MetricsSymbolCurrentGet

> []V1GeneralData V1MetricsSymbolCurrentGet(ctx).MetricId(metricId).SymbolId(symbolId).ExchangeId(exchangeId).Execute()

Current metrics for given symbol



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
	metricId := "metricId_example" // string | Metric identifier (from the Metrics -> Listing) (optional)
	symbolId := "symbolId_example" // string | Symbol identifier (from the Metadata -> Symbols) (optional)
	exchangeId := "exchangeId_example" // string | Exchange id (from the Metadata -> Exchanges) (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.MetricsV1API.V1MetricsSymbolCurrentGet(context.Background()).MetricId(metricId).SymbolId(symbolId).ExchangeId(exchangeId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `MetricsV1API.V1MetricsSymbolCurrentGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `V1MetricsSymbolCurrentGet`: []V1GeneralData
	fmt.Fprintf(os.Stdout, "Response from `MetricsV1API.V1MetricsSymbolCurrentGet`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiV1MetricsSymbolCurrentGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **metricId** | **string** | Metric identifier (from the Metrics -&gt; Listing) | 
 **symbolId** | **string** | Symbol identifier (from the Metadata -&gt; Symbols) | 
 **exchangeId** | **string** | Exchange id (from the Metadata -&gt; Exchanges) | 

### Return type

[**[]V1GeneralData**](V1GeneralData.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## V1MetricsSymbolHistoryGet

> []V1MetricData V1MetricsSymbolHistoryGet(ctx).MetricId(metricId).SymbolId(symbolId).TimeStart(timeStart).TimeEnd(timeEnd).TimeFormat(timeFormat).PeriodId(periodId).Limit(limit).Execute()

Historical metrics for symbol



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
    "time"
	openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {
	metricId := "metricId_example" // string | Metric identifier (from the Metrics -> Listing)
	symbolId := "symbolId_example" // string | Symbol identifier (from the Metadata -> Symbols)
	timeStart := time.Now() // time.Time | Starting time in ISO 8601 (optional)
	timeEnd := time.Now() // time.Time | Ending time in ISO 8601 (optional)
	timeFormat := "timeFormat_example" // string | If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec) (optional)
	periodId := "periodId_example" // string | Identifier of requested timeseries period (e.g. `5SEC` or `2MTH`), default value is `1SEC` (optional)
	limit := int32(56) // int32 | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) (optional) (default to 100)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.MetricsV1API.V1MetricsSymbolHistoryGet(context.Background()).MetricId(metricId).SymbolId(symbolId).TimeStart(timeStart).TimeEnd(timeEnd).TimeFormat(timeFormat).PeriodId(periodId).Limit(limit).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `MetricsV1API.V1MetricsSymbolHistoryGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `V1MetricsSymbolHistoryGet`: []V1MetricData
	fmt.Fprintf(os.Stdout, "Response from `MetricsV1API.V1MetricsSymbolHistoryGet`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiV1MetricsSymbolHistoryGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **metricId** | **string** | Metric identifier (from the Metrics -&gt; Listing) | 
 **symbolId** | **string** | Symbol identifier (from the Metadata -&gt; Symbols) | 
 **timeStart** | **time.Time** | Starting time in ISO 8601 | 
 **timeEnd** | **time.Time** | Ending time in ISO 8601 | 
 **timeFormat** | **string** | If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec) | 
 **periodId** | **string** | Identifier of requested timeseries period (e.g. &#x60;5SEC&#x60; or &#x60;2MTH&#x60;), default value is &#x60;1SEC&#x60; | 
 **limit** | **int32** | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [default to 100]

### Return type

[**[]V1MetricData**](V1MetricData.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## V1MetricsSymbolListingGet

> []V1ListingItem V1MetricsSymbolListingGet(ctx).MetricId(metricId).ExchangeId(exchangeId).SymbolId(symbolId).Execute()

Listing of all supported metrics for symbol



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
	metricId := "metricId_example" // string | Metric identifier (from the Metrics -> Listing) (optional)
	exchangeId := "exchangeId_example" // string | Exchange identifier (from the Metadata -> Exchanges) (optional)
	symbolId := "symbolId_example" // string | Symbol identifier (from the Metadata -> Symbols) (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.MetricsV1API.V1MetricsSymbolListingGet(context.Background()).MetricId(metricId).ExchangeId(exchangeId).SymbolId(symbolId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `MetricsV1API.V1MetricsSymbolListingGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `V1MetricsSymbolListingGet`: []V1ListingItem
	fmt.Fprintf(os.Stdout, "Response from `MetricsV1API.V1MetricsSymbolListingGet`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiV1MetricsSymbolListingGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **metricId** | **string** | Metric identifier (from the Metrics -&gt; Listing) | 
 **exchangeId** | **string** | Exchange identifier (from the Metadata -&gt; Exchanges) | 
 **symbolId** | **string** | Symbol identifier (from the Metadata -&gt; Symbols) | 

### Return type

[**[]V1ListingItem**](V1ListingItem.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

