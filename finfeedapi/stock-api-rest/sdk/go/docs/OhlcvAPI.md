# \OhlcvAPI

All URIs are relative to *https://api-historical.stock.finfeedapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**V1OhlcvExchangeExchangeIdHistoryGet**](OhlcvAPI.md#V1OhlcvExchangeExchangeIdHistoryGet) | **Get** /v1/ohlcv/exchange/{exchange_id}/history | Historical data by exchange
[**V1OhlcvExchangeSymbolExchangeIdSymbolIdHistoryGet**](OhlcvAPI.md#V1OhlcvExchangeSymbolExchangeIdSymbolIdHistoryGet) | **Get** /v1/ohlcv/exchange-symbol/{exchange_id}/{symbol_id}/history | Historical data
[**V1OhlcvExchangeSymbolExchangeIdSymbolIdLatestGet**](OhlcvAPI.md#V1OhlcvExchangeSymbolExchangeIdSymbolIdLatestGet) | **Get** /v1/ohlcv/exchange-symbol/{exchange_id}/{symbol_id}/latest | Latest data
[**V1OhlcvPeriodsGet**](OhlcvAPI.md#V1OhlcvPeriodsGet) | **Get** /v1/ohlcv/periods | List all periods



## V1OhlcvExchangeExchangeIdHistoryGet

> []OHLCVExchangeTimeseriesItem V1OhlcvExchangeExchangeIdHistoryGet(ctx, exchangeId).PeriodId(periodId).TimeStart(timeStart).TimeEnd(timeEnd).Execute()

Historical data by exchange



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
	exchangeId := "exchangeId_example" // string | Exchange identifier of requested timeseries (from the Metadata -> Exchanges)
	periodId := "periodId_example" // string | Identifier of requested timeseries period (e.g. `5SEC` or `1DAY`)
	timeStart := "timeStart_example" // string | Timeseries starting time in ISO 8601
	timeEnd := "timeEnd_example" // string | Timeseries ending time in ISO 8601

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.OhlcvAPI.V1OhlcvExchangeExchangeIdHistoryGet(context.Background(), exchangeId).PeriodId(periodId).TimeStart(timeStart).TimeEnd(timeEnd).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `OhlcvAPI.V1OhlcvExchangeExchangeIdHistoryGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `V1OhlcvExchangeExchangeIdHistoryGet`: []OHLCVExchangeTimeseriesItem
	fmt.Fprintf(os.Stdout, "Response from `OhlcvAPI.V1OhlcvExchangeExchangeIdHistoryGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**exchangeId** | **string** | Exchange identifier of requested timeseries (from the Metadata -&gt; Exchanges) | 

### Other Parameters

Other parameters are passed through a pointer to a apiV1OhlcvExchangeExchangeIdHistoryGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **periodId** | **string** | Identifier of requested timeseries period (e.g. &#x60;5SEC&#x60; or &#x60;1DAY&#x60;) | 
 **timeStart** | **string** | Timeseries starting time in ISO 8601 | 
 **timeEnd** | **string** | Timeseries ending time in ISO 8601 | 

### Return type

[**[]OHLCVExchangeTimeseriesItem**](OHLCVExchangeTimeseriesItem.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## V1OhlcvExchangeSymbolExchangeIdSymbolIdHistoryGet

> []OHLCVTimeseriesItem V1OhlcvExchangeSymbolExchangeIdSymbolIdHistoryGet(ctx, exchangeId, symbolId).PeriodId(periodId).TimeStart(timeStart).TimeEnd(timeEnd).Limit(limit).Execute()

Historical data



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
	exchangeId := "exchangeId_example" // string | Exchange identifier of requested timeseries (from the Metadata -> Exchanges)
	symbolId := "symbolId_example" // string | Symbol identifier of requested timeseries (from the Metadata -> Symbols)
	periodId := "periodId_example" // string | Identifier of requested timeseries period (e.g. `5SEC` or `2MTH`)
	timeStart := "timeStart_example" // string | Timeseries starting time in ISO 8601 (optional)
	timeEnd := "timeEnd_example" // string | Timeseries ending time in ISO 8601 (optional)
	limit := int32(56) // int32 | Amount of items to return (mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) (optional) (default to 100)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.OhlcvAPI.V1OhlcvExchangeSymbolExchangeIdSymbolIdHistoryGet(context.Background(), exchangeId, symbolId).PeriodId(periodId).TimeStart(timeStart).TimeEnd(timeEnd).Limit(limit).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `OhlcvAPI.V1OhlcvExchangeSymbolExchangeIdSymbolIdHistoryGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `V1OhlcvExchangeSymbolExchangeIdSymbolIdHistoryGet`: []OHLCVTimeseriesItem
	fmt.Fprintf(os.Stdout, "Response from `OhlcvAPI.V1OhlcvExchangeSymbolExchangeIdSymbolIdHistoryGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**exchangeId** | **string** | Exchange identifier of requested timeseries (from the Metadata -&gt; Exchanges) | 
**symbolId** | **string** | Symbol identifier of requested timeseries (from the Metadata -&gt; Symbols) | 

### Other Parameters

Other parameters are passed through a pointer to a apiV1OhlcvExchangeSymbolExchangeIdSymbolIdHistoryGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


 **periodId** | **string** | Identifier of requested timeseries period (e.g. &#x60;5SEC&#x60; or &#x60;2MTH&#x60;) | 
 **timeStart** | **string** | Timeseries starting time in ISO 8601 | 
 **timeEnd** | **string** | Timeseries ending time in ISO 8601 | 
 **limit** | **int32** | Amount of items to return (mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [default to 100]

### Return type

[**[]OHLCVTimeseriesItem**](OHLCVTimeseriesItem.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## V1OhlcvExchangeSymbolExchangeIdSymbolIdLatestGet

> []OHLCVTimeseriesItem V1OhlcvExchangeSymbolExchangeIdSymbolIdLatestGet(ctx, exchangeId, symbolId).PeriodId(periodId).Limit(limit).Execute()

Latest data



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
	exchangeId := "exchangeId_example" // string | Exchange identifier of requested timeseries (from the Metadata -> Exchanges)
	symbolId := "symbolId_example" // string | Symbol identifier of requested timeseries (from the Metadata -> Symbols)
	periodId := "periodId_example" // string | Identifier of requested timeseries period (e.g. `5SEC` or `2MTH`)
	limit := int32(56) // int32 | Amount of items to return (mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) (optional) (default to 100)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.OhlcvAPI.V1OhlcvExchangeSymbolExchangeIdSymbolIdLatestGet(context.Background(), exchangeId, symbolId).PeriodId(periodId).Limit(limit).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `OhlcvAPI.V1OhlcvExchangeSymbolExchangeIdSymbolIdLatestGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `V1OhlcvExchangeSymbolExchangeIdSymbolIdLatestGet`: []OHLCVTimeseriesItem
	fmt.Fprintf(os.Stdout, "Response from `OhlcvAPI.V1OhlcvExchangeSymbolExchangeIdSymbolIdLatestGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**exchangeId** | **string** | Exchange identifier of requested timeseries (from the Metadata -&gt; Exchanges) | 
**symbolId** | **string** | Symbol identifier of requested timeseries (from the Metadata -&gt; Symbols) | 

### Other Parameters

Other parameters are passed through a pointer to a apiV1OhlcvExchangeSymbolExchangeIdSymbolIdLatestGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


 **periodId** | **string** | Identifier of requested timeseries period (e.g. &#x60;5SEC&#x60; or &#x60;2MTH&#x60;) | 
 **limit** | **int32** | Amount of items to return (mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [default to 100]

### Return type

[**[]OHLCVTimeseriesItem**](OHLCVTimeseriesItem.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## V1OhlcvPeriodsGet

> []OHLCVTimeseriesPeriod V1OhlcvPeriodsGet(ctx).Execute()

List all periods



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
	resp, r, err := apiClient.OhlcvAPI.V1OhlcvPeriodsGet(context.Background()).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `OhlcvAPI.V1OhlcvPeriodsGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `V1OhlcvPeriodsGet`: []OHLCVTimeseriesPeriod
	fmt.Fprintf(os.Stdout, "Response from `OhlcvAPI.V1OhlcvPeriodsGet`: %v\n", resp)
}
```

### Path Parameters

This endpoint does not need any parameter.

### Other Parameters

Other parameters are passed through a pointer to a apiV1OhlcvPeriodsGetRequest struct via the builder pattern


### Return type

[**[]OHLCVTimeseriesPeriod**](OHLCVTimeseriesPeriod.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

