# ExternalMetricsApi

All URIs are relative to *https://rest.coinapi.io*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**v1ExternalmetricsAssetHistoryGet**](ExternalMetricsApi.md#v1ExternalmetricsAssetHistoryGet) | **GET** /v1/externalmetrics/asset/history | Historical metrics for the asset |
| [**v1ExternalmetricsAssetListingGet**](ExternalMetricsApi.md#v1ExternalmetricsAssetListingGet) | **GET** /v1/externalmetrics/asset/listing | Listing of metrics available for specific asset |
| [**v1ExternalmetricsChainHistoryGet**](ExternalMetricsApi.md#v1ExternalmetricsChainHistoryGet) | **GET** /v1/externalmetrics/chain/history | Historical metrics for the chain |
| [**v1ExternalmetricsChainListingGet**](ExternalMetricsApi.md#v1ExternalmetricsChainListingGet) | **GET** /v1/externalmetrics/chain/listing | Listing of metrics available for specific chain |
| [**v1ExternalmetricsExchangeHistoryGet**](ExternalMetricsApi.md#v1ExternalmetricsExchangeHistoryGet) | **GET** /v1/externalmetrics/exchange/history | Historical metrics for the exchange |
| [**v1ExternalmetricsExchangeListingGet**](ExternalMetricsApi.md#v1ExternalmetricsExchangeListingGet) | **GET** /v1/externalmetrics/exchange/listing | Listing of metrics available for specific exchange |
| [**v1ExternalmetricsListingGet**](ExternalMetricsApi.md#v1ExternalmetricsListingGet) | **GET** /v1/externalmetrics/listing | Listing of all supported metrics |


<a id="v1ExternalmetricsAssetHistoryGet"></a>
# **v1ExternalmetricsAssetHistoryGet**
> List&lt;Object&gt; v1ExternalmetricsAssetHistoryGet(metricId, assetId, timeStart, timeEnd, timeFormat, periodId, limit)

Historical metrics for the asset

Get asset metrics history.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.ExternalMetricsApi;

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

    ExternalMetricsApi apiInstance = new ExternalMetricsApi(defaultClient);
    String metricId = "metricId_example"; // String | Metric identifier (e.g., `TVL`, `STABLES_BRIDGED_USD`)
    String assetId = "assetId_example"; // String | Asset identifier (e.g., `USDC`, `USDT`)
    OffsetDateTime timeStart = OffsetDateTime.now(); // OffsetDateTime | Starting time in ISO 8601
    OffsetDateTime timeEnd = OffsetDateTime.now(); // OffsetDateTime | Ending time in ISO 8601
    String timeFormat = "timeFormat_example"; // String | If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec)
    String periodId = "periodId_example"; // String | Identifier of requested timeseries period (e.g. `1MIN` or `2MTH`), default value is `1MIN`
    Integer limit = 100; // Integer | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
    try {
      List<Object> result = apiInstance.v1ExternalmetricsAssetHistoryGet(metricId, assetId, timeStart, timeEnd, timeFormat, periodId, limit);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling ExternalMetricsApi#v1ExternalmetricsAssetHistoryGet");
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
| **metricId** | **String**| Metric identifier (e.g., &#x60;TVL&#x60;, &#x60;STABLES_BRIDGED_USD&#x60;) | |
| **assetId** | **String**| Asset identifier (e.g., &#x60;USDC&#x60;, &#x60;USDT&#x60;) | |
| **timeStart** | **OffsetDateTime**| Starting time in ISO 8601 | [optional] |
| **timeEnd** | **OffsetDateTime**| Ending time in ISO 8601 | [optional] |
| **timeFormat** | **String**| If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec) | [optional] |
| **periodId** | **String**| Identifier of requested timeseries period (e.g. &#x60;1MIN&#x60; or &#x60;2MTH&#x60;), default value is &#x60;1MIN&#x60; | [optional] |
| **limit** | **Integer**| Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100] |

### Return type

**List&lt;Object&gt;**

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |
| **400** | Invalid input, e.g., missing required parameters, invalid asset_id. |  -  |
| **500** | Internal server error. |  -  |

<a id="v1ExternalmetricsAssetListingGet"></a>
# **v1ExternalmetricsAssetListingGet**
> List&lt;V1MetricInfo&gt; v1ExternalmetricsAssetListingGet(assetId)

Listing of metrics available for specific asset

Get all metrics that are actually available for the specified asset.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.ExternalMetricsApi;

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

    ExternalMetricsApi apiInstance = new ExternalMetricsApi(defaultClient);
    String assetId = "assetId_example"; // String | Asset identifier (e.g., USDC, USDT)
    try {
      List<V1MetricInfo> result = apiInstance.v1ExternalmetricsAssetListingGet(assetId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling ExternalMetricsApi#v1ExternalmetricsAssetListingGet");
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
| **assetId** | **String**| Asset identifier (e.g., USDC, USDT) | |

### Return type

[**List&lt;V1MetricInfo&gt;**](V1MetricInfo.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a id="v1ExternalmetricsChainHistoryGet"></a>
# **v1ExternalmetricsChainHistoryGet**
> List&lt;Object&gt; v1ExternalmetricsChainHistoryGet(metricId, chainId, timeStart, timeEnd, timeFormat, periodId, limit)

Historical metrics for the chain

Get chain metrics history.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.ExternalMetricsApi;

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

    ExternalMetricsApi apiInstance = new ExternalMetricsApi(defaultClient);
    String metricId = "metricId_example"; // String | Metric identifier (e.g., `TVL`, `STABLES_BRIDGED_USD`)
    String chainId = "chainId_example"; // String | Chain identifier (e.g., `Ethereum`, `Arbitrum`)
    OffsetDateTime timeStart = OffsetDateTime.now(); // OffsetDateTime | Starting time in ISO 8601
    OffsetDateTime timeEnd = OffsetDateTime.now(); // OffsetDateTime | Ending time in ISO 8601
    String timeFormat = "timeFormat_example"; // String | If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec)
    String periodId = "periodId_example"; // String | Identifier of requested timeseries period (e.g. `1MIN` or `2MTH`), default value is `1MIN`
    Integer limit = 100; // Integer | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
    try {
      List<Object> result = apiInstance.v1ExternalmetricsChainHistoryGet(metricId, chainId, timeStart, timeEnd, timeFormat, periodId, limit);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling ExternalMetricsApi#v1ExternalmetricsChainHistoryGet");
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
| **metricId** | **String**| Metric identifier (e.g., &#x60;TVL&#x60;, &#x60;STABLES_BRIDGED_USD&#x60;) | |
| **chainId** | **String**| Chain identifier (e.g., &#x60;Ethereum&#x60;, &#x60;Arbitrum&#x60;) | |
| **timeStart** | **OffsetDateTime**| Starting time in ISO 8601 | [optional] |
| **timeEnd** | **OffsetDateTime**| Ending time in ISO 8601 | [optional] |
| **timeFormat** | **String**| If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec) | [optional] |
| **periodId** | **String**| Identifier of requested timeseries period (e.g. &#x60;1MIN&#x60; or &#x60;2MTH&#x60;), default value is &#x60;1MIN&#x60; | [optional] |
| **limit** | **Integer**| Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100] |

### Return type

**List&lt;Object&gt;**

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |
| **400** | Invalid input, e.g., missing required parameters, invalid chain_id. |  -  |
| **500** | Internal server error. |  -  |

<a id="v1ExternalmetricsChainListingGet"></a>
# **v1ExternalmetricsChainListingGet**
> List&lt;V1MetricInfo&gt; v1ExternalmetricsChainListingGet(chainId)

Listing of metrics available for specific chain

Get all metrics that are actually available for the specified blockchain chain.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.ExternalMetricsApi;

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

    ExternalMetricsApi apiInstance = new ExternalMetricsApi(defaultClient);
    String chainId = "chainId_example"; // String | Chain identifier (e.g., ETHEREUM, ARBITRUM)
    try {
      List<V1MetricInfo> result = apiInstance.v1ExternalmetricsChainListingGet(chainId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling ExternalMetricsApi#v1ExternalmetricsChainListingGet");
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
| **chainId** | **String**| Chain identifier (e.g., ETHEREUM, ARBITRUM) | |

### Return type

[**List&lt;V1MetricInfo&gt;**](V1MetricInfo.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a id="v1ExternalmetricsExchangeHistoryGet"></a>
# **v1ExternalmetricsExchangeHistoryGet**
> List&lt;Object&gt; v1ExternalmetricsExchangeHistoryGet(metricId, exchangeId, timeStart, timeEnd, timeFormat, periodId, limit)

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
import org.openapitools.client.api.ExternalMetricsApi;

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

    ExternalMetricsApi apiInstance = new ExternalMetricsApi(defaultClient);
    String metricId = "metricId_example"; // String | Metric identifier (e.g., `TVL`, `STABLES_BRIDGED_USD`)
    String exchangeId = "exchangeId_example"; // String | Exchange identifier (e.g., `BINANCE`, `UNISWAP-V3-ETHEREUM`)
    OffsetDateTime timeStart = OffsetDateTime.now(); // OffsetDateTime | Starting time in ISO 8601
    OffsetDateTime timeEnd = OffsetDateTime.now(); // OffsetDateTime | Ending time in ISO 8601
    String timeFormat = "timeFormat_example"; // String | If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec)
    String periodId = "periodId_example"; // String | Identifier of requested timeseries period (e.g. `1MIN` or `2MTH`), default value is `1MIN`
    Integer limit = 100; // Integer | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
    try {
      List<Object> result = apiInstance.v1ExternalmetricsExchangeHistoryGet(metricId, exchangeId, timeStart, timeEnd, timeFormat, periodId, limit);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling ExternalMetricsApi#v1ExternalmetricsExchangeHistoryGet");
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
| **metricId** | **String**| Metric identifier (e.g., &#x60;TVL&#x60;, &#x60;STABLES_BRIDGED_USD&#x60;) | |
| **exchangeId** | **String**| Exchange identifier (e.g., &#x60;BINANCE&#x60;, &#x60;UNISWAP-V3-ETHEREUM&#x60;) | |
| **timeStart** | **OffsetDateTime**| Starting time in ISO 8601 | [optional] |
| **timeEnd** | **OffsetDateTime**| Ending time in ISO 8601 | [optional] |
| **timeFormat** | **String**| If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec) | [optional] |
| **periodId** | **String**| Identifier of requested timeseries period (e.g. &#x60;1MIN&#x60; or &#x60;2MTH&#x60;), default value is &#x60;1MIN&#x60; | [optional] |
| **limit** | **Integer**| Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100] |

### Return type

**List&lt;Object&gt;**

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |
| **400** | Invalid input, e.g., missing required parameters, invalid exchange_id mapping. |  -  |
| **500** | Internal server error. |  -  |

<a id="v1ExternalmetricsExchangeListingGet"></a>
# **v1ExternalmetricsExchangeListingGet**
> List&lt;V1MetricInfo&gt; v1ExternalmetricsExchangeListingGet(exchangeId)

Listing of metrics available for specific exchange

Get all metrics that are actually available for the specified exchange.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.ExternalMetricsApi;

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

    ExternalMetricsApi apiInstance = new ExternalMetricsApi(defaultClient);
    String exchangeId = "exchangeId_example"; // String | Exchange identifier (e.g., BINANCE, UNISWAP-V3-ETHEREUM)
    try {
      List<V1MetricInfo> result = apiInstance.v1ExternalmetricsExchangeListingGet(exchangeId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling ExternalMetricsApi#v1ExternalmetricsExchangeListingGet");
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
| **exchangeId** | **String**| Exchange identifier (e.g., BINANCE, UNISWAP-V3-ETHEREUM) | |

### Return type

[**List&lt;V1MetricInfo&gt;**](V1MetricInfo.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a id="v1ExternalmetricsListingGet"></a>
# **v1ExternalmetricsListingGet**
> List&lt;V1MetricInfo&gt; v1ExternalmetricsListingGet()

Listing of all supported metrics

Get all metrics available in the system.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.ExternalMetricsApi;

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

    ExternalMetricsApi apiInstance = new ExternalMetricsApi(defaultClient);
    try {
      List<V1MetricInfo> result = apiInstance.v1ExternalmetricsListingGet();
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling ExternalMetricsApi#v1ExternalmetricsListingGet");
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

[**List&lt;V1MetricInfo&gt;**](V1MetricInfo.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

