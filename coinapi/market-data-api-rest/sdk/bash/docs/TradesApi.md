# TradesApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1TradesLatestGet**](TradesApi.md#v1TradesLatestGet) | **GET** /v1/trades/latest | Latest data
[**v1TradesSymbolIdHistoryGet**](TradesApi.md#v1TradesSymbolIdHistoryGet) | **GET** /v1/trades/{symbol_id}/history | Historical data
[**v1TradesSymbolIdLatestGet**](TradesApi.md#v1TradesSymbolIdLatestGet) | **GET** /v1/trades/{symbol_id}/latest | Latest data by symbol_id



## v1TradesLatestGet

Latest data

Get latest trades executed up to 1 minute ago. Latest data is always returned in time descending order.

### Example

```bash
 v1TradesLatestGet  filter_symbol_id=value  include_id=value  limit=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterSymbolId** | **string** | Comma or semicolon delimited parts of symbol identifier used to filter response. (optional) | [optional] [default to null]
 **includeId** | **boolean** | Information that additional exchange trade identifier should be included in the 'id_trade' parameter of the trade if exchange providing identifiers. | [optional] [default to false]
 **limit** | **integer** | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]

### Return type

[**array[V1Trade]**](V1Trade.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1TradesSymbolIdHistoryGet

Historical data

Get history transactions from specific symbol, returned in time ascending order.

:::warning
The 'time_start' and 'time_end' parameters must be from the same day as this endpoint provides intraday data only for specific day.
Please use the 'date' parameter instead for querying data for a specific day without filter.
:::

### Example

```bash
 v1TradesSymbolIdHistoryGet symbol_id=value  date=value  time_start=value  time_end=value  limit=value  include_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbolId** | **string** | Symbol identifier for requested timeseries (from the Metadata -> Symbols) | [default to null]
 **date** | **string** | Date in ISO 8601, returned data is for the whole given day (required if 'time_start' is not provided) | [optional] [default to null]
 **timeStart** | **string** | Starting time in ISO 8601 | [optional] [default to null]
 **timeEnd** | **string** | Timeseries ending time in ISO 8601 | [optional] [default to null]
 **limit** | **integer** | Amount of items to return (optional, minimum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]
 **includeId** | **boolean** | Information that additional exchange trade identifier should be included in the 'id_trade' parameter of the trade if exchange providing identifiers. | [optional] [default to false]

### Return type

[**array[V1Trade]**](V1Trade.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1TradesSymbolIdLatestGet

Latest data by symbol_id

Get latest trades executed up to 1 minute ago. Latest data is always returned in time descending order.

### Example

```bash
 v1TradesSymbolIdLatestGet symbol_id=value  limit=value  include_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbolId** | **string** | Symbol identifier for requested timeseries (from the Metadata -> Symbols) | [default to null]
 **limit** | **integer** | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]
 **includeId** | **boolean** | Information that additional exchange trade identifier should be included in the 'id_trade' parameter of the trade if exchange providing identifiers. | [optional] [default to false]

### Return type

[**array[V1Trade]**](V1Trade.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

