# MetricsV2Api

All URIs are relative to *https://rest.coinapi.io*

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**v2MetricsAssetHistoryGet**](MetricsV2Api.md#v2MetricsAssetHistoryGet) | **GET** /v2/metrics/asset/history | Historical metrics for the asset |
| [**v2MetricsAssetListingGet**](MetricsV2Api.md#v2MetricsAssetListingGet) | **GET** /v2/metrics/asset/listing | Listing of metrics available for specific asset |
| [**v2MetricsChainHistoryGet**](MetricsV2Api.md#v2MetricsChainHistoryGet) | **GET** /v2/metrics/chain/history | Historical metrics for the chain |
| [**v2MetricsChainListingGet**](MetricsV2Api.md#v2MetricsChainListingGet) | **GET** /v2/metrics/chain/listing | Listing of metrics available for specific chain |
| [**v2MetricsExchangeHistoryGet**](MetricsV2Api.md#v2MetricsExchangeHistoryGet) | **GET** /v2/metrics/exchange/history | Historical metrics for the exchange |
| [**v2MetricsExchangeListingGet**](MetricsV2Api.md#v2MetricsExchangeListingGet) | **GET** /v2/metrics/exchange/listing | Listing of metrics available for specific exchange |
| [**v2MetricsListingGet**](MetricsV2Api.md#v2MetricsListingGet) | **GET** /v2/metrics/listing | Listing of all supported metrics |


<a id="v2MetricsAssetHistoryGet"></a>
# **v2MetricsAssetHistoryGet**
> kotlin.collections.List&lt;kotlin.Any&gt; v2MetricsAssetHistoryGet(metricId, assetId, timeStart, timeEnd, timeFormat, periodId, limit)

Historical metrics for the asset

Get asset metrics history.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = MetricsV2Api()
val metricId : kotlin.String = metricId_example // kotlin.String | Metric identifier (e.g., `TVL`, `STABLES_BRIDGED_USD`)
val assetId : kotlin.String = assetId_example // kotlin.String | Asset identifier (e.g., `USDC`, `USDT`)
val timeStart : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | Starting time in ISO 8601
val timeEnd : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | Ending time in ISO 8601
val timeFormat : kotlin.String = timeFormat_example // kotlin.String | If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec)
val periodId : kotlin.String = periodId_example // kotlin.String | Identifier of requested timeseries period (e.g. `1MIN` or `2MTH`), default value is `1MIN`
val limit : kotlin.Int = 56 // kotlin.Int | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
try {
    val result : kotlin.collections.List<kotlin.Any> = apiInstance.v2MetricsAssetHistoryGet(metricId, assetId, timeStart, timeEnd, timeFormat, periodId, limit)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling MetricsV2Api#v2MetricsAssetHistoryGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling MetricsV2Api#v2MetricsAssetHistoryGet")
    e.printStackTrace()
}
```

### Parameters
| **metricId** | **kotlin.String**| Metric identifier (e.g., &#x60;TVL&#x60;, &#x60;STABLES_BRIDGED_USD&#x60;) | |
| **assetId** | **kotlin.String**| Asset identifier (e.g., &#x60;USDC&#x60;, &#x60;USDT&#x60;) | |
| **timeStart** | **java.time.OffsetDateTime**| Starting time in ISO 8601 | [optional] |
| **timeEnd** | **java.time.OffsetDateTime**| Ending time in ISO 8601 | [optional] |
| **timeFormat** | **kotlin.String**| If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec) | [optional] |
| **periodId** | **kotlin.String**| Identifier of requested timeseries period (e.g. &#x60;1MIN&#x60; or &#x60;2MTH&#x60;), default value is &#x60;1MIN&#x60; | [optional] |
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **limit** | **kotlin.Int**| Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100] |

### Return type

[**kotlin.collections.List&lt;kotlin.Any&gt;**](kotlin.Any.md)

### Authorization


Configure APIKey:
    ApiClient.apiKey["Authorization"] = ""
    ApiClient.apiKeyPrefix["Authorization"] = ""
Configure JWT:
    ApiClient.accessToken = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json

<a id="v2MetricsAssetListingGet"></a>
# **v2MetricsAssetListingGet**
> kotlin.collections.List&lt;V1MetricInfo&gt; v2MetricsAssetListingGet(assetId)

Listing of metrics available for specific asset

Get all metrics that are actually available for the specified asset.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = MetricsV2Api()
val assetId : kotlin.String = assetId_example // kotlin.String | Asset identifier (e.g., USDC, USDT)
try {
    val result : kotlin.collections.List<V1MetricInfo> = apiInstance.v2MetricsAssetListingGet(assetId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling MetricsV2Api#v2MetricsAssetListingGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling MetricsV2Api#v2MetricsAssetListingGet")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **assetId** | **kotlin.String**| Asset identifier (e.g., USDC, USDT) | |

### Return type

[**kotlin.collections.List&lt;V1MetricInfo&gt;**](V1MetricInfo.md)

### Authorization


Configure APIKey:
    ApiClient.apiKey["Authorization"] = ""
    ApiClient.apiKeyPrefix["Authorization"] = ""
Configure JWT:
    ApiClient.accessToken = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json

<a id="v2MetricsChainHistoryGet"></a>
# **v2MetricsChainHistoryGet**
> kotlin.collections.List&lt;kotlin.Any&gt; v2MetricsChainHistoryGet(metricId, chainId, timeStart, timeEnd, timeFormat, periodId, limit)

Historical metrics for the chain

Get chain metrics history.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = MetricsV2Api()
val metricId : kotlin.String = metricId_example // kotlin.String | Metric identifier (e.g., `TVL`, `STABLES_BRIDGED_USD`)
val chainId : kotlin.String = chainId_example // kotlin.String | Chain identifier (e.g., `Ethereum`, `Arbitrum`)
val timeStart : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | Starting time in ISO 8601
val timeEnd : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | Ending time in ISO 8601
val timeFormat : kotlin.String = timeFormat_example // kotlin.String | If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec)
val periodId : kotlin.String = periodId_example // kotlin.String | Identifier of requested timeseries period (e.g. `1MIN` or `2MTH`), default value is `1MIN`
val limit : kotlin.Int = 56 // kotlin.Int | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
try {
    val result : kotlin.collections.List<kotlin.Any> = apiInstance.v2MetricsChainHistoryGet(metricId, chainId, timeStart, timeEnd, timeFormat, periodId, limit)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling MetricsV2Api#v2MetricsChainHistoryGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling MetricsV2Api#v2MetricsChainHistoryGet")
    e.printStackTrace()
}
```

### Parameters
| **metricId** | **kotlin.String**| Metric identifier (e.g., &#x60;TVL&#x60;, &#x60;STABLES_BRIDGED_USD&#x60;) | |
| **chainId** | **kotlin.String**| Chain identifier (e.g., &#x60;Ethereum&#x60;, &#x60;Arbitrum&#x60;) | |
| **timeStart** | **java.time.OffsetDateTime**| Starting time in ISO 8601 | [optional] |
| **timeEnd** | **java.time.OffsetDateTime**| Ending time in ISO 8601 | [optional] |
| **timeFormat** | **kotlin.String**| If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec) | [optional] |
| **periodId** | **kotlin.String**| Identifier of requested timeseries period (e.g. &#x60;1MIN&#x60; or &#x60;2MTH&#x60;), default value is &#x60;1MIN&#x60; | [optional] |
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **limit** | **kotlin.Int**| Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100] |

### Return type

[**kotlin.collections.List&lt;kotlin.Any&gt;**](kotlin.Any.md)

### Authorization


Configure APIKey:
    ApiClient.apiKey["Authorization"] = ""
    ApiClient.apiKeyPrefix["Authorization"] = ""
Configure JWT:
    ApiClient.accessToken = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json

<a id="v2MetricsChainListingGet"></a>
# **v2MetricsChainListingGet**
> kotlin.collections.List&lt;V1MetricInfo&gt; v2MetricsChainListingGet(chainId)

Listing of metrics available for specific chain

Get all metrics that are actually available for the specified blockchain chain.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = MetricsV2Api()
val chainId : kotlin.String = chainId_example // kotlin.String | Chain identifier (e.g., ETHEREUM, ARBITRUM)
try {
    val result : kotlin.collections.List<V1MetricInfo> = apiInstance.v2MetricsChainListingGet(chainId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling MetricsV2Api#v2MetricsChainListingGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling MetricsV2Api#v2MetricsChainListingGet")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **chainId** | **kotlin.String**| Chain identifier (e.g., ETHEREUM, ARBITRUM) | |

### Return type

[**kotlin.collections.List&lt;V1MetricInfo&gt;**](V1MetricInfo.md)

### Authorization


Configure APIKey:
    ApiClient.apiKey["Authorization"] = ""
    ApiClient.apiKeyPrefix["Authorization"] = ""
Configure JWT:
    ApiClient.accessToken = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json

<a id="v2MetricsExchangeHistoryGet"></a>
# **v2MetricsExchangeHistoryGet**
> kotlin.collections.List&lt;kotlin.Any&gt; v2MetricsExchangeHistoryGet(metricId, exchangeId, timeStart, timeEnd, timeFormat, periodId, limit)

Historical metrics for the exchange

Get exchange metrics history.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = MetricsV2Api()
val metricId : kotlin.String = metricId_example // kotlin.String | Metric identifier (e.g., `TVL`, `STABLES_BRIDGED_USD`)
val exchangeId : kotlin.String = exchangeId_example // kotlin.String | Exchange identifier (e.g., `BINANCE`, `UNISWAP-V3-ETHEREUM`)
val timeStart : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | Starting time in ISO 8601
val timeEnd : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | Ending time in ISO 8601
val timeFormat : kotlin.String = timeFormat_example // kotlin.String | If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec)
val periodId : kotlin.String = periodId_example // kotlin.String | Identifier of requested timeseries period (e.g. `1MIN` or `2MTH`), default value is `1MIN`
val limit : kotlin.Int = 56 // kotlin.Int | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
try {
    val result : kotlin.collections.List<kotlin.Any> = apiInstance.v2MetricsExchangeHistoryGet(metricId, exchangeId, timeStart, timeEnd, timeFormat, periodId, limit)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling MetricsV2Api#v2MetricsExchangeHistoryGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling MetricsV2Api#v2MetricsExchangeHistoryGet")
    e.printStackTrace()
}
```

### Parameters
| **metricId** | **kotlin.String**| Metric identifier (e.g., &#x60;TVL&#x60;, &#x60;STABLES_BRIDGED_USD&#x60;) | |
| **exchangeId** | **kotlin.String**| Exchange identifier (e.g., &#x60;BINANCE&#x60;, &#x60;UNISWAP-V3-ETHEREUM&#x60;) | |
| **timeStart** | **java.time.OffsetDateTime**| Starting time in ISO 8601 | [optional] |
| **timeEnd** | **java.time.OffsetDateTime**| Ending time in ISO 8601 | [optional] |
| **timeFormat** | **kotlin.String**| If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec) | [optional] |
| **periodId** | **kotlin.String**| Identifier of requested timeseries period (e.g. &#x60;1MIN&#x60; or &#x60;2MTH&#x60;), default value is &#x60;1MIN&#x60; | [optional] |
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **limit** | **kotlin.Int**| Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100] |

### Return type

[**kotlin.collections.List&lt;kotlin.Any&gt;**](kotlin.Any.md)

### Authorization


Configure APIKey:
    ApiClient.apiKey["Authorization"] = ""
    ApiClient.apiKeyPrefix["Authorization"] = ""
Configure JWT:
    ApiClient.accessToken = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json

<a id="v2MetricsExchangeListingGet"></a>
# **v2MetricsExchangeListingGet**
> kotlin.collections.List&lt;V1MetricInfo&gt; v2MetricsExchangeListingGet(exchangeId)

Listing of metrics available for specific exchange

Get all metrics that are actually available for the specified exchange.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = MetricsV2Api()
val exchangeId : kotlin.String = exchangeId_example // kotlin.String | Exchange identifier (e.g., BINANCE, UNISWAP-V3-ETHEREUM)
try {
    val result : kotlin.collections.List<V1MetricInfo> = apiInstance.v2MetricsExchangeListingGet(exchangeId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling MetricsV2Api#v2MetricsExchangeListingGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling MetricsV2Api#v2MetricsExchangeListingGet")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **exchangeId** | **kotlin.String**| Exchange identifier (e.g., BINANCE, UNISWAP-V3-ETHEREUM) | |

### Return type

[**kotlin.collections.List&lt;V1MetricInfo&gt;**](V1MetricInfo.md)

### Authorization


Configure APIKey:
    ApiClient.apiKey["Authorization"] = ""
    ApiClient.apiKeyPrefix["Authorization"] = ""
Configure JWT:
    ApiClient.accessToken = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json

<a id="v2MetricsListingGet"></a>
# **v2MetricsListingGet**
> kotlin.collections.List&lt;V1MetricInfo&gt; v2MetricsListingGet()

Listing of all supported metrics

Get all metrics available in the system.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = MetricsV2Api()
try {
    val result : kotlin.collections.List<V1MetricInfo> = apiInstance.v2MetricsListingGet()
    println(result)
} catch (e: ClientException) {
    println("4xx response calling MetricsV2Api#v2MetricsListingGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling MetricsV2Api#v2MetricsListingGet")
    e.printStackTrace()
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**kotlin.collections.List&lt;V1MetricInfo&gt;**](V1MetricInfo.md)

### Authorization


Configure APIKey:
    ApiClient.apiKey["Authorization"] = ""
    ApiClient.apiKeyPrefix["Authorization"] = ""
Configure JWT:
    ApiClient.accessToken = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json

