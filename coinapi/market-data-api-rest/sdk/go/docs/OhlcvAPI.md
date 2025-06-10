# \OhlcvAPI

All URIs are relative to *https://rest.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**V1OhlcvExchangesExchangeIdHistoryGet**](OhlcvAPI.md#V1OhlcvExchangesExchangeIdHistoryGet) | **Get** /v1/ohlcv/exchanges/{exchange_id}/history | Historical data by exchange
[**V1OhlcvPeriodsGet**](OhlcvAPI.md#V1OhlcvPeriodsGet) | **Get** /v1/ohlcv/periods | List all periods
[**V1OhlcvSymbolIdHistoryGet**](OhlcvAPI.md#V1OhlcvSymbolIdHistoryGet) | **Get** /v1/ohlcv/{symbol_id}/history | Historical data
[**V1OhlcvSymbolIdLatestGet**](OhlcvAPI.md#V1OhlcvSymbolIdLatestGet) | **Get** /v1/ohlcv/{symbol_id}/latest | Latest data



## V1OhlcvExchangesExchangeIdHistoryGet

> []ModelsExchangeTimeseriesItem V1OhlcvExchangesExchangeIdHistoryGet(ctx, exchangeId).PeriodId(periodId).TimeStart(timeStart).TimeEnd(timeEnd).Execute()

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
	resp, r, err := apiClient.OhlcvAPI.V1OhlcvExchangesExchangeIdHistoryGet(context.Background(), exchangeId).PeriodId(periodId).TimeStart(timeStart).TimeEnd(timeEnd).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `OhlcvAPI.V1OhlcvExchangesExchangeIdHistoryGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `V1OhlcvExchangesExchangeIdHistoryGet`: []ModelsExchangeTimeseriesItem
	fmt.Fprintf(os.Stdout, "Response from `OhlcvAPI.V1OhlcvExchangesExchangeIdHistoryGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**exchangeId** | **string** | Exchange identifier of requested timeseries (from the Metadata -&gt; Exchanges) | 

### Other Parameters

Other parameters are passed through a pointer to a apiV1OhlcvExchangesExchangeIdHistoryGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **periodId** | **string** | Identifier of requested timeseries period (e.g. &#x60;5SEC&#x60; or &#x60;1DAY&#x60;) | 
 **timeStart** | **string** | Timeseries starting time in ISO 8601 | 
 **timeEnd** | **string** | Timeseries ending time in ISO 8601 | 

### Return type

[**[]ModelsExchangeTimeseriesItem**](ModelsExchangeTimeseriesItem.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## V1OhlcvPeriodsGet

> []V1TimeseriesPeriod V1OhlcvPeriodsGet(ctx).Execute()

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
	// response from `V1OhlcvPeriodsGet`: []V1TimeseriesPeriod
	fmt.Fprintf(os.Stdout, "Response from `OhlcvAPI.V1OhlcvPeriodsGet`: %v\n", resp)
}
```

### Path Parameters

This endpoint does not need any parameter.

### Other Parameters

Other parameters are passed through a pointer to a apiV1OhlcvPeriodsGetRequest struct via the builder pattern


### Return type

[**[]V1TimeseriesPeriod**](V1TimeseriesPeriod.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## V1OhlcvSymbolIdHistoryGet

> []V1TimeseriesItem V1OhlcvSymbolIdHistoryGet(ctx, symbolId).PeriodId(periodId).TimeStart(timeStart).TimeEnd(timeEnd).Limit(limit).IncludeEmptyItems(includeEmptyItems).Execute()

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
	symbolId := "symbolId_example" // string | Symbol identifier of requested timeseries (from the Metadata -> Symbols)
	periodId := "periodId_example" // string | Identifier of requested timeseries period (e.g. `5SEC` or `2MTH`)
	timeStart := "timeStart_example" // string | Timeseries starting time in ISO 8601 (optional)
	timeEnd := "timeEnd_example" // string | Timeseries ending time in ISO 8601 (optional)
	limit := int32(56) // int32 | Amount of items to return (mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) (optional) (default to 100)
	includeEmptyItems := true // bool | Include items with no activity? (default value is `false`, possible values are `true` or `false`) (optional) (default to false)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.OhlcvAPI.V1OhlcvSymbolIdHistoryGet(context.Background(), symbolId).PeriodId(periodId).TimeStart(timeStart).TimeEnd(timeEnd).Limit(limit).IncludeEmptyItems(includeEmptyItems).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `OhlcvAPI.V1OhlcvSymbolIdHistoryGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `V1OhlcvSymbolIdHistoryGet`: []V1TimeseriesItem
	fmt.Fprintf(os.Stdout, "Response from `OhlcvAPI.V1OhlcvSymbolIdHistoryGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**symbolId** | **string** | Symbol identifier of requested timeseries (from the Metadata -&gt; Symbols) | 

### Other Parameters

Other parameters are passed through a pointer to a apiV1OhlcvSymbolIdHistoryGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **periodId** | **string** | Identifier of requested timeseries period (e.g. &#x60;5SEC&#x60; or &#x60;2MTH&#x60;) | 
 **timeStart** | **string** | Timeseries starting time in ISO 8601 | 
 **timeEnd** | **string** | Timeseries ending time in ISO 8601 | 
 **limit** | **int32** | Amount of items to return (mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [default to 100]
 **includeEmptyItems** | **bool** | Include items with no activity? (default value is &#x60;false&#x60;, possible values are &#x60;true&#x60; or &#x60;false&#x60;) | [default to false]

### Return type

[**[]V1TimeseriesItem**](V1TimeseriesItem.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## V1OhlcvSymbolIdLatestGet

> []V1TimeseriesItem V1OhlcvSymbolIdLatestGet(ctx, symbolId).PeriodId(periodId).Limit(limit).IncludeEmptyItems(includeEmptyItems).Execute()

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
	symbolId := "symbolId_example" // string | Symbol identifier of requested timeseries (from the Metadata -> Symbols)
	periodId := "periodId_example" // string | Identifier of requested timeseries period (e.g. `5SEC` or `2MTH`)
	limit := int32(56) // int32 | Amount of items to return (mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) (optional) (default to 100)
	includeEmptyItems := true // bool | Include items with no activity? (default value is `false`, possible values are `true` or `false`) (optional) (default to false)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.OhlcvAPI.V1OhlcvSymbolIdLatestGet(context.Background(), symbolId).PeriodId(periodId).Limit(limit).IncludeEmptyItems(includeEmptyItems).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `OhlcvAPI.V1OhlcvSymbolIdLatestGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `V1OhlcvSymbolIdLatestGet`: []V1TimeseriesItem
	fmt.Fprintf(os.Stdout, "Response from `OhlcvAPI.V1OhlcvSymbolIdLatestGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**symbolId** | **string** | Symbol identifier of requested timeseries (from the Metadata -&gt; Symbols) | 

### Other Parameters

Other parameters are passed through a pointer to a apiV1OhlcvSymbolIdLatestGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **periodId** | **string** | Identifier of requested timeseries period (e.g. &#x60;5SEC&#x60; or &#x60;2MTH&#x60;) | 
 **limit** | **int32** | Amount of items to return (mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [default to 100]
 **includeEmptyItems** | **bool** | Include items with no activity? (default value is &#x60;false&#x60;, possible values are &#x60;true&#x60; or &#x60;false&#x60;) | [default to false]

### Return type

[**[]V1TimeseriesItem**](V1TimeseriesItem.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

