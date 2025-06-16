# OrderBookApi

All URIs are relative to *https://rest.coinapi.io*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
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
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.OrderBookApi;

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

    OrderBookApi apiInstance = new OrderBookApi(defaultClient);
    String symbolId = "symbolId_example"; // String | The symbol ID (from the Metadata -> Symbols)
    Integer limitLevels = 56; // Integer | The maximum number of levels to include in the response.
    try {
      V1OrderBookBase result = apiInstance.v1OrderbooksSymbolIdCurrentGet(symbolId, limitLevels);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling OrderBookApi#v1OrderbooksSymbolIdCurrentGet");
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
| **symbolId** | **String**| The symbol ID (from the Metadata -&gt; Symbols) | |
| **limitLevels** | **Integer**| The maximum number of levels to include in the response. | [optional] |

### Return type

[**V1OrderBookBase**](V1OrderBookBase.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a id="v1OrderbooksSymbolIdDepthCurrentGet"></a>
# **v1OrderbooksSymbolIdDepthCurrentGet**
> V1OrderBookDepth v1OrderbooksSymbolIdDepthCurrentGet(symbolId, limitLevels)

Current depth of the order book

Retrieves the current depth of the order book for the specified symbol.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.OrderBookApi;

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

    OrderBookApi apiInstance = new OrderBookApi(defaultClient);
    String symbolId = "symbolId_example"; // String | The symbol ID (from the Metadata -> Symbols)
    Integer limitLevels = 56; // Integer | The maximum number of levels to include in the response.
    try {
      V1OrderBookDepth result = apiInstance.v1OrderbooksSymbolIdDepthCurrentGet(symbolId, limitLevels);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling OrderBookApi#v1OrderbooksSymbolIdDepthCurrentGet");
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
| **symbolId** | **String**| The symbol ID (from the Metadata -&gt; Symbols) | |
| **limitLevels** | **Integer**| The maximum number of levels to include in the response. | [optional] |

### Return type

[**V1OrderBookDepth**](V1OrderBookDepth.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a id="v1OrderbooksSymbolIdHistoryGet"></a>
# **v1OrderbooksSymbolIdHistoryGet**
> List&lt;V1OrderBook&gt; v1OrderbooksSymbolIdHistoryGet(symbolId, date, timeStart, timeEnd, limit, limitLevels)

Historical data

Get historical order book snapshots for a specific symbol within time range, returned in time ascending order.              :::info The historical order book data via the REST API is currently limited by a number of updates and to the maximum number of 20 levels. :::  :::warning The &#39;time_start&#39; and &#39;time_end&#39; parameters must be from the same day as this endpoint provides intraday data only for specific day. Please use the &#39;date&#39; parameter instead for querying data for a specific day without filter. :::

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.OrderBookApi;

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

    OrderBookApi apiInstance = new OrderBookApi(defaultClient);
    String symbolId = "symbolId_example"; // String | Symbol identifier for requested timeseries (from the Metadata -> Symbols)
    String date = "date_example"; // String | Date in ISO 8601, returned data is for the whole given day (preferred method, required if 'time_start' is not provided)
    String timeStart = "timeStart_example"; // String | Starting time in ISO 8601 (deprecated, use 'date' instead)
    String timeEnd = "timeEnd_example"; // String | Timeseries ending time in ISO 8601 (deprecated, use 'date' instead)
    Integer limit = 100; // Integer | Amount of items to return (optional, minimum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
    Integer limitLevels = 56; // Integer | Maximum amount of levels from each side of the book to include in response (optional)
    try {
      List<V1OrderBook> result = apiInstance.v1OrderbooksSymbolIdHistoryGet(symbolId, date, timeStart, timeEnd, limit, limitLevels);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling OrderBookApi#v1OrderbooksSymbolIdHistoryGet");
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
| **symbolId** | **String**| Symbol identifier for requested timeseries (from the Metadata -&gt; Symbols) | |
| **date** | **String**| Date in ISO 8601, returned data is for the whole given day (preferred method, required if &#39;time_start&#39; is not provided) | [optional] |
| **timeStart** | **String**| Starting time in ISO 8601 (deprecated, use &#39;date&#39; instead) | [optional] |
| **timeEnd** | **String**| Timeseries ending time in ISO 8601 (deprecated, use &#39;date&#39; instead) | [optional] |
| **limit** | **Integer**| Amount of items to return (optional, minimum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100] |
| **limitLevels** | **Integer**| Maximum amount of levels from each side of the book to include in response (optional) | [optional] |

### Return type

[**List&lt;V1OrderBook&gt;**](V1OrderBook.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a id="v1OrderbooksSymbolIdLatestGet"></a>
# **v1OrderbooksSymbolIdLatestGet**
> List&lt;V1OrderBook&gt; v1OrderbooksSymbolIdLatestGet(symbolId, limit, limitLevels)

Latest data

Get latest order book snapshots for a specific symbol, returned in time descending order.              :::info The historical order book data via the REST API is currently limited by a number of updates and to the maximum number of 20 levels. :::

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.OrderBookApi;

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

    OrderBookApi apiInstance = new OrderBookApi(defaultClient);
    String symbolId = "symbolId_example"; // String | Symbol identifier of requested timeseries (from the Metadata -> Symbols)
    Integer limit = 100; // Integer | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
    Integer limitLevels = 56; // Integer | Maximum amount of levels from each side of the book to include in response (optional)
    try {
      List<V1OrderBook> result = apiInstance.v1OrderbooksSymbolIdLatestGet(symbolId, limit, limitLevels);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling OrderBookApi#v1OrderbooksSymbolIdLatestGet");
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
| **symbolId** | **String**| Symbol identifier of requested timeseries (from the Metadata -&gt; Symbols) | |
| **limit** | **Integer**| Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100] |
| **limitLevels** | **Integer**| Maximum amount of levels from each side of the book to include in response (optional) | [optional] |

### Return type

[**List&lt;V1OrderBook&gt;**](V1OrderBook.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

