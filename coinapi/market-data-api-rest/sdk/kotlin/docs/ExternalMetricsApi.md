# ExternalMetricsApi

All URIs are relative to *https://rest.coinapi.io*

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**v1ExternalmetricsAssetHistoryGet**](ExternalMetricsApi.md#v1ExternalmetricsAssetHistoryGet) | **GET** /v1/externalmetrics/asset/history | Historical metrics for the asset |
| [**v1ExternalmetricsAssetListingGet**](ExternalMetricsApi.md#v1ExternalmetricsAssetListingGet) | **GET** /v1/externalmetrics/asset/listing | Listing of metrics available for specific asset |
| [**v1ExternalmetricsChainHistoryGet**](ExternalMetricsApi.md#v1ExternalmetricsChainHistoryGet) | **GET** /v1/externalmetrics/chain/history | Historical metrics for the chain |
| [**v1ExternalmetricsChainListingGet**](ExternalMetricsApi.md#v1ExternalmetricsChainListingGet) | **GET** /v1/externalmetrics/chain/listing | Listing of metrics available for specific chain |
| [**v1ExternalmetricsExchangeHistoryGet**](ExternalMetricsApi.md#v1ExternalmetricsExchangeHistoryGet) | **GET** /v1/externalmetrics/exchange/history | Historical metrics for the exchange |
| [**v1ExternalmetricsExchangeListingGet**](ExternalMetricsApi.md#v1ExternalmetricsExchangeListingGet) | **GET** /v1/externalmetrics/exchange/listing | Listing of metrics available for specific exchange |
| [**v1ExternalmetricsListingGet**](ExternalMetricsApi.md#v1ExternalmetricsListingGet) | **GET** /v1/externalmetrics/listing | Listing of all supported metrics |


<a id="v1ExternalmetricsAssetHistoryGet"></a>
# **v1ExternalmetricsAssetHistoryGet**
> kotlin.collections.List&lt;kotlin.Any&gt; v1ExternalmetricsAssetHistoryGet(metricId, assetId, timeStart, timeEnd, timeFormat, periodId, limit)

Historical metrics for the asset

Get asset metrics history.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = ExternalMetricsApi()
val metricId : kotlin.String = metricId_example // kotlin.String | Metric identifier (e.g., `TVL`, `STABLES_BRIDGED_USD`)
val assetId : kotlin.String = assetId_example // kotlin.String | Asset identifier (e.g., `USDC`, `USDT`)
val timeStart : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | Starting time in ISO 8601
val timeEnd : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | Ending time in ISO 8601
val timeFormat : kotlin.String = timeFormat_example // kotlin.String | If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec)
val periodId : kotlin.String = periodId_example // kotlin.String | Identifier of requested timeseries period (e.g. `1MIN` or `2MTH`), default value is `1MIN`
val limit : kotlin.Int = 56 // kotlin.Int | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
try {
    val result : kotlin.collections.List<kotlin.Any> = apiInstance.v1ExternalmetricsAssetHistoryGet(metricId, assetId, timeStart, timeEnd, timeFormat, periodId, limit)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling ExternalMetricsApi#v1ExternalmetricsAssetHistoryGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling ExternalMetricsApi#v1ExternalmetricsAssetHistoryGet")
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

<a id="v1ExternalmetricsAssetListingGet"></a>
# **v1ExternalmetricsAssetListingGet**
> kotlin.collections.List&lt;V1MetricInfo&gt; v1ExternalmetricsAssetListingGet(assetId)

Listing of metrics available for specific asset

Get all metrics that are actually available for the specified asset.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = ExternalMetricsApi()
val assetId : kotlin.String = assetId_example // kotlin.String | Asset identifier (e.g., USDC, USDT)
try {
    val result : kotlin.collections.List<V1MetricInfo> = apiInstance.v1ExternalmetricsAssetListingGet(assetId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling ExternalMetricsApi#v1ExternalmetricsAssetListingGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling ExternalMetricsApi#v1ExternalmetricsAssetListingGet")
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

<a id="v1ExternalmetricsChainHistoryGet"></a>
# **v1ExternalmetricsChainHistoryGet**
> kotlin.collections.List&lt;kotlin.Any&gt; v1ExternalmetricsChainHistoryGet(metricId, chainId, timeStart, timeEnd, timeFormat, periodId, limit)

Historical metrics for the chain

Get chain metrics history.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = ExternalMetricsApi()
val metricId : kotlin.String = metricId_example // kotlin.String | Metric identifier (e.g., `TVL`, `STABLES_BRIDGED_USD`)
val chainId : kotlin.String = chainId_example // kotlin.String | Chain identifier (e.g., `Ethereum`, `Arbitrum`)
val timeStart : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | Starting time in ISO 8601
val timeEnd : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | Ending time in ISO 8601
val timeFormat : kotlin.String = timeFormat_example // kotlin.String | If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec)
val periodId : kotlin.String = periodId_example // kotlin.String | Identifier of requested timeseries period (e.g. `1MIN` or `2MTH`), default value is `1MIN`
val limit : kotlin.Int = 56 // kotlin.Int | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
try {
    val result : kotlin.collections.List<kotlin.Any> = apiInstance.v1ExternalmetricsChainHistoryGet(metricId, chainId, timeStart, timeEnd, timeFormat, periodId, limit)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling ExternalMetricsApi#v1ExternalmetricsChainHistoryGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling ExternalMetricsApi#v1ExternalmetricsChainHistoryGet")
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

<a id="v1ExternalmetricsChainListingGet"></a>
# **v1ExternalmetricsChainListingGet**
> kotlin.collections.List&lt;V1MetricInfo&gt; v1ExternalmetricsChainListingGet(chainId)

Listing of metrics available for specific chain

Get all metrics that are actually available for the specified blockchain chain.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = ExternalMetricsApi()
val chainId : kotlin.String = chainId_example // kotlin.String | Chain identifier (e.g., ETHEREUM, ARBITRUM)
try {
    val result : kotlin.collections.List<V1MetricInfo> = apiInstance.v1ExternalmetricsChainListingGet(chainId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling ExternalMetricsApi#v1ExternalmetricsChainListingGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling ExternalMetricsApi#v1ExternalmetricsChainListingGet")
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

<a id="v1ExternalmetricsExchangeHistoryGet"></a>
# **v1ExternalmetricsExchangeHistoryGet**
> kotlin.collections.List&lt;kotlin.Any&gt; v1ExternalmetricsExchangeHistoryGet(metricId, exchangeId, timeStart, timeEnd, timeFormat, periodId, limit)

Historical metrics for the exchange

Get exchange metrics history.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = ExternalMetricsApi()
val metricId : kotlin.String = metricId_example // kotlin.String | Metric identifier (e.g., `TVL`, `STABLES_BRIDGED_USD`)
val exchangeId : kotlin.String = exchangeId_example // kotlin.String | Exchange identifier (e.g., `BINANCE`, `UNISWAP-V3-ETHEREUM`)
val timeStart : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | Starting time in ISO 8601
val timeEnd : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | Ending time in ISO 8601
val timeFormat : kotlin.String = timeFormat_example // kotlin.String | If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec)
val periodId : kotlin.String = periodId_example // kotlin.String | Identifier of requested timeseries period (e.g. `1MIN` or `2MTH`), default value is `1MIN`
val limit : kotlin.Int = 56 // kotlin.Int | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
try {
    val result : kotlin.collections.List<kotlin.Any> = apiInstance.v1ExternalmetricsExchangeHistoryGet(metricId, exchangeId, timeStart, timeEnd, timeFormat, periodId, limit)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling ExternalMetricsApi#v1ExternalmetricsExchangeHistoryGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling ExternalMetricsApi#v1ExternalmetricsExchangeHistoryGet")
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

<a id="v1ExternalmetricsExchangeListingGet"></a>
# **v1ExternalmetricsExchangeListingGet**
> kotlin.collections.List&lt;V1MetricInfo&gt; v1ExternalmetricsExchangeListingGet(exchangeId)

Listing of metrics available for specific exchange

Get all metrics that are actually available for the specified exchange.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = ExternalMetricsApi()
val exchangeId : kotlin.String = exchangeId_example // kotlin.String | Exchange identifier (e.g., BINANCE, UNISWAP-V3-ETHEREUM)
try {
    val result : kotlin.collections.List<V1MetricInfo> = apiInstance.v1ExternalmetricsExchangeListingGet(exchangeId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling ExternalMetricsApi#v1ExternalmetricsExchangeListingGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling ExternalMetricsApi#v1ExternalmetricsExchangeListingGet")
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

<a id="v1ExternalmetricsListingGet"></a>
# **v1ExternalmetricsListingGet**
> kotlin.collections.List&lt;V1MetricInfo&gt; v1ExternalmetricsListingGet()

Listing of all supported metrics

Get all metrics available in the system.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = ExternalMetricsApi()
try {
    val result : kotlin.collections.List<V1MetricInfo> = apiInstance.v1ExternalmetricsListingGet()
    println(result)
} catch (e: ClientException) {
    println("4xx response calling ExternalMetricsApi#v1ExternalmetricsListingGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling ExternalMetricsApi#v1ExternalmetricsListingGet")
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

