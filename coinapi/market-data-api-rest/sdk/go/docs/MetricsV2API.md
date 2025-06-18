# \MetricsV2API

All URIs are relative to *https://rest.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**V2MetricsAssetHistoryGet**](MetricsV2API.md#V2MetricsAssetHistoryGet) | **Get** /v2/metrics/asset/history | Historical metrics for the asset
[**V2MetricsAssetListingGet**](MetricsV2API.md#V2MetricsAssetListingGet) | **Get** /v2/metrics/asset/listing | Listing of metrics available for specific asset
[**V2MetricsChainHistoryGet**](MetricsV2API.md#V2MetricsChainHistoryGet) | **Get** /v2/metrics/chain/history | Historical metrics for the chain
[**V2MetricsChainListingGet**](MetricsV2API.md#V2MetricsChainListingGet) | **Get** /v2/metrics/chain/listing | Listing of metrics available for specific chain
[**V2MetricsExchangeHistoryGet**](MetricsV2API.md#V2MetricsExchangeHistoryGet) | **Get** /v2/metrics/exchange/history | Historical metrics for the exchange
[**V2MetricsExchangeListingGet**](MetricsV2API.md#V2MetricsExchangeListingGet) | **Get** /v2/metrics/exchange/listing | Listing of metrics available for specific exchange
[**V2MetricsListingGet**](MetricsV2API.md#V2MetricsListingGet) | **Get** /v2/metrics/listing | Listing of all supported metrics



## V2MetricsAssetHistoryGet

> []map[string]interface{} V2MetricsAssetHistoryGet(ctx).MetricId(metricId).AssetId(assetId).TimeStart(timeStart).TimeEnd(timeEnd).TimeFormat(timeFormat).PeriodId(periodId).Limit(limit).Execute()

Historical metrics for the asset



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
	metricId := "metricId_example" // string | Metric identifier (e.g., `TVL`, `STABLES_BRIDGED_USD`)
	assetId := "assetId_example" // string | Asset identifier (e.g., `USDC`, `USDT`)
	timeStart := time.Now() // time.Time | Starting time in ISO 8601 (optional)
	timeEnd := time.Now() // time.Time | Ending time in ISO 8601 (optional)
	timeFormat := "timeFormat_example" // string | If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec) (optional)
	periodId := "periodId_example" // string | Identifier of requested timeseries period (e.g. `1MIN` or `2MTH`), default value is `1MIN` (optional)
	limit := int32(56) // int32 | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) (optional) (default to 100)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.MetricsV2API.V2MetricsAssetHistoryGet(context.Background()).MetricId(metricId).AssetId(assetId).TimeStart(timeStart).TimeEnd(timeEnd).TimeFormat(timeFormat).PeriodId(periodId).Limit(limit).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `MetricsV2API.V2MetricsAssetHistoryGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `V2MetricsAssetHistoryGet`: []map[string]interface{}
	fmt.Fprintf(os.Stdout, "Response from `MetricsV2API.V2MetricsAssetHistoryGet`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiV2MetricsAssetHistoryGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **metricId** | **string** | Metric identifier (e.g., &#x60;TVL&#x60;, &#x60;STABLES_BRIDGED_USD&#x60;) | 
 **assetId** | **string** | Asset identifier (e.g., &#x60;USDC&#x60;, &#x60;USDT&#x60;) | 
 **timeStart** | **time.Time** | Starting time in ISO 8601 | 
 **timeEnd** | **time.Time** | Ending time in ISO 8601 | 
 **timeFormat** | **string** | If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec) | 
 **periodId** | **string** | Identifier of requested timeseries period (e.g. &#x60;1MIN&#x60; or &#x60;2MTH&#x60;), default value is &#x60;1MIN&#x60; | 
 **limit** | **int32** | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [default to 100]

### Return type

**[]map[string]interface{}**

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## V2MetricsAssetListingGet

> []V1MetricInfo V2MetricsAssetListingGet(ctx).AssetId(assetId).Execute()

Listing of metrics available for specific asset



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
	assetId := "assetId_example" // string | Asset identifier (e.g., USDC, USDT)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.MetricsV2API.V2MetricsAssetListingGet(context.Background()).AssetId(assetId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `MetricsV2API.V2MetricsAssetListingGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `V2MetricsAssetListingGet`: []V1MetricInfo
	fmt.Fprintf(os.Stdout, "Response from `MetricsV2API.V2MetricsAssetListingGet`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiV2MetricsAssetListingGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **assetId** | **string** | Asset identifier (e.g., USDC, USDT) | 

### Return type

[**[]V1MetricInfo**](V1MetricInfo.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## V2MetricsChainHistoryGet

> []map[string]interface{} V2MetricsChainHistoryGet(ctx).MetricId(metricId).ChainId(chainId).TimeStart(timeStart).TimeEnd(timeEnd).TimeFormat(timeFormat).PeriodId(periodId).Limit(limit).Execute()

Historical metrics for the chain



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
	metricId := "metricId_example" // string | Metric identifier (e.g., `TVL`, `STABLES_BRIDGED_USD`)
	chainId := "chainId_example" // string | Chain identifier (e.g., `Ethereum`, `Arbitrum`)
	timeStart := time.Now() // time.Time | Starting time in ISO 8601 (optional)
	timeEnd := time.Now() // time.Time | Ending time in ISO 8601 (optional)
	timeFormat := "timeFormat_example" // string | If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec) (optional)
	periodId := "periodId_example" // string | Identifier of requested timeseries period (e.g. `1MIN` or `2MTH`), default value is `1MIN` (optional)
	limit := int32(56) // int32 | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) (optional) (default to 100)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.MetricsV2API.V2MetricsChainHistoryGet(context.Background()).MetricId(metricId).ChainId(chainId).TimeStart(timeStart).TimeEnd(timeEnd).TimeFormat(timeFormat).PeriodId(periodId).Limit(limit).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `MetricsV2API.V2MetricsChainHistoryGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `V2MetricsChainHistoryGet`: []map[string]interface{}
	fmt.Fprintf(os.Stdout, "Response from `MetricsV2API.V2MetricsChainHistoryGet`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiV2MetricsChainHistoryGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **metricId** | **string** | Metric identifier (e.g., &#x60;TVL&#x60;, &#x60;STABLES_BRIDGED_USD&#x60;) | 
 **chainId** | **string** | Chain identifier (e.g., &#x60;Ethereum&#x60;, &#x60;Arbitrum&#x60;) | 
 **timeStart** | **time.Time** | Starting time in ISO 8601 | 
 **timeEnd** | **time.Time** | Ending time in ISO 8601 | 
 **timeFormat** | **string** | If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec) | 
 **periodId** | **string** | Identifier of requested timeseries period (e.g. &#x60;1MIN&#x60; or &#x60;2MTH&#x60;), default value is &#x60;1MIN&#x60; | 
 **limit** | **int32** | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [default to 100]

### Return type

**[]map[string]interface{}**

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## V2MetricsChainListingGet

> []V1MetricInfo V2MetricsChainListingGet(ctx).ChainId(chainId).Execute()

Listing of metrics available for specific chain



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
	chainId := "chainId_example" // string | Chain identifier (e.g., ETHEREUM, ARBITRUM)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.MetricsV2API.V2MetricsChainListingGet(context.Background()).ChainId(chainId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `MetricsV2API.V2MetricsChainListingGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `V2MetricsChainListingGet`: []V1MetricInfo
	fmt.Fprintf(os.Stdout, "Response from `MetricsV2API.V2MetricsChainListingGet`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiV2MetricsChainListingGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chainId** | **string** | Chain identifier (e.g., ETHEREUM, ARBITRUM) | 

### Return type

[**[]V1MetricInfo**](V1MetricInfo.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## V2MetricsExchangeHistoryGet

> []map[string]interface{} V2MetricsExchangeHistoryGet(ctx).MetricId(metricId).ExchangeId(exchangeId).TimeStart(timeStart).TimeEnd(timeEnd).TimeFormat(timeFormat).PeriodId(periodId).Limit(limit).Execute()

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
	metricId := "metricId_example" // string | Metric identifier (e.g., `TVL`, `STABLES_BRIDGED_USD`)
	exchangeId := "exchangeId_example" // string | Exchange identifier (e.g., `BINANCE`, `UNISWAP-V3-ETHEREUM`)
	timeStart := time.Now() // time.Time | Starting time in ISO 8601 (optional)
	timeEnd := time.Now() // time.Time | Ending time in ISO 8601 (optional)
	timeFormat := "timeFormat_example" // string | If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec) (optional)
	periodId := "periodId_example" // string | Identifier of requested timeseries period (e.g. `1MIN` or `2MTH`), default value is `1MIN` (optional)
	limit := int32(56) // int32 | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) (optional) (default to 100)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.MetricsV2API.V2MetricsExchangeHistoryGet(context.Background()).MetricId(metricId).ExchangeId(exchangeId).TimeStart(timeStart).TimeEnd(timeEnd).TimeFormat(timeFormat).PeriodId(periodId).Limit(limit).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `MetricsV2API.V2MetricsExchangeHistoryGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `V2MetricsExchangeHistoryGet`: []map[string]interface{}
	fmt.Fprintf(os.Stdout, "Response from `MetricsV2API.V2MetricsExchangeHistoryGet`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiV2MetricsExchangeHistoryGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **metricId** | **string** | Metric identifier (e.g., &#x60;TVL&#x60;, &#x60;STABLES_BRIDGED_USD&#x60;) | 
 **exchangeId** | **string** | Exchange identifier (e.g., &#x60;BINANCE&#x60;, &#x60;UNISWAP-V3-ETHEREUM&#x60;) | 
 **timeStart** | **time.Time** | Starting time in ISO 8601 | 
 **timeEnd** | **time.Time** | Ending time in ISO 8601 | 
 **timeFormat** | **string** | If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec) | 
 **periodId** | **string** | Identifier of requested timeseries period (e.g. &#x60;1MIN&#x60; or &#x60;2MTH&#x60;), default value is &#x60;1MIN&#x60; | 
 **limit** | **int32** | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [default to 100]

### Return type

**[]map[string]interface{}**

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## V2MetricsExchangeListingGet

> []V1MetricInfo V2MetricsExchangeListingGet(ctx).ExchangeId(exchangeId).Execute()

Listing of metrics available for specific exchange



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
	exchangeId := "exchangeId_example" // string | Exchange identifier (e.g., BINANCE, UNISWAP-V3-ETHEREUM)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.MetricsV2API.V2MetricsExchangeListingGet(context.Background()).ExchangeId(exchangeId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `MetricsV2API.V2MetricsExchangeListingGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `V2MetricsExchangeListingGet`: []V1MetricInfo
	fmt.Fprintf(os.Stdout, "Response from `MetricsV2API.V2MetricsExchangeListingGet`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiV2MetricsExchangeListingGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchangeId** | **string** | Exchange identifier (e.g., BINANCE, UNISWAP-V3-ETHEREUM) | 

### Return type

[**[]V1MetricInfo**](V1MetricInfo.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## V2MetricsListingGet

> []V1MetricInfo V2MetricsListingGet(ctx).Execute()

Listing of all supported metrics



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
	resp, r, err := apiClient.MetricsV2API.V2MetricsListingGet(context.Background()).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `MetricsV2API.V2MetricsListingGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `V2MetricsListingGet`: []V1MetricInfo
	fmt.Fprintf(os.Stdout, "Response from `MetricsV2API.V2MetricsListingGet`: %v\n", resp)
}
```

### Path Parameters

This endpoint does not need any parameter.

### Other Parameters

Other parameters are passed through a pointer to a apiV2MetricsListingGetRequest struct via the builder pattern


### Return type

[**[]V1MetricInfo**](V1MetricInfo.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

