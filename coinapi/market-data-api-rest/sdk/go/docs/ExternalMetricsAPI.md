# \ExternalMetricsAPI

All URIs are relative to *https://rest.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**V1ExternalmetricsAssetHistoryGet**](ExternalMetricsAPI.md#V1ExternalmetricsAssetHistoryGet) | **Get** /v1/externalmetrics/asset/history | Historical metrics for the asset from external sources
[**V1ExternalmetricsAssetListingGet**](ExternalMetricsAPI.md#V1ExternalmetricsAssetListingGet) | **Get** /v1/externalmetrics/asset/listing | Listing of metrics available for specific asset
[**V1ExternalmetricsAssetsGet**](ExternalMetricsAPI.md#V1ExternalmetricsAssetsGet) | **Get** /v1/externalmetrics/assets | Listing of all supported external assets
[**V1ExternalmetricsChainHistoryGet**](ExternalMetricsAPI.md#V1ExternalmetricsChainHistoryGet) | **Get** /v1/externalmetrics/chain/history | Historical metrics for the chain from external sources
[**V1ExternalmetricsChainListingGet**](ExternalMetricsAPI.md#V1ExternalmetricsChainListingGet) | **Get** /v1/externalmetrics/chain/listing | Listing of metrics available for specific chain
[**V1ExternalmetricsChainsGet**](ExternalMetricsAPI.md#V1ExternalmetricsChainsGet) | **Get** /v1/externalmetrics/chains | Listing of all supported external chains
[**V1ExternalmetricsExchangeHistoryGet**](ExternalMetricsAPI.md#V1ExternalmetricsExchangeHistoryGet) | **Get** /v1/externalmetrics/exchange/history | Historical metrics for the exchange from both external and internal sources
[**V1ExternalmetricsExchangeListingGet**](ExternalMetricsAPI.md#V1ExternalmetricsExchangeListingGet) | **Get** /v1/externalmetrics/exchange/listing | Listing of metrics available for specific exchange (both external and generic)
[**V1ExternalmetricsExchangesGet**](ExternalMetricsAPI.md#V1ExternalmetricsExchangesGet) | **Get** /v1/externalmetrics/exchanges | Listing of all supported external exchanges
[**V1ExternalmetricsListingGet**](ExternalMetricsAPI.md#V1ExternalmetricsListingGet) | **Get** /v1/externalmetrics/listing | Listing of all supported metrics (both external and generic)



## V1ExternalmetricsAssetHistoryGet

> []map[string]interface{} V1ExternalmetricsAssetHistoryGet(ctx).MetricId(metricId).AssetId(assetId).TimeStart(timeStart).TimeEnd(timeEnd).TimeFormat(timeFormat).PeriodId(periodId).Limit(limit).Execute()

Historical metrics for the asset from external sources



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
	metricId := "metricId_example" // string | Metric identifier (e.g., `TVL`, `STABLES_BRIDGED_USD` - internal metric key)
	assetId := "assetId_example" // string | Asset identifier (e.g., `USDC`, `USDT` - from supported assets list)
	timeStart := time.Now() // time.Time | Starting time in ISO 8601 (optional)
	timeEnd := time.Now() // time.Time | Ending time in ISO 8601 (optional)
	timeFormat := "timeFormat_example" // string | If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec) (optional)
	periodId := "periodId_example" // string | Identifier of requested timeseries period (e.g. `1MIN` or `2MTH`), default value is `1MIN` (optional)
	limit := int32(56) // int32 | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) (optional) (default to 100)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.ExternalMetricsAPI.V1ExternalmetricsAssetHistoryGet(context.Background()).MetricId(metricId).AssetId(assetId).TimeStart(timeStart).TimeEnd(timeEnd).TimeFormat(timeFormat).PeriodId(periodId).Limit(limit).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ExternalMetricsAPI.V1ExternalmetricsAssetHistoryGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `V1ExternalmetricsAssetHistoryGet`: []map[string]interface{}
	fmt.Fprintf(os.Stdout, "Response from `ExternalMetricsAPI.V1ExternalmetricsAssetHistoryGet`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiV1ExternalmetricsAssetHistoryGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **metricId** | **string** | Metric identifier (e.g., &#x60;TVL&#x60;, &#x60;STABLES_BRIDGED_USD&#x60; - internal metric key) | 
 **assetId** | **string** | Asset identifier (e.g., &#x60;USDC&#x60;, &#x60;USDT&#x60; - from supported assets list) | 
 **timeStart** | **time.Time** | Starting time in ISO 8601 | 
 **timeEnd** | **time.Time** | Ending time in ISO 8601 | 
 **timeFormat** | **string** | If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec) | 
 **periodId** | **string** | Identifier of requested timeseries period (e.g. &#x60;1MIN&#x60; or &#x60;2MTH&#x60;), default value is &#x60;1MIN&#x60; | 
 **limit** | **int32** | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [default to 100]

### Return type

**[]map[string]interface{}**

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## V1ExternalmetricsAssetListingGet

> []V1MetricInfo V1ExternalmetricsAssetListingGet(ctx).AssetId(assetId).Execute()

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
	resp, r, err := apiClient.ExternalMetricsAPI.V1ExternalmetricsAssetListingGet(context.Background()).AssetId(assetId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ExternalMetricsAPI.V1ExternalmetricsAssetListingGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `V1ExternalmetricsAssetListingGet`: []V1MetricInfo
	fmt.Fprintf(os.Stdout, "Response from `ExternalMetricsAPI.V1ExternalmetricsAssetListingGet`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiV1ExternalmetricsAssetListingGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **assetId** | **string** | Asset identifier (e.g., USDC, USDT) | 

### Return type

[**[]V1MetricInfo**](V1MetricInfo.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## V1ExternalmetricsAssetsGet

> []V1ExternalAsset V1ExternalmetricsAssetsGet(ctx).Execute()

Listing of all supported external assets



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
	resp, r, err := apiClient.ExternalMetricsAPI.V1ExternalmetricsAssetsGet(context.Background()).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ExternalMetricsAPI.V1ExternalmetricsAssetsGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `V1ExternalmetricsAssetsGet`: []V1ExternalAsset
	fmt.Fprintf(os.Stdout, "Response from `ExternalMetricsAPI.V1ExternalmetricsAssetsGet`: %v\n", resp)
}
```

### Path Parameters

This endpoint does not need any parameter.

### Other Parameters

Other parameters are passed through a pointer to a apiV1ExternalmetricsAssetsGetRequest struct via the builder pattern


### Return type

[**[]V1ExternalAsset**](V1ExternalAsset.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## V1ExternalmetricsChainHistoryGet

> []map[string]interface{} V1ExternalmetricsChainHistoryGet(ctx).MetricId(metricId).ChainId(chainId).TimeStart(timeStart).TimeEnd(timeEnd).TimeFormat(timeFormat).PeriodId(periodId).Limit(limit).Execute()

Historical metrics for the chain from external sources



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
	metricId := "metricId_example" // string | Metric identifier (e.g., `TVL`, `STABLES_BRIDGED_USD` - internal metric key)
	chainId := "chainId_example" // string | Chain identifier (e.g., `Ethereum`, `Arbitrum` - from supported chains list)
	timeStart := time.Now() // time.Time | Starting time in ISO 8601 (optional)
	timeEnd := time.Now() // time.Time | Ending time in ISO 8601 (optional)
	timeFormat := "timeFormat_example" // string | If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec) (optional)
	periodId := "periodId_example" // string | Identifier of requested timeseries period (e.g. `1MIN` or `2MTH`), default value is `1MIN` (optional)
	limit := int32(56) // int32 | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) (optional) (default to 100)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.ExternalMetricsAPI.V1ExternalmetricsChainHistoryGet(context.Background()).MetricId(metricId).ChainId(chainId).TimeStart(timeStart).TimeEnd(timeEnd).TimeFormat(timeFormat).PeriodId(periodId).Limit(limit).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ExternalMetricsAPI.V1ExternalmetricsChainHistoryGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `V1ExternalmetricsChainHistoryGet`: []map[string]interface{}
	fmt.Fprintf(os.Stdout, "Response from `ExternalMetricsAPI.V1ExternalmetricsChainHistoryGet`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiV1ExternalmetricsChainHistoryGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **metricId** | **string** | Metric identifier (e.g., &#x60;TVL&#x60;, &#x60;STABLES_BRIDGED_USD&#x60; - internal metric key) | 
 **chainId** | **string** | Chain identifier (e.g., &#x60;Ethereum&#x60;, &#x60;Arbitrum&#x60; - from supported chains list) | 
 **timeStart** | **time.Time** | Starting time in ISO 8601 | 
 **timeEnd** | **time.Time** | Ending time in ISO 8601 | 
 **timeFormat** | **string** | If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec) | 
 **periodId** | **string** | Identifier of requested timeseries period (e.g. &#x60;1MIN&#x60; or &#x60;2MTH&#x60;), default value is &#x60;1MIN&#x60; | 
 **limit** | **int32** | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [default to 100]

### Return type

**[]map[string]interface{}**

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## V1ExternalmetricsChainListingGet

> []V1MetricInfo V1ExternalmetricsChainListingGet(ctx).ChainId(chainId).Execute()

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
	resp, r, err := apiClient.ExternalMetricsAPI.V1ExternalmetricsChainListingGet(context.Background()).ChainId(chainId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ExternalMetricsAPI.V1ExternalmetricsChainListingGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `V1ExternalmetricsChainListingGet`: []V1MetricInfo
	fmt.Fprintf(os.Stdout, "Response from `ExternalMetricsAPI.V1ExternalmetricsChainListingGet`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiV1ExternalmetricsChainListingGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chainId** | **string** | Chain identifier (e.g., ETHEREUM, ARBITRUM) | 

### Return type

[**[]V1MetricInfo**](V1MetricInfo.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## V1ExternalmetricsChainsGet

> []V1Chain V1ExternalmetricsChainsGet(ctx).Execute()

Listing of all supported external chains



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
	resp, r, err := apiClient.ExternalMetricsAPI.V1ExternalmetricsChainsGet(context.Background()).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ExternalMetricsAPI.V1ExternalmetricsChainsGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `V1ExternalmetricsChainsGet`: []V1Chain
	fmt.Fprintf(os.Stdout, "Response from `ExternalMetricsAPI.V1ExternalmetricsChainsGet`: %v\n", resp)
}
```

### Path Parameters

This endpoint does not need any parameter.

### Other Parameters

Other parameters are passed through a pointer to a apiV1ExternalmetricsChainsGetRequest struct via the builder pattern


### Return type

[**[]V1Chain**](V1Chain.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## V1ExternalmetricsExchangeHistoryGet

> []map[string]interface{} V1ExternalmetricsExchangeHistoryGet(ctx).MetricId(metricId).ExchangeId(exchangeId).TimeStart(timeStart).TimeEnd(timeEnd).TimeFormat(timeFormat).PeriodId(periodId).Limit(limit).Execute()

Historical metrics for the exchange from both external and internal sources



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
	metricId := "metricId_example" // string | Metric identifier (e.g., `TVL`, `STABLES_BRIDGED_USD` for external, or generic metric IDs)
	exchangeId := "exchangeId_example" // string | Exchange identifier (e.g., `BINANCE`, `UNISWAP-V3-ETHEREUM`)
	timeStart := time.Now() // time.Time | Starting time in ISO 8601 (optional)
	timeEnd := time.Now() // time.Time | Ending time in ISO 8601 (optional)
	timeFormat := "timeFormat_example" // string | If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec) (optional)
	periodId := "periodId_example" // string | Identifier of requested timeseries period (e.g. `1MIN` or `2MTH`), default value is `1MIN` (optional)
	limit := int32(56) // int32 | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) (optional) (default to 100)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.ExternalMetricsAPI.V1ExternalmetricsExchangeHistoryGet(context.Background()).MetricId(metricId).ExchangeId(exchangeId).TimeStart(timeStart).TimeEnd(timeEnd).TimeFormat(timeFormat).PeriodId(periodId).Limit(limit).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ExternalMetricsAPI.V1ExternalmetricsExchangeHistoryGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `V1ExternalmetricsExchangeHistoryGet`: []map[string]interface{}
	fmt.Fprintf(os.Stdout, "Response from `ExternalMetricsAPI.V1ExternalmetricsExchangeHistoryGet`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiV1ExternalmetricsExchangeHistoryGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **metricId** | **string** | Metric identifier (e.g., &#x60;TVL&#x60;, &#x60;STABLES_BRIDGED_USD&#x60; for external, or generic metric IDs) | 
 **exchangeId** | **string** | Exchange identifier (e.g., &#x60;BINANCE&#x60;, &#x60;UNISWAP-V3-ETHEREUM&#x60;) | 
 **timeStart** | **time.Time** | Starting time in ISO 8601 | 
 **timeEnd** | **time.Time** | Ending time in ISO 8601 | 
 **timeFormat** | **string** | If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec) | 
 **periodId** | **string** | Identifier of requested timeseries period (e.g. &#x60;1MIN&#x60; or &#x60;2MTH&#x60;), default value is &#x60;1MIN&#x60; | 
 **limit** | **int32** | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [default to 100]

### Return type

**[]map[string]interface{}**

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## V1ExternalmetricsExchangeListingGet

> []V1MetricInfo V1ExternalmetricsExchangeListingGet(ctx).ExchangeId(exchangeId).Execute()

Listing of metrics available for specific exchange (both external and generic)



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
	resp, r, err := apiClient.ExternalMetricsAPI.V1ExternalmetricsExchangeListingGet(context.Background()).ExchangeId(exchangeId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ExternalMetricsAPI.V1ExternalmetricsExchangeListingGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `V1ExternalmetricsExchangeListingGet`: []V1MetricInfo
	fmt.Fprintf(os.Stdout, "Response from `ExternalMetricsAPI.V1ExternalmetricsExchangeListingGet`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiV1ExternalmetricsExchangeListingGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchangeId** | **string** | Exchange identifier (e.g., BINANCE, UNISWAP-V3-ETHEREUM) | 

### Return type

[**[]V1MetricInfo**](V1MetricInfo.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## V1ExternalmetricsExchangesGet

> []V1ExternalExchange V1ExternalmetricsExchangesGet(ctx).Execute()

Listing of all supported external exchanges



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
	resp, r, err := apiClient.ExternalMetricsAPI.V1ExternalmetricsExchangesGet(context.Background()).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ExternalMetricsAPI.V1ExternalmetricsExchangesGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `V1ExternalmetricsExchangesGet`: []V1ExternalExchange
	fmt.Fprintf(os.Stdout, "Response from `ExternalMetricsAPI.V1ExternalmetricsExchangesGet`: %v\n", resp)
}
```

### Path Parameters

This endpoint does not need any parameter.

### Other Parameters

Other parameters are passed through a pointer to a apiV1ExternalmetricsExchangesGetRequest struct via the builder pattern


### Return type

[**[]V1ExternalExchange**](V1ExternalExchange.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## V1ExternalmetricsListingGet

> []V1MetricInfo V1ExternalmetricsListingGet(ctx).Execute()

Listing of all supported metrics (both external and generic)



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
	resp, r, err := apiClient.ExternalMetricsAPI.V1ExternalmetricsListingGet(context.Background()).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ExternalMetricsAPI.V1ExternalmetricsListingGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `V1ExternalmetricsListingGet`: []V1MetricInfo
	fmt.Fprintf(os.Stdout, "Response from `ExternalMetricsAPI.V1ExternalmetricsListingGet`: %v\n", resp)
}
```

### Path Parameters

This endpoint does not need any parameter.

### Other Parameters

Other parameters are passed through a pointer to a apiV1ExternalmetricsListingGetRequest struct via the builder pattern


### Return type

[**[]V1MetricInfo**](V1MetricInfo.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

