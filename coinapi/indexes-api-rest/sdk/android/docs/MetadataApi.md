# MetadataApi

All URIs are relative to *https://rest-api.indexes.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiMetadataExchangesExchangeIdGet**](MetadataApi.md#apiMetadataExchangesExchangeIdGet) | **GET** /api/metadata/exchanges/{exchange_id} | List all exchanges by exchange_id
[**apiMetadataExchangesGet**](MetadataApi.md#apiMetadataExchangesGet) | **GET** /api/metadata/exchanges | List all exchanges



## apiMetadataExchangesExchangeIdGet

> List&lt;MetadataExchange&gt; apiMetadataExchangesExchangeIdGet(exchangeId)

List all exchanges by exchange_id

### Example

```java
// Import classes:
//import org.openapitools.client.api.MetadataApi;

MetadataApi apiInstance = new MetadataApi();
String exchangeId = null; // String | The ID of the exchange.
try {
    List<MetadataExchange> result = apiInstance.apiMetadataExchangesExchangeIdGet(exchangeId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling MetadataApi#apiMetadataExchangesExchangeIdGet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchangeId** | **String**| The ID of the exchange. | [default to null]

### Return type

[**List&lt;MetadataExchange&gt;**](MetadataExchange.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack


## apiMetadataExchangesGet

> List&lt;MetadataExchange&gt; apiMetadataExchangesGet(filterExchangeId)

List all exchanges

Get a detailed list of exchanges provided by the system.                :::info  Properties of the output are providing aggregated information from across all symbols related to the specific exchange. If you need to calculate your aggregation (e.g., limiting only the particular type of symbols), you should use /v1/symbols endpoint as a data source.  :::

### Example

```java
// Import classes:
//import org.openapitools.client.api.MetadataApi;

MetadataApi apiInstance = new MetadataApi();
String filterExchangeId = null; // String | Comma or semicolon delimited exchange identifiers used to filter response. (optional, eg. `BITSTAMP;GEMINI`)
try {
    List<MetadataExchange> result = apiInstance.apiMetadataExchangesGet(filterExchangeId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling MetadataApi#apiMetadataExchangesGet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterExchangeId** | **String**| Comma or semicolon delimited exchange identifiers used to filter response. (optional, eg. &#x60;BITSTAMP;GEMINI&#x60;) | [optional] [default to null]

### Return type

[**List&lt;MetadataExchange&gt;**](MetadataExchange.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

