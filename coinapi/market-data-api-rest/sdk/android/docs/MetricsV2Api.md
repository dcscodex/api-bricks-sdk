# MetricsV2Api

All URIs are relative to *https://rest.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v2MetricsAssetHistoryGet**](MetricsV2Api.md#v2MetricsAssetHistoryGet) | **GET** /v2/metrics/asset/history | Historical metrics for the asset
[**v2MetricsAssetListingGet**](MetricsV2Api.md#v2MetricsAssetListingGet) | **GET** /v2/metrics/asset/listing | Listing of metrics available for specific asset
[**v2MetricsChainHistoryGet**](MetricsV2Api.md#v2MetricsChainHistoryGet) | **GET** /v2/metrics/chain/history | Historical metrics for the chain
[**v2MetricsChainListingGet**](MetricsV2Api.md#v2MetricsChainListingGet) | **GET** /v2/metrics/chain/listing | Listing of metrics available for specific chain
[**v2MetricsExchangeHistoryGet**](MetricsV2Api.md#v2MetricsExchangeHistoryGet) | **GET** /v2/metrics/exchange/history | Historical metrics for the exchange
[**v2MetricsExchangeListingGet**](MetricsV2Api.md#v2MetricsExchangeListingGet) | **GET** /v2/metrics/exchange/listing | Listing of metrics available for specific exchange
[**v2MetricsListingGet**](MetricsV2Api.md#v2MetricsListingGet) | **GET** /v2/metrics/listing | Listing of all supported metrics



## v2MetricsAssetHistoryGet

> List&lt;Object&gt; v2MetricsAssetHistoryGet(metricId, assetId, timeStart, timeEnd, timeFormat, periodId, limit)

Historical metrics for the asset

Get asset metrics history.

### Example

```java
// Import classes:
//import org.openapitools.client.api.MetricsV2Api;

MetricsV2Api apiInstance = new MetricsV2Api();
String metricId = null; // String | Metric identifier (e.g., `TVL`, `STABLES_BRIDGED_USD`)
String assetId = null; // String | Asset identifier (e.g., `USDC`, `USDT`)
Date timeStart = null; // Date | Starting time in ISO 8601
Date timeEnd = null; // Date | Ending time in ISO 8601
String timeFormat = null; // String | If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec)
String periodId = null; // String | Identifier of requested timeseries period (e.g. `1MIN` or `2MTH`), default value is `1MIN`
Integer limit = 100; // Integer | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
try {
    List<Object> result = apiInstance.v2MetricsAssetHistoryGet(metricId, assetId, timeStart, timeEnd, timeFormat, periodId, limit);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling MetricsV2Api#v2MetricsAssetHistoryGet");
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


## v2MetricsAssetListingGet

> List&lt;V1MetricInfo&gt; v2MetricsAssetListingGet(assetId)

Listing of metrics available for specific asset

Get all metrics that are actually available for the specified asset.

### Example

```java
// Import classes:
//import org.openapitools.client.api.MetricsV2Api;

MetricsV2Api apiInstance = new MetricsV2Api();
String assetId = null; // String | Asset identifier (e.g., USDC, USDT)
try {
    List<V1MetricInfo> result = apiInstance.v2MetricsAssetListingGet(assetId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling MetricsV2Api#v2MetricsAssetListingGet");
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


## v2MetricsChainHistoryGet

> List&lt;Object&gt; v2MetricsChainHistoryGet(metricId, chainId, timeStart, timeEnd, timeFormat, periodId, limit)

Historical metrics for the chain

Get chain metrics history.

### Example

```java
// Import classes:
//import org.openapitools.client.api.MetricsV2Api;

MetricsV2Api apiInstance = new MetricsV2Api();
String metricId = null; // String | Metric identifier (e.g., `TVL`, `STABLES_BRIDGED_USD`)
String chainId = null; // String | Chain identifier (e.g., `Ethereum`, `Arbitrum`)
Date timeStart = null; // Date | Starting time in ISO 8601
Date timeEnd = null; // Date | Ending time in ISO 8601
String timeFormat = null; // String | If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec)
String periodId = null; // String | Identifier of requested timeseries period (e.g. `1MIN` or `2MTH`), default value is `1MIN`
Integer limit = 100; // Integer | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
try {
    List<Object> result = apiInstance.v2MetricsChainHistoryGet(metricId, chainId, timeStart, timeEnd, timeFormat, periodId, limit);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling MetricsV2Api#v2MetricsChainHistoryGet");
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


## v2MetricsChainListingGet

> List&lt;V1MetricInfo&gt; v2MetricsChainListingGet(chainId)

Listing of metrics available for specific chain

Get all metrics that are actually available for the specified blockchain chain.

### Example

```java
// Import classes:
//import org.openapitools.client.api.MetricsV2Api;

MetricsV2Api apiInstance = new MetricsV2Api();
String chainId = null; // String | Chain identifier (e.g., ETHEREUM, ARBITRUM)
try {
    List<V1MetricInfo> result = apiInstance.v2MetricsChainListingGet(chainId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling MetricsV2Api#v2MetricsChainListingGet");
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


## v2MetricsExchangeHistoryGet

> List&lt;Object&gt; v2MetricsExchangeHistoryGet(metricId, exchangeId, timeStart, timeEnd, timeFormat, periodId, limit)

Historical metrics for the exchange

Get exchange metrics history.

### Example

```java
// Import classes:
//import org.openapitools.client.api.MetricsV2Api;

MetricsV2Api apiInstance = new MetricsV2Api();
String metricId = null; // String | Metric identifier (e.g., `TVL`, `STABLES_BRIDGED_USD`)
String exchangeId = null; // String | Exchange identifier (e.g., `BINANCE`, `UNISWAP-V3-ETHEREUM`)
Date timeStart = null; // Date | Starting time in ISO 8601
Date timeEnd = null; // Date | Ending time in ISO 8601
String timeFormat = null; // String | If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec)
String periodId = null; // String | Identifier of requested timeseries period (e.g. `1MIN` or `2MTH`), default value is `1MIN`
Integer limit = 100; // Integer | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
try {
    List<Object> result = apiInstance.v2MetricsExchangeHistoryGet(metricId, exchangeId, timeStart, timeEnd, timeFormat, periodId, limit);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling MetricsV2Api#v2MetricsExchangeHistoryGet");
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


## v2MetricsExchangeListingGet

> List&lt;V1MetricInfo&gt; v2MetricsExchangeListingGet(exchangeId)

Listing of metrics available for specific exchange

Get all metrics that are actually available for the specified exchange.

### Example

```java
// Import classes:
//import org.openapitools.client.api.MetricsV2Api;

MetricsV2Api apiInstance = new MetricsV2Api();
String exchangeId = null; // String | Exchange identifier (e.g., BINANCE, UNISWAP-V3-ETHEREUM)
try {
    List<V1MetricInfo> result = apiInstance.v2MetricsExchangeListingGet(exchangeId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling MetricsV2Api#v2MetricsExchangeListingGet");
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


## v2MetricsListingGet

> List&lt;V1MetricInfo&gt; v2MetricsListingGet()

Listing of all supported metrics

Get all metrics available in the system.

### Example

```java
// Import classes:
//import org.openapitools.client.api.MetricsV2Api;

MetricsV2Api apiInstance = new MetricsV2Api();
try {
    List<V1MetricInfo> result = apiInstance.v2MetricsListingGet();
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling MetricsV2Api#v2MetricsListingGet");
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

