# ExternalMetricsApi

All URIs are relative to *https://rest.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1ExternalmetricsAssetHistoryGet**](ExternalMetricsApi.md#v1ExternalmetricsAssetHistoryGet) | **GET** /v1/externalmetrics/asset/history | Historical metrics for the asset
[**v1ExternalmetricsAssetListingGet**](ExternalMetricsApi.md#v1ExternalmetricsAssetListingGet) | **GET** /v1/externalmetrics/asset/listing | Listing of metrics available for specific asset
[**v1ExternalmetricsChainHistoryGet**](ExternalMetricsApi.md#v1ExternalmetricsChainHistoryGet) | **GET** /v1/externalmetrics/chain/history | Historical metrics for the chain
[**v1ExternalmetricsChainListingGet**](ExternalMetricsApi.md#v1ExternalmetricsChainListingGet) | **GET** /v1/externalmetrics/chain/listing | Listing of metrics available for specific chain
[**v1ExternalmetricsExchangeHistoryGet**](ExternalMetricsApi.md#v1ExternalmetricsExchangeHistoryGet) | **GET** /v1/externalmetrics/exchange/history | Historical metrics for the exchange
[**v1ExternalmetricsExchangeListingGet**](ExternalMetricsApi.md#v1ExternalmetricsExchangeListingGet) | **GET** /v1/externalmetrics/exchange/listing | Listing of metrics available for specific exchange
[**v1ExternalmetricsListingGet**](ExternalMetricsApi.md#v1ExternalmetricsListingGet) | **GET** /v1/externalmetrics/listing | Listing of all supported metrics



## v1ExternalmetricsAssetHistoryGet

> List&lt;Object&gt; v1ExternalmetricsAssetHistoryGet(metricId, assetId, timeStart, timeEnd, timeFormat, periodId, limit)

Historical metrics for the asset

Get asset metrics history.

### Example

```java
// Import classes:
//import org.openapitools.client.api.ExternalMetricsApi;

ExternalMetricsApi apiInstance = new ExternalMetricsApi();
String metricId = null; // String | Metric identifier (e.g., `TVL`, `STABLES_BRIDGED_USD`)
String assetId = null; // String | Asset identifier (e.g., `USDC`, `USDT`)
Date timeStart = null; // Date | Starting time in ISO 8601
Date timeEnd = null; // Date | Ending time in ISO 8601
String timeFormat = null; // String | If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec)
String periodId = null; // String | Identifier of requested timeseries period (e.g. `1MIN` or `2MTH`), default value is `1MIN`
Integer limit = 100; // Integer | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
try {
    List<Object> result = apiInstance.v1ExternalmetricsAssetHistoryGet(metricId, assetId, timeStart, timeEnd, timeFormat, periodId, limit);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling ExternalMetricsApi#v1ExternalmetricsAssetHistoryGet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **metricId** | **String**| Metric identifier (e.g., &#x60;TVL&#x60;, &#x60;STABLES_BRIDGED_USD&#x60;) | [default to null]
 **assetId** | **String**| Asset identifier (e.g., &#x60;USDC&#x60;, &#x60;USDT&#x60;) | [default to null]
 **timeStart** | **Date**| Starting time in ISO 8601 | [optional] [default to null]
 **timeEnd** | **Date**| Ending time in ISO 8601 | [optional] [default to null]
 **timeFormat** | **String**| If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec) | [optional] [default to null]
 **periodId** | **String**| Identifier of requested timeseries period (e.g. &#x60;1MIN&#x60; or &#x60;2MTH&#x60;), default value is &#x60;1MIN&#x60; | [optional] [default to null]
 **limit** | **Integer**| Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]

### Return type

**List&lt;Object&gt;**

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack


## v1ExternalmetricsAssetListingGet

> List&lt;V1MetricInfo&gt; v1ExternalmetricsAssetListingGet(assetId)

Listing of metrics available for specific asset

Get all metrics that are actually available for the specified asset.

### Example

```java
// Import classes:
//import org.openapitools.client.api.ExternalMetricsApi;

ExternalMetricsApi apiInstance = new ExternalMetricsApi();
String assetId = null; // String | Asset identifier (e.g., USDC, USDT)
try {
    List<V1MetricInfo> result = apiInstance.v1ExternalmetricsAssetListingGet(assetId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling ExternalMetricsApi#v1ExternalmetricsAssetListingGet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **assetId** | **String**| Asset identifier (e.g., USDC, USDT) | [default to null]

### Return type

[**List&lt;V1MetricInfo&gt;**](V1MetricInfo.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack


## v1ExternalmetricsChainHistoryGet

> List&lt;Object&gt; v1ExternalmetricsChainHistoryGet(metricId, chainId, timeStart, timeEnd, timeFormat, periodId, limit)

Historical metrics for the chain

Get chain metrics history.

### Example

```java
// Import classes:
//import org.openapitools.client.api.ExternalMetricsApi;

ExternalMetricsApi apiInstance = new ExternalMetricsApi();
String metricId = null; // String | Metric identifier (e.g., `TVL`, `STABLES_BRIDGED_USD`)
String chainId = null; // String | Chain identifier (e.g., `Ethereum`, `Arbitrum`)
Date timeStart = null; // Date | Starting time in ISO 8601
Date timeEnd = null; // Date | Ending time in ISO 8601
String timeFormat = null; // String | If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec)
String periodId = null; // String | Identifier of requested timeseries period (e.g. `1MIN` or `2MTH`), default value is `1MIN`
Integer limit = 100; // Integer | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
try {
    List<Object> result = apiInstance.v1ExternalmetricsChainHistoryGet(metricId, chainId, timeStart, timeEnd, timeFormat, periodId, limit);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling ExternalMetricsApi#v1ExternalmetricsChainHistoryGet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **metricId** | **String**| Metric identifier (e.g., &#x60;TVL&#x60;, &#x60;STABLES_BRIDGED_USD&#x60;) | [default to null]
 **chainId** | **String**| Chain identifier (e.g., &#x60;Ethereum&#x60;, &#x60;Arbitrum&#x60;) | [default to null]
 **timeStart** | **Date**| Starting time in ISO 8601 | [optional] [default to null]
 **timeEnd** | **Date**| Ending time in ISO 8601 | [optional] [default to null]
 **timeFormat** | **String**| If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec) | [optional] [default to null]
 **periodId** | **String**| Identifier of requested timeseries period (e.g. &#x60;1MIN&#x60; or &#x60;2MTH&#x60;), default value is &#x60;1MIN&#x60; | [optional] [default to null]
 **limit** | **Integer**| Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]

### Return type

**List&lt;Object&gt;**

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack


## v1ExternalmetricsChainListingGet

> List&lt;V1MetricInfo&gt; v1ExternalmetricsChainListingGet(chainId)

Listing of metrics available for specific chain

Get all metrics that are actually available for the specified blockchain chain.

### Example

```java
// Import classes:
//import org.openapitools.client.api.ExternalMetricsApi;

ExternalMetricsApi apiInstance = new ExternalMetricsApi();
String chainId = null; // String | Chain identifier (e.g., ETHEREUM, ARBITRUM)
try {
    List<V1MetricInfo> result = apiInstance.v1ExternalmetricsChainListingGet(chainId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling ExternalMetricsApi#v1ExternalmetricsChainListingGet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chainId** | **String**| Chain identifier (e.g., ETHEREUM, ARBITRUM) | [default to null]

### Return type

[**List&lt;V1MetricInfo&gt;**](V1MetricInfo.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack


## v1ExternalmetricsExchangeHistoryGet

> List&lt;Object&gt; v1ExternalmetricsExchangeHistoryGet(metricId, exchangeId, timeStart, timeEnd, timeFormat, periodId, limit)

Historical metrics for the exchange

Get exchange metrics history.

### Example

```java
// Import classes:
//import org.openapitools.client.api.ExternalMetricsApi;

ExternalMetricsApi apiInstance = new ExternalMetricsApi();
String metricId = null; // String | Metric identifier (e.g., `TVL`, `STABLES_BRIDGED_USD`)
String exchangeId = null; // String | Exchange identifier (e.g., `BINANCE`, `UNISWAP-V3-ETHEREUM`)
Date timeStart = null; // Date | Starting time in ISO 8601
Date timeEnd = null; // Date | Ending time in ISO 8601
String timeFormat = null; // String | If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec)
String periodId = null; // String | Identifier of requested timeseries period (e.g. `1MIN` or `2MTH`), default value is `1MIN`
Integer limit = 100; // Integer | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
try {
    List<Object> result = apiInstance.v1ExternalmetricsExchangeHistoryGet(metricId, exchangeId, timeStart, timeEnd, timeFormat, periodId, limit);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling ExternalMetricsApi#v1ExternalmetricsExchangeHistoryGet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **metricId** | **String**| Metric identifier (e.g., &#x60;TVL&#x60;, &#x60;STABLES_BRIDGED_USD&#x60;) | [default to null]
 **exchangeId** | **String**| Exchange identifier (e.g., &#x60;BINANCE&#x60;, &#x60;UNISWAP-V3-ETHEREUM&#x60;) | [default to null]
 **timeStart** | **Date**| Starting time in ISO 8601 | [optional] [default to null]
 **timeEnd** | **Date**| Ending time in ISO 8601 | [optional] [default to null]
 **timeFormat** | **String**| If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec) | [optional] [default to null]
 **periodId** | **String**| Identifier of requested timeseries period (e.g. &#x60;1MIN&#x60; or &#x60;2MTH&#x60;), default value is &#x60;1MIN&#x60; | [optional] [default to null]
 **limit** | **Integer**| Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]

### Return type

**List&lt;Object&gt;**

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack


## v1ExternalmetricsExchangeListingGet

> List&lt;V1MetricInfo&gt; v1ExternalmetricsExchangeListingGet(exchangeId)

Listing of metrics available for specific exchange

Get all metrics that are actually available for the specified exchange.

### Example

```java
// Import classes:
//import org.openapitools.client.api.ExternalMetricsApi;

ExternalMetricsApi apiInstance = new ExternalMetricsApi();
String exchangeId = null; // String | Exchange identifier (e.g., BINANCE, UNISWAP-V3-ETHEREUM)
try {
    List<V1MetricInfo> result = apiInstance.v1ExternalmetricsExchangeListingGet(exchangeId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling ExternalMetricsApi#v1ExternalmetricsExchangeListingGet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchangeId** | **String**| Exchange identifier (e.g., BINANCE, UNISWAP-V3-ETHEREUM) | [default to null]

### Return type

[**List&lt;V1MetricInfo&gt;**](V1MetricInfo.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack


## v1ExternalmetricsListingGet

> List&lt;V1MetricInfo&gt; v1ExternalmetricsListingGet()

Listing of all supported metrics

Get all metrics available in the system.

### Example

```java
// Import classes:
//import org.openapitools.client.api.ExternalMetricsApi;

ExternalMetricsApi apiInstance = new ExternalMetricsApi();
try {
    List<V1MetricInfo> result = apiInstance.v1ExternalmetricsListingGet();
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling ExternalMetricsApi#v1ExternalmetricsListingGet");
    e.printStackTrace();
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**List&lt;V1MetricInfo&gt;**](V1MetricInfo.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

