# MetricsApi

All URIs are relative to *https://rest.coinapi.io*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**v1MetricsAssetCurrentGet**](MetricsApi.md#v1MetricsAssetCurrentGet) | **GET** /v1/metrics/asset/current | Current metrics for given asset |
| [**v1MetricsAssetHistoryGet**](MetricsApi.md#v1MetricsAssetHistoryGet) | **GET** /v1/metrics/asset/history | Historical metrics for asset |
| [**v1MetricsAssetListingGet**](MetricsApi.md#v1MetricsAssetListingGet) | **GET** /v1/metrics/asset/listing | Listing of all supported metrics for asset |
| [**v1MetricsExchangeCurrentGet**](MetricsApi.md#v1MetricsExchangeCurrentGet) | **GET** /v1/metrics/exchange/current | Current metrics for given exchange |
| [**v1MetricsExchangeHistoryGet**](MetricsApi.md#v1MetricsExchangeHistoryGet) | **GET** /v1/metrics/exchange/history | Historical metrics for the exchange |
| [**v1MetricsExchangeListingGet**](MetricsApi.md#v1MetricsExchangeListingGet) | **GET** /v1/metrics/exchange/listing | Listing of all supported exchange metrics |
| [**v1MetricsListingGet**](MetricsApi.md#v1MetricsListingGet) | **GET** /v1/metrics/listing | Listing of all supported metrics by CoinAPI |
| [**v1MetricsSymbolCurrentGet**](MetricsApi.md#v1MetricsSymbolCurrentGet) | **GET** /v1/metrics/symbol/current | Current metrics for given symbol |
| [**v1MetricsSymbolHistoryGet**](MetricsApi.md#v1MetricsSymbolHistoryGet) | **GET** /v1/metrics/symbol/history | Historical metrics for symbol |
| [**v1MetricsSymbolListingGet**](MetricsApi.md#v1MetricsSymbolListingGet) | **GET** /v1/metrics/symbol/listing | Listing of all supported metrics for symbol |


<a id="v1MetricsAssetCurrentGet"></a>
# **v1MetricsAssetCurrentGet**
> List&lt;V1GeneralData&gt; v1MetricsAssetCurrentGet(metricId, assetId, assetIdExternal, exchangeId)

Current metrics for given asset

Get current asset metrics.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.MetricsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://rest.coinapi.io");
    
    // Configure API key authorization: APIKey
    ApiKeyAuth APIKey = (ApiKeyAuth) defaultClient.getAuthentication("APIKey");
    APIKey.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //APIKey.setApiKeyPrefix("Token");

    // Configure HTTP bearer authorization: JWT
    HttpBearerAuth JWT = (HttpBearerAuth) defaultClient.getAuthentication("JWT");
    JWT.setBearerToken("BEARER TOKEN");

    MetricsApi apiInstance = new MetricsApi(defaultClient);
    String metricId = "metricId_example"; // String | Metric identifier (from the Metrics -> Listing)
    String assetId = "assetId_example"; // String | Asset identifier (from the Metadata -> Assets)
    String assetIdExternal = "assetIdExternal_example"; // String | Exchange asset identifier
    String exchangeId = "exchangeId_example"; // String | Exchange identifier (from the Metadata -> Exchanges)
    try {
      List<V1GeneralData> result = apiInstance.v1MetricsAssetCurrentGet(metricId, assetId, assetIdExternal, exchangeId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling MetricsApi#v1MetricsAssetCurrentGet");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **metricId** | **String**| Metric identifier (from the Metrics -&gt; Listing) | [optional] |
| **assetId** | **String**| Asset identifier (from the Metadata -&gt; Assets) | [optional] |
| **assetIdExternal** | **String**| Exchange asset identifier | [optional] |
| **exchangeId** | **String**| Exchange identifier (from the Metadata -&gt; Exchanges) | [optional] |

### Return type

[**List&lt;V1GeneralData&gt;**](V1GeneralData.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a id="v1MetricsAssetHistoryGet"></a>
# **v1MetricsAssetHistoryGet**
> List&lt;V1MetricData&gt; v1MetricsAssetHistoryGet(metricId, exchangeId, assetId, assetIdExternal, timeStart, timeEnd, timeFormat, periodId, limit)

Historical metrics for asset

Get asset metrics history.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.MetricsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://rest.coinapi.io");
    
    // Configure API key authorization: APIKey
    ApiKeyAuth APIKey = (ApiKeyAuth) defaultClient.getAuthentication("APIKey");
    APIKey.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //APIKey.setApiKeyPrefix("Token");

    // Configure HTTP bearer authorization: JWT
    HttpBearerAuth JWT = (HttpBearerAuth) defaultClient.getAuthentication("JWT");
    JWT.setBearerToken("BEARER TOKEN");

    MetricsApi apiInstance = new MetricsApi(defaultClient);
    String metricId = "metricId_example"; // String | Metric identifier (from the Metrics -> Listing)
    String exchangeId = "exchangeId_example"; // String | Exchange identifier (from the Metadata -> Exchanges)
    String assetId = "assetId_example"; // String | Asset identifier (from the Metadata -> Assets)
    String assetIdExternal = "assetIdExternal_example"; // String | Exchange asset identifier
    OffsetDateTime timeStart = OffsetDateTime.now(); // OffsetDateTime | Starting time in ISO 8601
    OffsetDateTime timeEnd = OffsetDateTime.now(); // OffsetDateTime | Ending time in ISO 8601
    String timeFormat = "timeFormat_example"; // String | If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec)
    String periodId = "periodId_example"; // String | Identifier of requested timeseries period (e.g. `5SEC` or `2MTH`), default value is `1SEC`
    Integer limit = 100; // Integer | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
    try {
      List<V1MetricData> result = apiInstance.v1MetricsAssetHistoryGet(metricId, exchangeId, assetId, assetIdExternal, timeStart, timeEnd, timeFormat, periodId, limit);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling MetricsApi#v1MetricsAssetHistoryGet");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **metricId** | **String**| Metric identifier (from the Metrics -&gt; Listing) | |
| **exchangeId** | **String**| Exchange identifier (from the Metadata -&gt; Exchanges) | |
| **assetId** | **String**| Asset identifier (from the Metadata -&gt; Assets) | [optional] |
| **assetIdExternal** | **String**| Exchange asset identifier | [optional] |
| **timeStart** | **OffsetDateTime**| Starting time in ISO 8601 | [optional] |
| **timeEnd** | **OffsetDateTime**| Ending time in ISO 8601 | [optional] |
| **timeFormat** | **String**| If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec) | [optional] |
| **periodId** | **String**| Identifier of requested timeseries period (e.g. &#x60;5SEC&#x60; or &#x60;2MTH&#x60;), default value is &#x60;1SEC&#x60; | [optional] |
| **limit** | **Integer**| Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100] |

### Return type

[**List&lt;V1MetricData&gt;**](V1MetricData.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a id="v1MetricsAssetListingGet"></a>
# **v1MetricsAssetListingGet**
> List&lt;V1ListingItem&gt; v1MetricsAssetListingGet(metricId, exchangeId, chainId, networkId, assetId, assetIdExternal)

Listing of all supported metrics for asset

Get data metrics for asset.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.MetricsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://rest.coinapi.io");
    
    // Configure API key authorization: APIKey
    ApiKeyAuth APIKey = (ApiKeyAuth) defaultClient.getAuthentication("APIKey");
    APIKey.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //APIKey.setApiKeyPrefix("Token");

    // Configure HTTP bearer authorization: JWT
    HttpBearerAuth JWT = (HttpBearerAuth) defaultClient.getAuthentication("JWT");
    JWT.setBearerToken("BEARER TOKEN");

    MetricsApi apiInstance = new MetricsApi(defaultClient);
    String metricId = "metricId_example"; // String | Metric identifier (from the Metrics -> Listing)
    String exchangeId = "exchangeId_example"; // String | Exchange identifier (from the Metadata -> Exchanges)
    String chainId = "chainId_example"; // String | Chain identifier
    String networkId = "networkId_example"; // String | Network identifier
    String assetId = "assetId_example"; // String | Asset identifier (from the Metadata -> Assets)
    String assetIdExternal = "assetIdExternal_example"; // String | The asset external identifier
    try {
      List<V1ListingItem> result = apiInstance.v1MetricsAssetListingGet(metricId, exchangeId, chainId, networkId, assetId, assetIdExternal);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling MetricsApi#v1MetricsAssetListingGet");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **metricId** | **String**| Metric identifier (from the Metrics -&gt; Listing) | [optional] |
| **exchangeId** | **String**| Exchange identifier (from the Metadata -&gt; Exchanges) | [optional] |
| **chainId** | **String**| Chain identifier | [optional] |
| **networkId** | **String**| Network identifier | [optional] |
| **assetId** | **String**| Asset identifier (from the Metadata -&gt; Assets) | [optional] |
| **assetIdExternal** | **String**| The asset external identifier | [optional] |

### Return type

[**List&lt;V1ListingItem&gt;**](V1ListingItem.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a id="v1MetricsExchangeCurrentGet"></a>
# **v1MetricsExchangeCurrentGet**
> List&lt;V1GeneralData&gt; v1MetricsExchangeCurrentGet(exchangeId, metricId)

Current metrics for given exchange

Get current exchange metrics values.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.MetricsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://rest.coinapi.io");
    
    // Configure API key authorization: APIKey
    ApiKeyAuth APIKey = (ApiKeyAuth) defaultClient.getAuthentication("APIKey");
    APIKey.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //APIKey.setApiKeyPrefix("Token");

    // Configure HTTP bearer authorization: JWT
    HttpBearerAuth JWT = (HttpBearerAuth) defaultClient.getAuthentication("JWT");
    JWT.setBearerToken("BEARER TOKEN");

    MetricsApi apiInstance = new MetricsApi(defaultClient);
    String exchangeId = "exchangeId_example"; // String | The exchange identifier (from the Metadata -> Exchanges)
    String metricId = "metricId_example"; // String | The metric identifier (from the Metrics -> Listing)
    try {
      List<V1GeneralData> result = apiInstance.v1MetricsExchangeCurrentGet(exchangeId, metricId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling MetricsApi#v1MetricsExchangeCurrentGet");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **exchangeId** | **String**| The exchange identifier (from the Metadata -&gt; Exchanges) | |
| **metricId** | **String**| The metric identifier (from the Metrics -&gt; Listing) | [optional] |

### Return type

[**List&lt;V1GeneralData&gt;**](V1GeneralData.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a id="v1MetricsExchangeHistoryGet"></a>
# **v1MetricsExchangeHistoryGet**
> List&lt;V1MetricData&gt; v1MetricsExchangeHistoryGet(metricId, exchangeId, timeStart, timeEnd, timeFormat, periodId, limit)

Historical metrics for the exchange

Get exchange metrics history.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.MetricsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://rest.coinapi.io");
    
    // Configure API key authorization: APIKey
    ApiKeyAuth APIKey = (ApiKeyAuth) defaultClient.getAuthentication("APIKey");
    APIKey.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //APIKey.setApiKeyPrefix("Token");

    // Configure HTTP bearer authorization: JWT
    HttpBearerAuth JWT = (HttpBearerAuth) defaultClient.getAuthentication("JWT");
    JWT.setBearerToken("BEARER TOKEN");

    MetricsApi apiInstance = new MetricsApi(defaultClient);
    String metricId = "metricId_example"; // String | Metric identifier (from the Metrics -> Listing)
    String exchangeId = "exchangeId_example"; // String | Exchange identifier (from the Metadata -> Exchanges)
    OffsetDateTime timeStart = OffsetDateTime.now(); // OffsetDateTime | Starting time in ISO 8601
    OffsetDateTime timeEnd = OffsetDateTime.now(); // OffsetDateTime | Ending time in ISO 8601
    String timeFormat = "timeFormat_example"; // String | If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec)
    String periodId = "periodId_example"; // String | Identifier of requested timeseries period (e.g. `5SEC` or `2MTH`), default value is `1SEC`
    Integer limit = 100; // Integer | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
    try {
      List<V1MetricData> result = apiInstance.v1MetricsExchangeHistoryGet(metricId, exchangeId, timeStart, timeEnd, timeFormat, periodId, limit);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling MetricsApi#v1MetricsExchangeHistoryGet");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **metricId** | **String**| Metric identifier (from the Metrics -&gt; Listing) | |
| **exchangeId** | **String**| Exchange identifier (from the Metadata -&gt; Exchanges) | |
| **timeStart** | **OffsetDateTime**| Starting time in ISO 8601 | [optional] |
| **timeEnd** | **OffsetDateTime**| Ending time in ISO 8601 | [optional] |
| **timeFormat** | **String**| If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec) | [optional] |
| **periodId** | **String**| Identifier of requested timeseries period (e.g. &#x60;5SEC&#x60; or &#x60;2MTH&#x60;), default value is &#x60;1SEC&#x60; | [optional] |
| **limit** | **Integer**| Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100] |

### Return type

[**List&lt;V1MetricData&gt;**](V1MetricData.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a id="v1MetricsExchangeListingGet"></a>
# **v1MetricsExchangeListingGet**
> List&lt;V1ListingItem&gt; v1MetricsExchangeListingGet(exchangeId, metricId)

Listing of all supported exchange metrics

Get data metrics for exchange.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.MetricsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://rest.coinapi.io");
    
    // Configure API key authorization: APIKey
    ApiKeyAuth APIKey = (ApiKeyAuth) defaultClient.getAuthentication("APIKey");
    APIKey.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //APIKey.setApiKeyPrefix("Token");

    // Configure HTTP bearer authorization: JWT
    HttpBearerAuth JWT = (HttpBearerAuth) defaultClient.getAuthentication("JWT");
    JWT.setBearerToken("BEARER TOKEN");

    MetricsApi apiInstance = new MetricsApi(defaultClient);
    String exchangeId = "exchangeId_example"; // String | The exchange identifier (from the Metadata -> Exchanges)
    String metricId = "metricId_example"; // String | The metric identifier (from the Metrics -> Listing)
    try {
      List<V1ListingItem> result = apiInstance.v1MetricsExchangeListingGet(exchangeId, metricId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling MetricsApi#v1MetricsExchangeListingGet");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **exchangeId** | **String**| The exchange identifier (from the Metadata -&gt; Exchanges) | |
| **metricId** | **String**| The metric identifier (from the Metrics -&gt; Listing) | [optional] |

### Return type

[**List&lt;V1ListingItem&gt;**](V1ListingItem.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a id="v1MetricsListingGet"></a>
# **v1MetricsListingGet**
> List&lt;V1Metric&gt; v1MetricsListingGet()

Listing of all supported metrics by CoinAPI

Get all data metrics.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.MetricsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://rest.coinapi.io");
    
    // Configure API key authorization: APIKey
    ApiKeyAuth APIKey = (ApiKeyAuth) defaultClient.getAuthentication("APIKey");
    APIKey.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //APIKey.setApiKeyPrefix("Token");

    // Configure HTTP bearer authorization: JWT
    HttpBearerAuth JWT = (HttpBearerAuth) defaultClient.getAuthentication("JWT");
    JWT.setBearerToken("BEARER TOKEN");

    MetricsApi apiInstance = new MetricsApi(defaultClient);
    try {
      List<V1Metric> result = apiInstance.v1MetricsListingGet();
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling MetricsApi#v1MetricsListingGet");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List&lt;V1Metric&gt;**](V1Metric.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a id="v1MetricsSymbolCurrentGet"></a>
# **v1MetricsSymbolCurrentGet**
> List&lt;V1GeneralData&gt; v1MetricsSymbolCurrentGet(metricId, symbolId, exchangeId)

Current metrics for given symbol

Get current symbol metrics.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.MetricsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://rest.coinapi.io");
    
    // Configure API key authorization: APIKey
    ApiKeyAuth APIKey = (ApiKeyAuth) defaultClient.getAuthentication("APIKey");
    APIKey.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //APIKey.setApiKeyPrefix("Token");

    // Configure HTTP bearer authorization: JWT
    HttpBearerAuth JWT = (HttpBearerAuth) defaultClient.getAuthentication("JWT");
    JWT.setBearerToken("BEARER TOKEN");

    MetricsApi apiInstance = new MetricsApi(defaultClient);
    String metricId = "metricId_example"; // String | Metric identifier (from the Metrics -> Listing)
    String symbolId = "symbolId_example"; // String | Symbol identifier (from the Metadata -> Symbols)
    String exchangeId = "exchangeId_example"; // String | Exchange id (from the Metadata -> Exchanges)
    try {
      List<V1GeneralData> result = apiInstance.v1MetricsSymbolCurrentGet(metricId, symbolId, exchangeId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling MetricsApi#v1MetricsSymbolCurrentGet");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **metricId** | **String**| Metric identifier (from the Metrics -&gt; Listing) | [optional] |
| **symbolId** | **String**| Symbol identifier (from the Metadata -&gt; Symbols) | [optional] |
| **exchangeId** | **String**| Exchange id (from the Metadata -&gt; Exchanges) | [optional] |

### Return type

[**List&lt;V1GeneralData&gt;**](V1GeneralData.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a id="v1MetricsSymbolHistoryGet"></a>
# **v1MetricsSymbolHistoryGet**
> List&lt;V1MetricData&gt; v1MetricsSymbolHistoryGet(metricId, symbolId, timeStart, timeEnd, timeFormat, periodId, limit)

Historical metrics for symbol

Get symbol metrics history.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.MetricsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://rest.coinapi.io");
    
    // Configure API key authorization: APIKey
    ApiKeyAuth APIKey = (ApiKeyAuth) defaultClient.getAuthentication("APIKey");
    APIKey.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //APIKey.setApiKeyPrefix("Token");

    // Configure HTTP bearer authorization: JWT
    HttpBearerAuth JWT = (HttpBearerAuth) defaultClient.getAuthentication("JWT");
    JWT.setBearerToken("BEARER TOKEN");

    MetricsApi apiInstance = new MetricsApi(defaultClient);
    String metricId = "metricId_example"; // String | Metric identifier (from the Metrics -> Listing)
    String symbolId = "symbolId_example"; // String | Symbol identifier (from the Metadata -> Symbols)
    OffsetDateTime timeStart = OffsetDateTime.now(); // OffsetDateTime | Starting time in ISO 8601
    OffsetDateTime timeEnd = OffsetDateTime.now(); // OffsetDateTime | Ending time in ISO 8601
    String timeFormat = "timeFormat_example"; // String | If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec)
    String periodId = "periodId_example"; // String | Identifier of requested timeseries period (e.g. `5SEC` or `2MTH`), default value is `1SEC`
    Integer limit = 100; // Integer | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
    try {
      List<V1MetricData> result = apiInstance.v1MetricsSymbolHistoryGet(metricId, symbolId, timeStart, timeEnd, timeFormat, periodId, limit);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling MetricsApi#v1MetricsSymbolHistoryGet");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **metricId** | **String**| Metric identifier (from the Metrics -&gt; Listing) | |
| **symbolId** | **String**| Symbol identifier (from the Metadata -&gt; Symbols) | |
| **timeStart** | **OffsetDateTime**| Starting time in ISO 8601 | [optional] |
| **timeEnd** | **OffsetDateTime**| Ending time in ISO 8601 | [optional] |
| **timeFormat** | **String**| If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec) | [optional] |
| **periodId** | **String**| Identifier of requested timeseries period (e.g. &#x60;5SEC&#x60; or &#x60;2MTH&#x60;), default value is &#x60;1SEC&#x60; | [optional] |
| **limit** | **Integer**| Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100] |

### Return type

[**List&lt;V1MetricData&gt;**](V1MetricData.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a id="v1MetricsSymbolListingGet"></a>
# **v1MetricsSymbolListingGet**
> List&lt;V1ListingItem&gt; v1MetricsSymbolListingGet(metricId, exchangeId, symbolId)

Listing of all supported metrics for symbol

Get data metrics for symbol.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.MetricsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://rest.coinapi.io");
    
    // Configure API key authorization: APIKey
    ApiKeyAuth APIKey = (ApiKeyAuth) defaultClient.getAuthentication("APIKey");
    APIKey.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //APIKey.setApiKeyPrefix("Token");

    // Configure HTTP bearer authorization: JWT
    HttpBearerAuth JWT = (HttpBearerAuth) defaultClient.getAuthentication("JWT");
    JWT.setBearerToken("BEARER TOKEN");

    MetricsApi apiInstance = new MetricsApi(defaultClient);
    String metricId = "metricId_example"; // String | Metric identifier (from the Metrics -> Listing)
    String exchangeId = "exchangeId_example"; // String | Exchange identifier (from the Metadata -> Exchanges)
    String symbolId = "symbolId_example"; // String | Symbol identifier (from the Metadata -> Symbols)
    try {
      List<V1ListingItem> result = apiInstance.v1MetricsSymbolListingGet(metricId, exchangeId, symbolId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling MetricsApi#v1MetricsSymbolListingGet");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **metricId** | **String**| Metric identifier (from the Metrics -&gt; Listing) | [optional] |
| **exchangeId** | **String**| Exchange identifier (from the Metadata -&gt; Exchanges) | [optional] |
| **symbolId** | **String**| Symbol identifier (from the Metadata -&gt; Symbols) | [optional] |

### Return type

[**List&lt;V1ListingItem&gt;**](V1ListingItem.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

