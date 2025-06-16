# QuotesApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1QuotesCurrentGet**](QuotesApi.md#v1QuotesCurrentGet) | **GET** /v1/quotes/current | Current data
[**v1QuotesLatestGet**](QuotesApi.md#v1QuotesLatestGet) | **GET** /v1/quotes/latest | Latest data
[**v1QuotesSymbolIdCurrentGet**](QuotesApi.md#v1QuotesSymbolIdCurrentGet) | **GET** /v1/quotes/{symbol_id}/current | Current quotes for a specific symbol
[**v1QuotesSymbolIdHistoryGet**](QuotesApi.md#v1QuotesSymbolIdHistoryGet) | **GET** /v1/quotes/{symbol_id}/history | Historical data
[**v1QuotesSymbolIdLatestGet**](QuotesApi.md#v1QuotesSymbolIdLatestGet) | **GET** /v1/quotes/{symbol_id}/latest | Latest quote updates for a specific symbol



## v1QuotesCurrentGet

Current data

Get current quotes for all symbols or for a specific symbol.
            
:::info
When requesting current data for a specific symbol, output is not encapsulated into JSON array as only one item is returned.
:::

### Example

```bash
 v1QuotesCurrentGet  filter_symbol_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterSymbolId** | **string** | Comma or semicolon delimited parts of symbol identifier used to filter response. (optional) | [optional] [default to null]

### Return type

[**array[V1QuoteTrade]**](V1QuoteTrade.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1QuotesLatestGet

Latest data

Get latest updates of the quotes up to 1 minute ago. Latest data is always returned in time descending order.

### Example

```bash
 v1QuotesLatestGet  filter_symbol_id=value  limit=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterSymbolId** | **string** | Comma or semicolon delimited parts of symbol identifier used to filter response. (optional) | [optional] [default to null]
 **limit** | **integer** | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]

### Return type

[**array[V1Quote]**](V1Quote.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1QuotesSymbolIdCurrentGet

Current quotes for a specific symbol

### Example

```bash
 v1QuotesSymbolIdCurrentGet symbol_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbolId** | **string** | The symbol identifier (from the Metadata -> Symbols) | [default to null]

### Return type

[**V1QuoteTrade**](V1QuoteTrade.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1QuotesSymbolIdHistoryGet

Historical data

Get historical quote updates within requested time range, returned in time ascending order.

:::warning
The 'time_start' and 'time_end' parameters must be from the same day as this endpoint provides intraday data only for specific day.
Please use the 'date' parameter instead for querying data for a specific day without filter.
:::

### Example

```bash
 v1QuotesSymbolIdHistoryGet symbol_id=value  date=value  time_start=value  time_end=value  limit=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbolId** | **string** | Symbol identifier for requested timeseries (from the Metadata -> Symbols) | [default to null]
 **date** | **string** | Date in ISO 8601, returned data is for the whole given day (preferred method, required if 'time_start' is not provided) | [optional] [default to null]
 **timeStart** | **string** | Starting time in ISO 8601 | [optional] [default to null]
 **timeEnd** | **string** | Timeseries ending time in ISO 8601 | [optional] [default to null]
 **limit** | **integer** | Amount of items to return (optional, minimum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]

### Return type

[**array[V1Quote]**](V1Quote.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1QuotesSymbolIdLatestGet

Latest quote updates for a specific symbol

### Example

```bash
 v1QuotesSymbolIdLatestGet symbol_id=value  limit=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbolId** | **string** | Symbol identifier of requested timeseries (from the Metadata -> Symbols) | [default to null]
 **limit** | **integer** | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]

### Return type

[**array[V1Quote]**](V1Quote.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

