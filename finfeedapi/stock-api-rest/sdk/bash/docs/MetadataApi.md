# MetadataApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1ExchangesGet**](MetadataApi.md#v1ExchangesGet) | **GET** /v1/exchanges | List of exchanges
[**v1SymbolsExchangeIdGet**](MetadataApi.md#v1SymbolsExchangeIdGet) | **GET** /v1/symbols/{exchange_id} | List of symbols for the exchange



## v1ExchangesGet

List of exchanges

### Example

```bash
 v1ExchangesGet
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**array[FinFeedAPIExchangeModel]**](FinFeedAPIExchangeModel.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1SymbolsExchangeIdGet

List of symbols for the exchange

### Example

```bash
 v1SymbolsExchangeIdGet exchange_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchangeId** | **string** |  | [default to null]

### Return type

[**array[FinFeedAPISymbolModel]**](FinFeedAPISymbolModel.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

