# OrderBookApi

All URIs are relative to *https://rest.coinapi.io*

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**v1OrderbooksSymbolIdCurrentGet**](OrderBookApi.md#v1OrderbooksSymbolIdCurrentGet) | **GET** /v1/orderbooks/{symbol_id}/current | Get current order book |
| [**v1OrderbooksSymbolIdDepthCurrentGet**](OrderBookApi.md#v1OrderbooksSymbolIdDepthCurrentGet) | **GET** /v1/orderbooks/{symbol_id}/depth/current | Current depth of the order book |
| [**v1OrderbooksSymbolIdHistoryGet**](OrderBookApi.md#v1OrderbooksSymbolIdHistoryGet) | **GET** /v1/orderbooks/{symbol_id}/history | Historical data |
| [**v1OrderbooksSymbolIdLatestGet**](OrderBookApi.md#v1OrderbooksSymbolIdLatestGet) | **GET** /v1/orderbooks/{symbol_id}/latest | Latest data |


<a id="v1OrderbooksSymbolIdCurrentGet"></a>
# **v1OrderbooksSymbolIdCurrentGet**
> V1OrderBookBase v1OrderbooksSymbolIdCurrentGet(symbolId, limitLevels)

Get current order book

Retrieves the current order book for the specified symbol.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = OrderBookApi()
val symbolId : kotlin.String = symbolId_example // kotlin.String | The symbol ID (from the Metadata -> Symbols)
val limitLevels : kotlin.Int = 56 // kotlin.Int | The maximum number of levels to include in the response.
try {
    val result : V1OrderBookBase = apiInstance.v1OrderbooksSymbolIdCurrentGet(symbolId, limitLevels)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling OrderBookApi#v1OrderbooksSymbolIdCurrentGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling OrderBookApi#v1OrderbooksSymbolIdCurrentGet")
    e.printStackTrace()
}
```

### Parameters
| **symbolId** | **kotlin.String**| The symbol ID (from the Metadata -&gt; Symbols) | |
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **limitLevels** | **kotlin.Int**| The maximum number of levels to include in the response. | [optional] |

### Return type

[**V1OrderBookBase**](V1OrderBookBase.md)

### Authorization


Configure APIKey:
    ApiClient.apiKey["Authorization"] = ""
    ApiClient.apiKeyPrefix["Authorization"] = ""
Configure JWT:
    ApiClient.accessToken = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json

<a id="v1OrderbooksSymbolIdDepthCurrentGet"></a>
# **v1OrderbooksSymbolIdDepthCurrentGet**
> V1OrderBookDepth v1OrderbooksSymbolIdDepthCurrentGet(symbolId, limitLevels)

Current depth of the order book

Retrieves the current depth of the order book for the specified symbol.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = OrderBookApi()
val symbolId : kotlin.String = symbolId_example // kotlin.String | The symbol ID (from the Metadata -> Symbols)
val limitLevels : kotlin.Int = 56 // kotlin.Int | The maximum number of levels to include in the response.
try {
    val result : V1OrderBookDepth = apiInstance.v1OrderbooksSymbolIdDepthCurrentGet(symbolId, limitLevels)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling OrderBookApi#v1OrderbooksSymbolIdDepthCurrentGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling OrderBookApi#v1OrderbooksSymbolIdDepthCurrentGet")
    e.printStackTrace()
}
```

### Parameters
| **symbolId** | **kotlin.String**| The symbol ID (from the Metadata -&gt; Symbols) | |
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **limitLevels** | **kotlin.Int**| The maximum number of levels to include in the response. | [optional] |

### Return type

[**V1OrderBookDepth**](V1OrderBookDepth.md)

### Authorization


Configure APIKey:
    ApiClient.apiKey["Authorization"] = ""
    ApiClient.apiKeyPrefix["Authorization"] = ""
Configure JWT:
    ApiClient.accessToken = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json

<a id="v1OrderbooksSymbolIdHistoryGet"></a>
# **v1OrderbooksSymbolIdHistoryGet**
> kotlin.collections.List&lt;V1OrderBook&gt; v1OrderbooksSymbolIdHistoryGet(symbolId, date, timeStart, timeEnd, limit, limitLevels)

Historical data

Get historical order book snapshots for a specific symbol within time range, returned in time ascending order.              :::info The historical order book data via the REST API is currently limited by a number of updates and to the maximum number of 20 levels. :::  :::warning The &#39;time_start&#39; and &#39;time_end&#39; parameters must be from the same day as this endpoint provides intraday data only for specific day. Please use the &#39;date&#39; parameter instead for querying data for a specific day without filter. :::

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = OrderBookApi()
val symbolId : kotlin.String = symbolId_example // kotlin.String | Symbol identifier for requested timeseries (from the Metadata -> Symbols)
val date : kotlin.String = date_example // kotlin.String | Date in ISO 8601, returned data is for the whole given day (preferred method, required if 'time_start' is not provided)
val timeStart : kotlin.String = timeStart_example // kotlin.String | Starting time in ISO 8601 (deprecated, use 'date' instead)
val timeEnd : kotlin.String = timeEnd_example // kotlin.String | Timeseries ending time in ISO 8601 (deprecated, use 'date' instead)
val limit : kotlin.Int = 56 // kotlin.Int | Amount of items to return (optional, minimum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
val limitLevels : kotlin.Int = 56 // kotlin.Int | Maximum amount of levels from each side of the book to include in response (optional)
try {
    val result : kotlin.collections.List<V1OrderBook> = apiInstance.v1OrderbooksSymbolIdHistoryGet(symbolId, date, timeStart, timeEnd, limit, limitLevels)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling OrderBookApi#v1OrderbooksSymbolIdHistoryGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling OrderBookApi#v1OrderbooksSymbolIdHistoryGet")
    e.printStackTrace()
}
```

### Parameters
| **symbolId** | **kotlin.String**| Symbol identifier for requested timeseries (from the Metadata -&gt; Symbols) | |
| **date** | **kotlin.String**| Date in ISO 8601, returned data is for the whole given day (preferred method, required if &#39;time_start&#39; is not provided) | [optional] |
| **timeStart** | **kotlin.String**| Starting time in ISO 8601 (deprecated, use &#39;date&#39; instead) | [optional] |
| **timeEnd** | **kotlin.String**| Timeseries ending time in ISO 8601 (deprecated, use &#39;date&#39; instead) | [optional] |
| **limit** | **kotlin.Int**| Amount of items to return (optional, minimum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100] |
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **limitLevels** | **kotlin.Int**| Maximum amount of levels from each side of the book to include in response (optional) | [optional] |

### Return type

[**kotlin.collections.List&lt;V1OrderBook&gt;**](V1OrderBook.md)

### Authorization


Configure APIKey:
    ApiClient.apiKey["Authorization"] = ""
    ApiClient.apiKeyPrefix["Authorization"] = ""
Configure JWT:
    ApiClient.accessToken = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json

<a id="v1OrderbooksSymbolIdLatestGet"></a>
# **v1OrderbooksSymbolIdLatestGet**
> kotlin.collections.List&lt;V1OrderBook&gt; v1OrderbooksSymbolIdLatestGet(symbolId, limit, limitLevels)

Latest data

Get latest order book snapshots for a specific symbol, returned in time descending order.              :::info The historical order book data via the REST API is currently limited by a number of updates and to the maximum number of 20 levels. :::

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = OrderBookApi()
val symbolId : kotlin.String = symbolId_example // kotlin.String | Symbol identifier of requested timeseries (from the Metadata -> Symbols)
val limit : kotlin.Int = 56 // kotlin.Int | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
val limitLevels : kotlin.Int = 56 // kotlin.Int | Maximum amount of levels from each side of the book to include in response (optional)
try {
    val result : kotlin.collections.List<V1OrderBook> = apiInstance.v1OrderbooksSymbolIdLatestGet(symbolId, limit, limitLevels)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling OrderBookApi#v1OrderbooksSymbolIdLatestGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling OrderBookApi#v1OrderbooksSymbolIdLatestGet")
    e.printStackTrace()
}
```

### Parameters
| **symbolId** | **kotlin.String**| Symbol identifier of requested timeseries (from the Metadata -&gt; Symbols) | |
| **limit** | **kotlin.Int**| Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100] |
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **limitLevels** | **kotlin.Int**| Maximum amount of levels from each side of the book to include in response (optional) | [optional] |

### Return type

[**kotlin.collections.List&lt;V1OrderBook&gt;**](V1OrderBook.md)

### Authorization


Configure APIKey:
    ApiClient.apiKey["Authorization"] = ""
    ApiClient.apiKeyPrefix["Authorization"] = ""
Configure JWT:
    ApiClient.accessToken = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json

