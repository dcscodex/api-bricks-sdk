# METADATA_API

All URIs are relative to *https://rest-api.indexes.coinapi.io*

Feature | HTTP request | Description
------------- | ------------- | -------------
[**api_metadata_exchanges_exchange_id_get**](METADATA_API.md#api_metadata_exchanges_exchange_id_get) | **Get** /api/metadata/exchanges/{exchange_id} | List all exchanges by exchange_id
[**api_metadata_exchanges_get**](METADATA_API.md#api_metadata_exchanges_get) | **Get** /api/metadata/exchanges | List all exchanges


# **api_metadata_exchanges_exchange_id_get**
> api_metadata_exchanges_exchange_id_get (exchange_id: STRING_32 ): detachable LIST [METADATA_EXCHANGE]


List all exchanges by exchange_id


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchange_id** | **STRING_32**| The ID of the exchange. | [default to null]

### Return type

[**LIST [METADATA_EXCHANGE]**](Metadata.Exchange.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **api_metadata_exchanges_get**
> api_metadata_exchanges_get (filter_exchange_id:  detachable STRING_32 ): detachable LIST [METADATA_EXCHANGE]


List all exchanges

Get a detailed list of exchanges provided by the system.                :::info  Properties of the output are providing aggregated information from across all symbols related to the specific exchange. If you need to calculate your aggregation (e.g., limiting only the particular type of symbols), you should use /v1/symbols endpoint as a data source.  :::


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_exchange_id** | **STRING_32**| Comma or semicolon delimited exchange identifiers used to filter response. (optional, eg. &#x60;BITSTAMP;GEMINI&#x60;) | [optional] [default to null]

### Return type

[**LIST [METADATA_EXCHANGE]**](Metadata.Exchange.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

