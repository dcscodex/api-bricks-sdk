# ExchangeRatesApi

All URIs are relative to *https://api-historical.fx.finfeedapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getSpecificRate**](ExchangeRatesApi.md#getSpecificRate) | **GET** /v1/exchangerate/{asset_id_base}/{asset_id_quote} | Get specific rate
[**v1ExchangerateAssetIdBaseAssetIdQuoteHistoryGet**](ExchangeRatesApi.md#v1ExchangerateAssetIdBaseAssetIdQuoteHistoryGet) | **GET** /v1/exchangerate/{asset_id_base}/{asset_id_quote}/history | Timeseries data
[**v1ExchangerateAssetIdBaseGet**](ExchangeRatesApi.md#v1ExchangerateAssetIdBaseGet) | **GET** /v1/exchangerate/{asset_id_base} | Get all current rates
[**v1ExchangerateHistoryPeriodsGet**](ExchangeRatesApi.md#v1ExchangerateHistoryPeriodsGet) | **GET** /v1/exchangerate/history/periods | Timeseries periods



## getSpecificRate

> V1ExchangeRate getSpecificRate(assetIdBase, assetIdQuote, time)

Get specific rate

Retrieves the exchange rate for a specific base and quote asset at a given time or the current rate.              :::info If you are using an exchange rate for mission-critical operations, then for best reliability, you should measure the difference between current time and the time returned from the response to ensure that value of the difference between those meets your internal requirements. :::

### Example

```java
// Import classes:
//import org.openapitools.client.api.ExchangeRatesApi;

ExchangeRatesApi apiInstance = new ExchangeRatesApi();
String assetIdBase = null; // String | Requested exchange rate base asset identifier (from the Metadata -> Assets)
String assetIdQuote = null; // String | Requested exchange rate quote asset identifier (from the Metadata -> Assets)
String time = null; // String | Time at which exchange rate is calculated (optional, if not supplied then current rate is returned)
try {
    V1ExchangeRate result = apiInstance.getSpecificRate(assetIdBase, assetIdQuote, time);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling ExchangeRatesApi#getSpecificRate");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **assetIdBase** | **String**| Requested exchange rate base asset identifier (from the Metadata -&gt; Assets) | [default to null]
 **assetIdQuote** | **String**| Requested exchange rate quote asset identifier (from the Metadata -&gt; Assets) | [default to null]
 **time** | **String**| Time at which exchange rate is calculated (optional, if not supplied then current rate is returned) | [optional] [default to null]

### Return type

[**V1ExchangeRate**](V1ExchangeRate.md)

### Authorization

[APIKey](../README.md#APIKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## v1ExchangerateAssetIdBaseAssetIdQuoteHistoryGet

> List&lt;V1ExchangeRatesTimeseriesItem&gt; v1ExchangerateAssetIdBaseAssetIdQuoteHistoryGet(assetIdBase, assetIdQuote, periodId, timeStart, timeEnd, limit)

Timeseries data

Get the historical exchange rates between two assets in the form of the timeseries.

### Example

```java
// Import classes:
//import org.openapitools.client.api.ExchangeRatesApi;

ExchangeRatesApi apiInstance = new ExchangeRatesApi();
String assetIdBase = null; // String | Requested exchange rates base asset identifier (from the Metadata -> Assets)
String assetIdQuote = null; // String | Requested exchange rates base asset identifier (from the Metadata -> Assets)
String periodId = null; // String | Identifier of requested timeseries period (required, e.g. `5SEC` or `1HRS`)
String timeStart = null; // String | Timeseries starting time in ISO 8601 (required)
String timeEnd = null; // String | Timeseries ending time in ISO 8601 (required)
Integer limit = 100; // Integer | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
try {
    List<V1ExchangeRatesTimeseriesItem> result = apiInstance.v1ExchangerateAssetIdBaseAssetIdQuoteHistoryGet(assetIdBase, assetIdQuote, periodId, timeStart, timeEnd, limit);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling ExchangeRatesApi#v1ExchangerateAssetIdBaseAssetIdQuoteHistoryGet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **assetIdBase** | **String**| Requested exchange rates base asset identifier (from the Metadata -&gt; Assets) | [default to null]
 **assetIdQuote** | **String**| Requested exchange rates base asset identifier (from the Metadata -&gt; Assets) | [default to null]
 **periodId** | **String**| Identifier of requested timeseries period (required, e.g. &#x60;5SEC&#x60; or &#x60;1HRS&#x60;) | [optional] [default to null]
 **timeStart** | **String**| Timeseries starting time in ISO 8601 (required) | [optional] [default to null]
 **timeEnd** | **String**| Timeseries ending time in ISO 8601 (required) | [optional] [default to null]
 **limit** | **Integer**| Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]

### Return type

[**List&lt;V1ExchangeRatesTimeseriesItem&gt;**](V1ExchangeRatesTimeseriesItem.md)

### Authorization

[APIKey](../README.md#APIKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## v1ExchangerateAssetIdBaseGet

> V1ExchangeRates v1ExchangerateAssetIdBaseGet(assetIdBase, filterAssetId, invert, time)

Get all current rates

Get the current exchange rate between requested asset and all other assets.              :::info If you are using an exchange rate for mission-critical operations, then for best reliability, you should measure the difference between current time and the time returned from the response to ensure that value of the difference between those meets your internal requirements. :::              :::info You can invert the rates by using Y &#x3D; 1 / X equation, for example BTC/USD &#x3D; 1 / (USD/BTC); :::

### Example

```java
// Import classes:
//import org.openapitools.client.api.ExchangeRatesApi;

ExchangeRatesApi apiInstance = new ExchangeRatesApi();
String assetIdBase = null; // String | Requested exchange rates base asset identifier (from the Metadata -> Assets)
String filterAssetId = null; // String | Comma or semicolon delimited asset identifiers used to filter response (optional)
Boolean invert = false; // Boolean | True will invert all the rates (optional, if true then rates will be calculated as `rate = 1 / actual_rate` eg. `USD/BTC` as `BTC/USD`)
String time = null; // String | Time for historical rates (optional)
try {
    V1ExchangeRates result = apiInstance.v1ExchangerateAssetIdBaseGet(assetIdBase, filterAssetId, invert, time);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling ExchangeRatesApi#v1ExchangerateAssetIdBaseGet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **assetIdBase** | **String**| Requested exchange rates base asset identifier (from the Metadata -&gt; Assets) | [default to null]
 **filterAssetId** | **String**| Comma or semicolon delimited asset identifiers used to filter response (optional) | [optional] [default to null]
 **invert** | **Boolean**| True will invert all the rates (optional, if true then rates will be calculated as &#x60;rate &#x3D; 1 / actual_rate&#x60; eg. &#x60;USD/BTC&#x60; as &#x60;BTC/USD&#x60;) | [optional] [default to false]
 **time** | **String**| Time for historical rates (optional) | [optional] [default to null]

### Return type

[**V1ExchangeRates**](V1ExchangeRates.md)

### Authorization

[APIKey](../README.md#APIKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## v1ExchangerateHistoryPeriodsGet

> List&lt;V1TimeseriesPeriod&gt; v1ExchangerateHistoryPeriodsGet()

Timeseries periods

You can also obtain historical exchange rates of any asset pair, grouped into time periods. Get full list of supported time periods available for requesting exchange rates historical timeseries data.              ## Timeseries periods Time unit | Period identifiers --- | --- Second | 1SEC, 2SEC, 3SEC, 4SEC, 5SEC, 6SEC, 10SEC, 15SEC, 20SEC, 30SEC Minute | 1MIN, 2MIN, 3MIN, 4MIN, 5MIN, 6MIN, 10MIN, 15MIN, 20MIN, 30MIN Hour | 1HRS, 2HRS, 3HRS, 4HRS, 6HRS, 8HRS, 12HRS Day | 1DAY, 2DAY, 3DAY, 5DAY, 7DAY, 10DAY

### Example

```java
// Import classes:
//import org.openapitools.client.api.ExchangeRatesApi;

ExchangeRatesApi apiInstance = new ExchangeRatesApi();
try {
    List<V1TimeseriesPeriod> result = apiInstance.v1ExchangerateHistoryPeriodsGet();
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling ExchangeRatesApi#v1ExchangerateHistoryPeriodsGet");
    e.printStackTrace();
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**List&lt;V1TimeseriesPeriod&gt;**](V1TimeseriesPeriod.md)

### Authorization

[APIKey](../README.md#APIKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

