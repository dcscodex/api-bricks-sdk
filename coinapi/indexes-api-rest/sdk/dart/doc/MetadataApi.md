# openapi.api.MetadataApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://rest-api.indexes.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiMetadataExchangesExchangeIdGet**](MetadataApi.md#apimetadataexchangesexchangeidget) | **GET** /api/metadata/exchanges/{exchange_id} | List all exchanges by exchange_id
[**apiMetadataExchangesGet**](MetadataApi.md#apimetadataexchangesget) | **GET** /api/metadata/exchanges | List all exchanges


# **apiMetadataExchangesExchangeIdGet**
> List<MetadataExchange> apiMetadataExchangesExchangeIdGet(exchangeId)

List all exchanges by exchange_id

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: ApiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKey').apiKeyPrefix = 'Bearer';

final api_instance = MetadataApi();
final exchangeId = exchangeId_example; // String | The ID of the exchange.

try {
    final result = api_instance.apiMetadataExchangesExchangeIdGet(exchangeId);
    print(result);
} catch (e) {
    print('Exception when calling MetadataApi->apiMetadataExchangesExchangeIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchangeId** | **String**| The ID of the exchange. | 

### Return type

[**List<MetadataExchange>**](MetadataExchange.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiMetadataExchangesGet**
> List<MetadataExchange> apiMetadataExchangesGet(filterExchangeId)

List all exchanges

Get a detailed list of exchanges provided by the system.                :::info  Properties of the output are providing aggregated information from across all symbols related to the specific exchange. If you need to calculate your aggregation (e.g., limiting only the particular type of symbols), you should use /v1/symbols endpoint as a data source.  :::

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: ApiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKey').apiKeyPrefix = 'Bearer';

final api_instance = MetadataApi();
final filterExchangeId = filterExchangeId_example; // String | Comma or semicolon delimited exchange identifiers used to filter response. (optional, eg. `BITSTAMP;GEMINI`)

try {
    final result = api_instance.apiMetadataExchangesGet(filterExchangeId);
    print(result);
} catch (e) {
    print('Exception when calling MetadataApi->apiMetadataExchangesGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterExchangeId** | **String**| Comma or semicolon delimited exchange identifiers used to filter response. (optional, eg. `BITSTAMP;GEMINI`) | [optional] 

### Return type

[**List<MetadataExchange>**](MetadataExchange.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

