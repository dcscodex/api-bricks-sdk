# MetadataApi

All URIs are relative to *https://rest-api.indexes.coinapi.io*

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**apiMetadataExchangesExchangeIdGet**](MetadataApi.md#apiMetadataExchangesExchangeIdGet) | **GET** /api/metadata/exchanges/{exchange_id} | List all exchanges by exchange_id |
| [**apiMetadataExchangesGet**](MetadataApi.md#apiMetadataExchangesGet) | **GET** /api/metadata/exchanges | List all exchanges |


<a id="apiMetadataExchangesExchangeIdGet"></a>
# **apiMetadataExchangesExchangeIdGet**
> kotlin.collections.List&lt;MetadataExchange&gt; apiMetadataExchangesExchangeIdGet(exchangeId)

List all exchanges by exchange_id

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = MetadataApi()
val exchangeId : kotlin.String = exchangeId_example // kotlin.String | The ID of the exchange.
try {
    val result : kotlin.collections.List<MetadataExchange> = apiInstance.apiMetadataExchangesExchangeIdGet(exchangeId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling MetadataApi#apiMetadataExchangesExchangeIdGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling MetadataApi#apiMetadataExchangesExchangeIdGet")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **exchangeId** | **kotlin.String**| The ID of the exchange. | |

### Return type

[**kotlin.collections.List&lt;MetadataExchange&gt;**](MetadataExchange.md)

### Authorization


Configure APIKey:
    ApiClient.apiKey["Authorization"] = ""
    ApiClient.apiKeyPrefix["Authorization"] = ""
Configure JWT:
    ApiClient.apiKey["Authorization"] = ""
    ApiClient.apiKeyPrefix["Authorization"] = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json

<a id="apiMetadataExchangesGet"></a>
# **apiMetadataExchangesGet**
> kotlin.collections.List&lt;MetadataExchange&gt; apiMetadataExchangesGet(filterExchangeId)

List all exchanges

Get a detailed list of exchanges provided by the system.              :::info Properties of the output are providing aggregated information from across all symbols related to the specific exchange. If you need to calculate your aggregation (e.g., limiting only the particular type of symbols), you should use /v1/symbols endpoint as a data source. :::

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = MetadataApi()
val filterExchangeId : kotlin.String = filterExchangeId_example // kotlin.String | Comma or semicolon delimited exchange identifiers used to filter response. (optional, eg. `BITSTAMP;GEMINI`)
try {
    val result : kotlin.collections.List<MetadataExchange> = apiInstance.apiMetadataExchangesGet(filterExchangeId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling MetadataApi#apiMetadataExchangesGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling MetadataApi#apiMetadataExchangesGet")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **filterExchangeId** | **kotlin.String**| Comma or semicolon delimited exchange identifiers used to filter response. (optional, eg. &#x60;BITSTAMP;GEMINI&#x60;) | [optional] |

### Return type

[**kotlin.collections.List&lt;MetadataExchange&gt;**](MetadataExchange.md)

### Authorization


Configure APIKey:
    ApiClient.apiKey["Authorization"] = ""
    ApiClient.apiKeyPrefix["Authorization"] = ""
Configure JWT:
    ApiClient.apiKey["Authorization"] = ""
    ApiClient.apiKeyPrefix["Authorization"] = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json

