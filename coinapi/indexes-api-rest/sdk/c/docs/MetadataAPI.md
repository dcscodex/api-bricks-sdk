# MetadataAPI

All URIs are relative to *https://rest-api.indexes.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**MetadataAPI_apiMetadataExchangesExchangeIdGet**](MetadataAPI.md#MetadataAPI_apiMetadataExchangesExchangeIdGet) | **GET** /api/metadata/exchanges/{exchange_id} | List all exchanges by exchange_id
[**MetadataAPI_apiMetadataExchangesGet**](MetadataAPI.md#MetadataAPI_apiMetadataExchangesGet) | **GET** /api/metadata/exchanges | List all exchanges


# **MetadataAPI_apiMetadataExchangesExchangeIdGet**
```c
// List all exchanges by exchange_id
//
list_t* MetadataAPI_apiMetadataExchangesExchangeIdGet(apiClient_t *apiClient, char *exchange_id);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**exchange_id** | **char \*** | The ID of the exchange. | 

### Return type

[list_t](metadata_exchange.md) *


### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **MetadataAPI_apiMetadataExchangesGet**
```c
// List all exchanges
//
// Get a detailed list of exchanges provided by the system.                :::info  Properties of the output are providing aggregated information from across all symbols related to the specific exchange. If you need to calculate your aggregation (e.g., limiting only the particular type of symbols), you should use /v1/symbols endpoint as a data source.  :::
//
list_t* MetadataAPI_apiMetadataExchangesGet(apiClient_t *apiClient, char *filter_exchange_id);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**filter_exchange_id** | **char \*** | Comma or semicolon delimited exchange identifiers used to filter response. (optional, eg. &#x60;BITSTAMP;GEMINI&#x60;) | [optional] 

### Return type

[list_t](metadata_exchange.md) *


### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

