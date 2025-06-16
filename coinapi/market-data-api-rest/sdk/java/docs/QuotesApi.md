# QuotesApi

All URIs are relative to *https://rest.coinapi.io*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**v1QuotesCurrentGet**](QuotesApi.md#v1QuotesCurrentGet) | **GET** /v1/quotes/current | Current data |
| [**v1QuotesLatestGet**](QuotesApi.md#v1QuotesLatestGet) | **GET** /v1/quotes/latest | Latest data |
| [**v1QuotesSymbolIdCurrentGet**](QuotesApi.md#v1QuotesSymbolIdCurrentGet) | **GET** /v1/quotes/{symbol_id}/current | Current quotes for a specific symbol |
| [**v1QuotesSymbolIdHistoryGet**](QuotesApi.md#v1QuotesSymbolIdHistoryGet) | **GET** /v1/quotes/{symbol_id}/history | Historical data |
| [**v1QuotesSymbolIdLatestGet**](QuotesApi.md#v1QuotesSymbolIdLatestGet) | **GET** /v1/quotes/{symbol_id}/latest | Latest quote updates for a specific symbol |


<a id="v1QuotesCurrentGet"></a>
# **v1QuotesCurrentGet**
> List&lt;V1QuoteTrade&gt; v1QuotesCurrentGet(filterSymbolId)

Current data

Get current quotes for all symbols or for a specific symbol.              :::info When requesting current data for a specific symbol, output is not encapsulated into JSON array as only one item is returned. :::

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.QuotesApi;

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

    QuotesApi apiInstance = new QuotesApi(defaultClient);
    String filterSymbolId = "filterSymbolId_example"; // String | Comma or semicolon delimited parts of symbol identifier used to filter response. (optional)
    try {
      List<V1QuoteTrade> result = apiInstance.v1QuotesCurrentGet(filterSymbolId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling QuotesApi#v1QuotesCurrentGet");
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
| **filterSymbolId** | **String**| Comma or semicolon delimited parts of symbol identifier used to filter response. (optional) | [optional] |

### Return type

[**List&lt;V1QuoteTrade&gt;**](V1QuoteTrade.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a id="v1QuotesLatestGet"></a>
# **v1QuotesLatestGet**
> List&lt;V1Quote&gt; v1QuotesLatestGet(filterSymbolId, limit)

Latest data

Get latest updates of the quotes up to 1 minute ago. Latest data is always returned in time descending order.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.QuotesApi;

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

    QuotesApi apiInstance = new QuotesApi(defaultClient);
    String filterSymbolId = "filterSymbolId_example"; // String | Comma or semicolon delimited parts of symbol identifier used to filter response. (optional)
    Integer limit = 100; // Integer | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
    try {
      List<V1Quote> result = apiInstance.v1QuotesLatestGet(filterSymbolId, limit);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling QuotesApi#v1QuotesLatestGet");
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
| **filterSymbolId** | **String**| Comma or semicolon delimited parts of symbol identifier used to filter response. (optional) | [optional] |
| **limit** | **Integer**| Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100] |

### Return type

[**List&lt;V1Quote&gt;**](V1Quote.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a id="v1QuotesSymbolIdCurrentGet"></a>
# **v1QuotesSymbolIdCurrentGet**
> V1QuoteTrade v1QuotesSymbolIdCurrentGet(symbolId)

Current quotes for a specific symbol

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.QuotesApi;

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

    QuotesApi apiInstance = new QuotesApi(defaultClient);
    String symbolId = "symbolId_example"; // String | The symbol identifier (from the Metadata -> Symbols)
    try {
      V1QuoteTrade result = apiInstance.v1QuotesSymbolIdCurrentGet(symbolId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling QuotesApi#v1QuotesSymbolIdCurrentGet");
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
| **symbolId** | **String**| The symbol identifier (from the Metadata -&gt; Symbols) | |

### Return type

[**V1QuoteTrade**](V1QuoteTrade.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a id="v1QuotesSymbolIdHistoryGet"></a>
# **v1QuotesSymbolIdHistoryGet**
> List&lt;V1Quote&gt; v1QuotesSymbolIdHistoryGet(symbolId, date, timeStart, timeEnd, limit)

Historical data

Get historical quote updates within requested time range, returned in time ascending order.  :::warning The &#39;time_start&#39; and &#39;time_end&#39; parameters must be from the same day as this endpoint provides intraday data only for specific day. Please use the &#39;date&#39; parameter instead for querying data for a specific day without filter. :::

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.QuotesApi;

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

    QuotesApi apiInstance = new QuotesApi(defaultClient);
    String symbolId = "symbolId_example"; // String | Symbol identifier for requested timeseries (from the Metadata -> Symbols)
    String date = "date_example"; // String | Date in ISO 8601, returned data is for the whole given day (preferred method, required if 'time_start' is not provided)
    String timeStart = "timeStart_example"; // String | Starting time in ISO 8601
    String timeEnd = "timeEnd_example"; // String | Timeseries ending time in ISO 8601
    Integer limit = 100; // Integer | Amount of items to return (optional, minimum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
    try {
      List<V1Quote> result = apiInstance.v1QuotesSymbolIdHistoryGet(symbolId, date, timeStart, timeEnd, limit);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling QuotesApi#v1QuotesSymbolIdHistoryGet");
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
| **timeStart** | **String**| Starting time in ISO 8601 | [optional] |
| **timeEnd** | **String**| Timeseries ending time in ISO 8601 | [optional] |
| **limit** | **Integer**| Amount of items to return (optional, minimum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100] |

### Return type

[**List&lt;V1Quote&gt;**](V1Quote.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a id="v1QuotesSymbolIdLatestGet"></a>
# **v1QuotesSymbolIdLatestGet**
> List&lt;V1Quote&gt; v1QuotesSymbolIdLatestGet(symbolId, limit)

Latest quote updates for a specific symbol

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.QuotesApi;

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

    QuotesApi apiInstance = new QuotesApi(defaultClient);
    String symbolId = "symbolId_example"; // String | Symbol identifier of requested timeseries (from the Metadata -> Symbols)
    Integer limit = 100; // Integer | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
    try {
      List<V1Quote> result = apiInstance.v1QuotesSymbolIdLatestGet(symbolId, limit);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling QuotesApi#v1QuotesSymbolIdLatestGet");
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

### Return type

[**List&lt;V1Quote&gt;**](V1Quote.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

