# OrderBookApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1OrderbooksSymbolIdCurrentGet**](OrderBookApi.md#v1OrderbooksSymbolIdCurrentGet) | **GET** /v1/orderbooks/{symbol_id}/current | Get current order book
[**v1OrderbooksSymbolIdDepthCurrentGet**](OrderBookApi.md#v1OrderbooksSymbolIdDepthCurrentGet) | **GET** /v1/orderbooks/{symbol_id}/depth/current | Current depth of the order book
[**v1OrderbooksSymbolIdHistoryGet**](OrderBookApi.md#v1OrderbooksSymbolIdHistoryGet) | **GET** /v1/orderbooks/{symbol_id}/history | Historical data
[**v1OrderbooksSymbolIdLatestGet**](OrderBookApi.md#v1OrderbooksSymbolIdLatestGet) | **GET** /v1/orderbooks/{symbol_id}/latest | Latest data



## v1OrderbooksSymbolIdCurrentGet

Get current order book

Retrieves the current order book for the specified symbol.

### Example

```bash
 v1OrderbooksSymbolIdCurrentGet symbol_id=value  limit_levels=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbolId** | **string** | The symbol ID (from the Metadata -> Symbols) | [default to null]
 **limitLevels** | **integer** | The maximum number of levels to include in the response. | [optional] [default to null]

### Return type

[**V1OrderBookBase**](V1OrderBookBase.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1OrderbooksSymbolIdDepthCurrentGet

Current depth of the order book

Retrieves the current depth of the order book for the specified symbol.

### Example

```bash
 v1OrderbooksSymbolIdDepthCurrentGet symbol_id=value  limit_levels=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbolId** | **string** | The symbol ID (from the Metadata -> Symbols) | [default to null]
 **limitLevels** | **integer** | The maximum number of levels to include in the response. | [optional] [default to null]

### Return type

[**V1OrderBookDepth**](V1OrderBookDepth.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1OrderbooksSymbolIdHistoryGet

Historical data

Get historical order book snapshots for a specific symbol within time range, returned in time ascending order.
            
:::info
The historical order book data via the REST API is currently limited by a number of updates and to the maximum number of 20 levels.
:::

:::warning
The 'time_start' and 'time_end' parameters must be from the same day as this endpoint provides intraday data only for specific day.
Please use the 'date' parameter instead for querying data for a specific day without filter.
:::

### Example

```bash
 v1OrderbooksSymbolIdHistoryGet symbol_id=value  date=value  time_start=value  time_end=value  limit=value  limit_levels=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbolId** | **string** | Symbol identifier for requested timeseries (from the Metadata -> Symbols) | [default to null]
 **date** | **string** | Date in ISO 8601, returned data is for the whole given day (preferred method, required if 'time_start' is not provided) | [optional] [default to null]
 **timeStart** | **string** | Starting time in ISO 8601 (deprecated, use 'date' instead) | [optional] [default to null]
 **timeEnd** | **string** | Timeseries ending time in ISO 8601 (deprecated, use 'date' instead) | [optional] [default to null]
 **limit** | **integer** | Amount of items to return (optional, minimum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]
 **limitLevels** | **integer** | Maximum amount of levels from each side of the book to include in response (optional) | [optional] [default to null]

### Return type

[**array[V1OrderBook]**](V1OrderBook.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1OrderbooksSymbolIdLatestGet

Latest data

Get latest order book snapshots for a specific symbol, returned in time descending order.
            
:::info
The historical order book data via the REST API is currently limited by a number of updates and to the maximum number of 20 levels.
:::

### Example

```bash
 v1OrderbooksSymbolIdLatestGet symbol_id=value  limit=value  limit_levels=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbolId** | **string** | Symbol identifier of requested timeseries (from the Metadata -> Symbols) | [default to null]
 **limit** | **integer** | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]
 **limitLevels** | **integer** | Maximum amount of levels from each side of the book to include in response (optional) | [optional] [default to null]

### Return type

[**array[V1OrderBook]**](V1OrderBook.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

