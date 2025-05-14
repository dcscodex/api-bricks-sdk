# MetadataAPI

All URIs are relative to *https://api-historical.stock.finfeedapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**MetadataAPI_v1ExchangesGet**](MetadataAPI.md#MetadataAPI_v1ExchangesGet) | **GET** /v1/exchanges | List of exchanges
[**MetadataAPI_v1SymbolsExchangeIdGet**](MetadataAPI.md#MetadataAPI_v1SymbolsExchangeIdGet) | **GET** /v1/symbols/{exchange_id} | List of symbols for the exchange


# **MetadataAPI_v1ExchangesGet**
```c
// List of exchanges
//
list_t* MetadataAPI_v1ExchangesGet(apiClient_t *apiClient);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |

### Return type

[list_t](fin_feed_api_exchange_model.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **MetadataAPI_v1SymbolsExchangeIdGet**
```c
// List of symbols for the exchange
//
list_t* MetadataAPI_v1SymbolsExchangeIdGet(apiClient_t *apiClient, char *exchange_id);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**exchange_id** | **char \*** |  | 

### Return type

[list_t](fin_feed_api_symbol_model.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

