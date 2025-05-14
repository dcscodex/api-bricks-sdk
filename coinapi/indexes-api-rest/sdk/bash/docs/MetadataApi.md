# MetadataApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiMetadataExchangesExchangeIdGet**](MetadataApi.md#apiMetadataExchangesExchangeIdGet) | **GET** /api/metadata/exchanges/{exchange_id} | List all exchanges by exchange_id
[**apiMetadataExchangesGet**](MetadataApi.md#apiMetadataExchangesGet) | **GET** /api/metadata/exchanges | List all exchanges



## apiMetadataExchangesExchangeIdGet

List all exchanges by exchange_id

### Example

```bash
 apiMetadataExchangesExchangeIdGet exchange_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchangeId** | **string** | The ID of the exchange. | [default to null]

### Return type

[**array[MetadataExchange]**](MetadataExchange.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiMetadataExchangesGet

List all exchanges

Get a detailed list of exchanges provided by the system.
            
:::info
Properties of the output are providing aggregated information from across all symbols related to the specific exchange. If you need to calculate your aggregation (e.g., limiting only the particular type of symbols), you should use /v1/symbols endpoint as a data source.
:::

### Example

```bash
 apiMetadataExchangesGet  filter_exchange_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterExchangeId** | **string** | Comma or semicolon delimited exchange identifiers used to filter response. (optional, eg. 'BITSTAMP;GEMINI') | [optional] [default to null]

### Return type

[**array[MetadataExchange]**](MetadataExchange.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

