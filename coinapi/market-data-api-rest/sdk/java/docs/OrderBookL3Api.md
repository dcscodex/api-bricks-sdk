# OrderBookL3Api

All URIs are relative to *https://rest.coinapi.io*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**v1Orderbooks3CurrentGet**](OrderBookL3Api.md#v1Orderbooks3CurrentGet) | **GET** /v1/orderbooks3/current | Current order books |
| [**v1Orderbooks3SymbolIdCurrentGet**](OrderBookL3Api.md#v1Orderbooks3SymbolIdCurrentGet) | **GET** /v1/orderbooks3/{symbol_id}/current | Current order book by symbol_id |


<a id="v1Orderbooks3CurrentGet"></a>
# **v1Orderbooks3CurrentGet**
> List&lt;V1OrderBookBase&gt; v1Orderbooks3CurrentGet(filterSymbolId, limitLevels)

Current order books

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.OrderBookL3Api;

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

    OrderBookL3Api apiInstance = new OrderBookL3Api(defaultClient);
    String filterSymbolId = "filterSymbolId_example"; // String | Comma or semicolon delimited parts of symbol identifier used to filter the response.
    Integer limitLevels = 56; // Integer | The maximum number of levels to include in the response.
    try {
      List<V1OrderBookBase> result = apiInstance.v1Orderbooks3CurrentGet(filterSymbolId, limitLevels);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling OrderBookL3Api#v1Orderbooks3CurrentGet");
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
| **filterSymbolId** | **String**| Comma or semicolon delimited parts of symbol identifier used to filter the response. | [optional] |
| **limitLevels** | **Integer**| The maximum number of levels to include in the response. | [optional] |

### Return type

[**List&lt;V1OrderBookBase&gt;**](V1OrderBookBase.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a id="v1Orderbooks3SymbolIdCurrentGet"></a>
# **v1Orderbooks3SymbolIdCurrentGet**
> V1OrderBookBase v1Orderbooks3SymbolIdCurrentGet(symbolId, limitLevels)

Current order book by symbol_id

Retrieves the current order book for the specified symbol.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.OrderBookL3Api;

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

    OrderBookL3Api apiInstance = new OrderBookL3Api(defaultClient);
    String symbolId = "symbolId_example"; // String | The symbol ID (from the Metadata -> Symbols)
    Integer limitLevels = 56; // Integer | The maximum number of levels to include in the response.
    try {
      V1OrderBookBase result = apiInstance.v1Orderbooks3SymbolIdCurrentGet(symbolId, limitLevels);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling OrderBookL3Api#v1Orderbooks3SymbolIdCurrentGet");
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

