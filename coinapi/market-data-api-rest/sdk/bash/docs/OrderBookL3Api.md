# OrderBookL3Api

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1Orderbooks3CurrentGet**](OrderBookL3Api.md#v1Orderbooks3CurrentGet) | **GET** /v1/orderbooks3/current | Current order books
[**v1Orderbooks3SymbolIdCurrentGet**](OrderBookL3Api.md#v1Orderbooks3SymbolIdCurrentGet) | **GET** /v1/orderbooks3/{symbol_id}/current | Current order book by symbol_id



## v1Orderbooks3CurrentGet

Current order books

### Example

```bash
 v1Orderbooks3CurrentGet  filter_symbol_id=value  limit_levels=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterSymbolId** | **string** | Comma or semicolon delimited parts of symbol identifier used to filter the response. | [optional] [default to null]
 **limitLevels** | **integer** | The maximum number of levels to include in the response. | [optional] [default to null]

### Return type

[**array[V1OrderBookBase]**](V1OrderBookBase.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1Orderbooks3SymbolIdCurrentGet

Current order book by symbol_id

Retrieves the current order book for the specified symbol.

### Example

```bash
 v1Orderbooks3SymbolIdCurrentGet symbol_id=value  limit_levels=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbolId** | **string** | The symbol ID (from the Metadata -> Symbols) | [default to null]
 **limitLevels** | **integer** | The maximum number of levels to include in the response. | [optional] [default to null]

### Return type

[**V1OrderBookBase**](V1OrderBookBase.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

