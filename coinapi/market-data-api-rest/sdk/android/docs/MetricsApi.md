# MetricsApi

All URIs are relative to *https://rest.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1MetricsAssetCurrentGet**](MetricsApi.md#v1MetricsAssetCurrentGet) | **GET** /v1/metrics/asset/current | Current metrics for given asset
[**v1MetricsAssetHistoryGet**](MetricsApi.md#v1MetricsAssetHistoryGet) | **GET** /v1/metrics/asset/history | Historical metrics for asset
[**v1MetricsAssetListingGet**](MetricsApi.md#v1MetricsAssetListingGet) | **GET** /v1/metrics/asset/listing | Listing of all supported metrics for asset
[**v1MetricsExchangeCurrentGet**](MetricsApi.md#v1MetricsExchangeCurrentGet) | **GET** /v1/metrics/exchange/current | Current metrics for given exchange
[**v1MetricsExchangeHistoryGet**](MetricsApi.md#v1MetricsExchangeHistoryGet) | **GET** /v1/metrics/exchange/history | Historical metrics for the exchange
[**v1MetricsExchangeListingGet**](MetricsApi.md#v1MetricsExchangeListingGet) | **GET** /v1/metrics/exchange/listing | Listing of all supported exchange metrics
[**v1MetricsListingGet**](MetricsApi.md#v1MetricsListingGet) | **GET** /v1/metrics/listing | Listing of all supported metrics by CoinAPI
[**v1MetricsSymbolCurrentGet**](MetricsApi.md#v1MetricsSymbolCurrentGet) | **GET** /v1/metrics/symbol/current | Current metrics for given symbol
[**v1MetricsSymbolHistoryGet**](MetricsApi.md#v1MetricsSymbolHistoryGet) | **GET** /v1/metrics/symbol/history | Historical metrics for symbol
[**v1MetricsSymbolListingGet**](MetricsApi.md#v1MetricsSymbolListingGet) | **GET** /v1/metrics/symbol/listing | Listing of all supported metrics for symbol



## v1MetricsAssetCurrentGet

> List&lt;V1GeneralData&gt; v1MetricsAssetCurrentGet(metricId, assetId, assetIdExternal, exchangeId)

Current metrics for given asset

Get current asset metrics.

### Example

```java
// Import classes:
//import org.openapitools.client.api.MetricsApi;

MetricsApi apiInstance = new MetricsApi();
String metricId = null; // String | Metric identifier (from the Metrics -> Listing)
String assetId = null; // String | Asset identifier (from the Metadata -> Assets)
String assetIdExternal = null; // String | Exchange asset identifier
String exchangeId = null; // String | Exchange identifier (from the Metadata -> Exchanges)
try {
    List<V1GeneralData> result = apiInstance.v1MetricsAssetCurrentGet(metricId, assetId, assetIdExternal, exchangeId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling MetricsApi#v1MetricsAssetCurrentGet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **metricId** | **String**| Metric identifier (from the Metrics -&gt; Listing) | [optional] [default to null]
 **assetId** | **String**| Asset identifier (from the Metadata -&gt; Assets) | [optional] [default to null]
 **assetIdExternal** | **String**| Exchange asset identifier | [optional] [default to null]
 **exchangeId** | **String**| Exchange identifier (from the Metadata -&gt; Exchanges) | [optional] [default to null]

### Return type

[**List&lt;V1GeneralData&gt;**](V1GeneralData.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack


## v1MetricsAssetHistoryGet

> List&lt;V1MetricData&gt; v1MetricsAssetHistoryGet(metricId, exchangeId, assetId, assetIdExternal, timeStart, timeEnd, timeFormat, periodId, limit)

Historical metrics for asset

Get asset metrics history.

### Example

```java
// Import classes:
//import org.openapitools.client.api.MetricsApi;

MetricsApi apiInstance = new MetricsApi();
String metricId = null; // String | Metric identifier (from the Metrics -> Listing)
String exchangeId = null; // String | Exchange identifier (from the Metadata -> Exchanges)
String assetId = null; // String | Asset identifier (from the Metadata -> Assets)
String assetIdExternal = null; // String | Exchange asset identifier
Date timeStart = null; // Date | Starting time in ISO 8601
Date timeEnd = null; // Date | Ending time in ISO 8601
String timeFormat = null; // String | If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec)
String periodId = null; // String | Identifier of requested timeseries period (e.g. `5SEC` or `2MTH`), default value is `1SEC`
Integer limit = 100; // Integer | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
try {
    List<V1MetricData> result = apiInstance.v1MetricsAssetHistoryGet(metricId, exchangeId, assetId, assetIdExternal, timeStart, timeEnd, timeFormat, periodId, limit);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling MetricsApi#v1MetricsAssetHistoryGet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **metricId** | **String**| Metric identifier (from the Metrics -&gt; Listing) | [default to null]
 **exchangeId** | **String**| Exchange identifier (from the Metadata -&gt; Exchanges) | [default to null]
 **assetId** | **String**| Asset identifier (from the Metadata -&gt; Assets) | [optional] [default to null]
 **assetIdExternal** | **String**| Exchange asset identifier | [optional] [default to null]
 **timeStart** | **Date**| Starting time in ISO 8601 | [optional] [default to null]
 **timeEnd** | **Date**| Ending time in ISO 8601 | [optional] [default to null]
 **timeFormat** | **String**| If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec) | [optional] [default to null]
 **periodId** | **String**| Identifier of requested timeseries period (e.g. &#x60;5SEC&#x60; or &#x60;2MTH&#x60;), default value is &#x60;1SEC&#x60; | [optional] [default to null]
 **limit** | **Integer**| Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]

### Return type

[**List&lt;V1MetricData&gt;**](V1MetricData.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack


## v1MetricsAssetListingGet

> List&lt;V1ListingItem&gt; v1MetricsAssetListingGet(metricId, exchangeId, chainId, networkId, assetId, assetIdExternal)

Listing of all supported metrics for asset

Get data metrics for asset.

### Example

```java
// Import classes:
//import org.openapitools.client.api.MetricsApi;

MetricsApi apiInstance = new MetricsApi();
String metricId = null; // String | Metric identifier (from the Metrics -> Listing)
String exchangeId = null; // String | Exchange identifier (from the Metadata -> Exchanges)
String chainId = null; // String | Chain identifier
String networkId = null; // String | Network identifier
String assetId = null; // String | Asset identifier (from the Metadata -> Assets)
String assetIdExternal = null; // String | The asset external identifier
try {
    List<V1ListingItem> result = apiInstance.v1MetricsAssetListingGet(metricId, exchangeId, chainId, networkId, assetId, assetIdExternal);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling MetricsApi#v1MetricsAssetListingGet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **metricId** | **String**| Metric identifier (from the Metrics -&gt; Listing) | [optional] [default to null]
 **exchangeId** | **String**| Exchange identifier (from the Metadata -&gt; Exchanges) | [optional] [default to null]
 **chainId** | **String**| Chain identifier | [optional] [default to null]
 **networkId** | **String**| Network identifier | [optional] [default to null]
 **assetId** | **String**| Asset identifier (from the Metadata -&gt; Assets) | [optional] [default to null]
 **assetIdExternal** | **String**| The asset external identifier | [optional] [default to null]

### Return type

[**List&lt;V1ListingItem&gt;**](V1ListingItem.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack


## v1MetricsExchangeCurrentGet

> List&lt;V1GeneralData&gt; v1MetricsExchangeCurrentGet(exchangeId, metricId)

Current metrics for given exchange

Get current exchange metrics values.

### Example

```java
// Import classes:
//import org.openapitools.client.api.MetricsApi;

MetricsApi apiInstance = new MetricsApi();
String exchangeId = null; // String | The exchange identifier (from the Metadata -> Exchanges)
String metricId = null; // String | The metric identifier (from the Metrics -> Listing)
try {
    List<V1GeneralData> result = apiInstance.v1MetricsExchangeCurrentGet(exchangeId, metricId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling MetricsApi#v1MetricsExchangeCurrentGet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchangeId** | **String**| The exchange identifier (from the Metadata -&gt; Exchanges) | [default to null]
 **metricId** | **String**| The metric identifier (from the Metrics -&gt; Listing) | [optional] [default to null]

### Return type

[**List&lt;V1GeneralData&gt;**](V1GeneralData.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack


## v1MetricsExchangeHistoryGet

> List&lt;V1MetricData&gt; v1MetricsExchangeHistoryGet(metricId, exchangeId, timeStart, timeEnd, timeFormat, periodId, limit)

Historical metrics for the exchange

Get exchange metrics history.

### Example

```java
// Import classes:
//import org.openapitools.client.api.MetricsApi;

MetricsApi apiInstance = new MetricsApi();
String metricId = null; // String | Metric identifier (from the Metrics -> Listing)
String exchangeId = null; // String | Exchange identifier (from the Metadata -> Exchanges)
Date timeStart = null; // Date | Starting time in ISO 8601
Date timeEnd = null; // Date | Ending time in ISO 8601
String timeFormat = null; // String | If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec)
String periodId = null; // String | Identifier of requested timeseries period (e.g. `5SEC` or `2MTH`), default value is `1SEC`
Integer limit = 100; // Integer | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
try {
    List<V1MetricData> result = apiInstance.v1MetricsExchangeHistoryGet(metricId, exchangeId, timeStart, timeEnd, timeFormat, periodId, limit);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling MetricsApi#v1MetricsExchangeHistoryGet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **metricId** | **String**| Metric identifier (from the Metrics -&gt; Listing) | [default to null]
 **exchangeId** | **String**| Exchange identifier (from the Metadata -&gt; Exchanges) | [default to null]
 **timeStart** | **Date**| Starting time in ISO 8601 | [optional] [default to null]
 **timeEnd** | **Date**| Ending time in ISO 8601 | [optional] [default to null]
 **timeFormat** | **String**| If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec) | [optional] [default to null]
 **periodId** | **String**| Identifier of requested timeseries period (e.g. &#x60;5SEC&#x60; or &#x60;2MTH&#x60;), default value is &#x60;1SEC&#x60; | [optional] [default to null]
 **limit** | **Integer**| Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]

### Return type

[**List&lt;V1MetricData&gt;**](V1MetricData.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack


## v1MetricsExchangeListingGet

> List&lt;V1ListingItem&gt; v1MetricsExchangeListingGet(exchangeId, metricId)

Listing of all supported exchange metrics

Get data metrics for exchange.

### Example

```java
// Import classes:
//import org.openapitools.client.api.MetricsApi;

MetricsApi apiInstance = new MetricsApi();
String exchangeId = null; // String | The exchange identifier (from the Metadata -> Exchanges)
String metricId = null; // String | The metric identifier (from the Metrics -> Listing)
try {
    List<V1ListingItem> result = apiInstance.v1MetricsExchangeListingGet(exchangeId, metricId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling MetricsApi#v1MetricsExchangeListingGet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchangeId** | **String**| The exchange identifier (from the Metadata -&gt; Exchanges) | [default to null]
 **metricId** | **String**| The metric identifier (from the Metrics -&gt; Listing) | [optional] [default to null]

### Return type

[**List&lt;V1ListingItem&gt;**](V1ListingItem.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack


## v1MetricsListingGet

> List&lt;V1Metric&gt; v1MetricsListingGet()

Listing of all supported metrics by CoinAPI

Get all data metrics.

### Example

```java
// Import classes:
//import org.openapitools.client.api.MetricsApi;

MetricsApi apiInstance = new MetricsApi();
try {
    List<V1Metric> result = apiInstance.v1MetricsListingGet();
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling MetricsApi#v1MetricsListingGet");
    e.printStackTrace();
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**List&lt;V1Metric&gt;**](V1Metric.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack


## v1MetricsSymbolCurrentGet

> List&lt;V1GeneralData&gt; v1MetricsSymbolCurrentGet(metricId, symbolId, exchangeId)

Current metrics for given symbol

Get current symbol metrics.

### Example

```java
// Import classes:
//import org.openapitools.client.api.MetricsApi;

MetricsApi apiInstance = new MetricsApi();
String metricId = null; // String | Metric identifier (from the Metrics -> Listing)
String symbolId = null; // String | Symbol identifier (from the Metadata -> Symbols)
String exchangeId = null; // String | Exchange id (from the Metadata -> Exchanges)
try {
    List<V1GeneralData> result = apiInstance.v1MetricsSymbolCurrentGet(metricId, symbolId, exchangeId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling MetricsApi#v1MetricsSymbolCurrentGet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **metricId** | **String**| Metric identifier (from the Metrics -&gt; Listing) | [optional] [default to null]
 **symbolId** | **String**| Symbol identifier (from the Metadata -&gt; Symbols) | [optional] [default to null]
 **exchangeId** | **String**| Exchange id (from the Metadata -&gt; Exchanges) | [optional] [default to null]

### Return type

[**List&lt;V1GeneralData&gt;**](V1GeneralData.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack


## v1MetricsSymbolHistoryGet

> List&lt;V1MetricData&gt; v1MetricsSymbolHistoryGet(metricId, symbolId, timeStart, timeEnd, timeFormat, periodId, limit)

Historical metrics for symbol

Get symbol metrics history.

### Example

```java
// Import classes:
//import org.openapitools.client.api.MetricsApi;

MetricsApi apiInstance = new MetricsApi();
String metricId = null; // String | Metric identifier (from the Metrics -> Listing)
String symbolId = null; // String | Symbol identifier (from the Metadata -> Symbols)
Date timeStart = null; // Date | Starting time in ISO 8601
Date timeEnd = null; // Date | Ending time in ISO 8601
String timeFormat = null; // String | If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec)
String periodId = null; // String | Identifier of requested timeseries period (e.g. `5SEC` or `2MTH`), default value is `1SEC`
Integer limit = 100; // Integer | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
try {
    List<V1MetricData> result = apiInstance.v1MetricsSymbolHistoryGet(metricId, symbolId, timeStart, timeEnd, timeFormat, periodId, limit);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling MetricsApi#v1MetricsSymbolHistoryGet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **metricId** | **String**| Metric identifier (from the Metrics -&gt; Listing) | [default to null]
 **symbolId** | **String**| Symbol identifier (from the Metadata -&gt; Symbols) | [default to null]
 **timeStart** | **Date**| Starting time in ISO 8601 | [optional] [default to null]
 **timeEnd** | **Date**| Ending time in ISO 8601 | [optional] [default to null]
 **timeFormat** | **String**| If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec) | [optional] [default to null]
 **periodId** | **String**| Identifier of requested timeseries period (e.g. &#x60;5SEC&#x60; or &#x60;2MTH&#x60;), default value is &#x60;1SEC&#x60; | [optional] [default to null]
 **limit** | **Integer**| Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]

### Return type

[**List&lt;V1MetricData&gt;**](V1MetricData.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack


## v1MetricsSymbolListingGet

> List&lt;V1ListingItem&gt; v1MetricsSymbolListingGet(metricId, exchangeId, symbolId)

Listing of all supported metrics for symbol

Get data metrics for symbol.

### Example

```java
// Import classes:
//import org.openapitools.client.api.MetricsApi;

MetricsApi apiInstance = new MetricsApi();
String metricId = null; // String | Metric identifier (from the Metrics -> Listing)
String exchangeId = null; // String | Exchange identifier (from the Metadata -> Exchanges)
String symbolId = null; // String | Symbol identifier (from the Metadata -> Symbols)
try {
    List<V1ListingItem> result = apiInstance.v1MetricsSymbolListingGet(metricId, exchangeId, symbolId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling MetricsApi#v1MetricsSymbolListingGet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **metricId** | **String**| Metric identifier (from the Metrics -&gt; Listing) | [optional] [default to null]
 **exchangeId** | **String**| Exchange identifier (from the Metadata -&gt; Exchanges) | [optional] [default to null]
 **symbolId** | **String**| Symbol identifier (from the Metadata -&gt; Symbols) | [optional] [default to null]

### Return type

[**List&lt;V1ListingItem&gt;**](V1ListingItem.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

