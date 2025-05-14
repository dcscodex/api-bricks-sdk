# NativeIexApi

All URIs are relative to *https://api-historical.stock.finfeedapi.com*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**v1NativeIexAdminMessagesSymbolGet**](NativeIexApi.md#v1NativeIexAdminMessagesSymbolGet) | **GET** /v1/native/iex/admin/messages/{symbol} | Get Admin Messages |
| [**v1NativeIexAdminSystemEventGet**](NativeIexApi.md#v1NativeIexAdminSystemEventGet) | **GET** /v1/native/iex/admin/system-event | Get System Events |
| [**v1NativeIexLevel1QuoteSymbolGet**](NativeIexApi.md#v1NativeIexLevel1QuoteSymbolGet) | **GET** /v1/native/iex/level1-quote/{symbol} | Get Level-1 Quotes |
| [**v1NativeIexLevel2PriceLevelUpdateSymbolGet**](NativeIexApi.md#v1NativeIexLevel2PriceLevelUpdateSymbolGet) | **GET** /v1/native/iex/level2-price-level-update/{symbol} | Get Level-2 Price Level Book |
| [**v1NativeIexLevel3OrderBookSymbolGet**](NativeIexApi.md#v1NativeIexLevel3OrderBookSymbolGet) | **GET** /v1/native/iex/level3-order-book/{symbol} | Get Level-3 Order Book |
| [**v1NativeIexTradeSymbolGet**](NativeIexApi.md#v1NativeIexTradeSymbolGet) | **GET** /v1/native/iex/trade/{symbol} | Get Trades |


<a id="v1NativeIexAdminMessagesSymbolGet"></a>
# **v1NativeIexAdminMessagesSymbolGet**
> List&lt;AdminAdminMessageModel&gt; v1NativeIexAdminMessagesSymbolGet(symbol, date)

Get Admin Messages

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.NativeIexApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api-historical.stock.finfeedapi.com");

    NativeIexApi apiInstance = new NativeIexApi(defaultClient);
    String symbol = "symbol_example"; // String | The symbol identifier
    OffsetDateTime date = OffsetDateTime.now(); // OffsetDateTime | Optional date in format YYYY-MM-DD (defaults to latest available data)
    try {
      List<AdminAdminMessageModel> result = apiInstance.v1NativeIexAdminMessagesSymbolGet(symbol, date);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling NativeIexApi#v1NativeIexAdminMessagesSymbolGet");
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
| **symbol** | **String**| The symbol identifier | |
| **date** | **OffsetDateTime**| Optional date in format YYYY-MM-DD (defaults to latest available data) | |

### Return type

[**List&lt;AdminAdminMessageModel&gt;**](AdminAdminMessageModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a id="v1NativeIexAdminSystemEventGet"></a>
# **v1NativeIexAdminSystemEventGet**
> List&lt;AdminSystemEventModel&gt; v1NativeIexAdminSystemEventGet(date)

Get System Events

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.NativeIexApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api-historical.stock.finfeedapi.com");

    NativeIexApi apiInstance = new NativeIexApi(defaultClient);
    OffsetDateTime date = OffsetDateTime.now(); // OffsetDateTime | Date in format YYYY-MM-DD
    try {
      List<AdminSystemEventModel> result = apiInstance.v1NativeIexAdminSystemEventGet(date);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling NativeIexApi#v1NativeIexAdminSystemEventGet");
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
| **date** | **OffsetDateTime**| Date in format YYYY-MM-DD | |

### Return type

[**List&lt;AdminSystemEventModel&gt;**](AdminSystemEventModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a id="v1NativeIexLevel1QuoteSymbolGet"></a>
# **v1NativeIexLevel1QuoteSymbolGet**
> List&lt;Level1QuoteUpdateModel&gt; v1NativeIexLevel1QuoteSymbolGet(symbol, date)

Get Level-1 Quotes

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.NativeIexApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api-historical.stock.finfeedapi.com");

    NativeIexApi apiInstance = new NativeIexApi(defaultClient);
    String symbol = "symbol_example"; // String | The symbol identifier
    OffsetDateTime date = OffsetDateTime.now(); // OffsetDateTime | Optional date in format YYYY-MM-DD (defaults to latest available data)
    try {
      List<Level1QuoteUpdateModel> result = apiInstance.v1NativeIexLevel1QuoteSymbolGet(symbol, date);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling NativeIexApi#v1NativeIexLevel1QuoteSymbolGet");
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
| **symbol** | **String**| The symbol identifier | |
| **date** | **OffsetDateTime**| Optional date in format YYYY-MM-DD (defaults to latest available data) | |

### Return type

[**List&lt;Level1QuoteUpdateModel&gt;**](Level1QuoteUpdateModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a id="v1NativeIexLevel2PriceLevelUpdateSymbolGet"></a>
# **v1NativeIexLevel2PriceLevelUpdateSymbolGet**
> List&lt;Level2PriceLevelUpdateModel&gt; v1NativeIexLevel2PriceLevelUpdateSymbolGet(symbol, date)

Get Level-2 Price Level Book

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.NativeIexApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api-historical.stock.finfeedapi.com");

    NativeIexApi apiInstance = new NativeIexApi(defaultClient);
    String symbol = "symbol_example"; // String | The symbol identifier
    OffsetDateTime date = OffsetDateTime.now(); // OffsetDateTime | Optional date in format YYYY-MM-DD (defaults to latest available data)
    try {
      List<Level2PriceLevelUpdateModel> result = apiInstance.v1NativeIexLevel2PriceLevelUpdateSymbolGet(symbol, date);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling NativeIexApi#v1NativeIexLevel2PriceLevelUpdateSymbolGet");
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
| **symbol** | **String**| The symbol identifier | |
| **date** | **OffsetDateTime**| Optional date in format YYYY-MM-DD (defaults to latest available data) | |

### Return type

[**List&lt;Level2PriceLevelUpdateModel&gt;**](Level2PriceLevelUpdateModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a id="v1NativeIexLevel3OrderBookSymbolGet"></a>
# **v1NativeIexLevel3OrderBookSymbolGet**
> List&lt;Level3OrderBookModel&gt; v1NativeIexLevel3OrderBookSymbolGet(symbol, date)

Get Level-3 Order Book

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.NativeIexApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api-historical.stock.finfeedapi.com");

    NativeIexApi apiInstance = new NativeIexApi(defaultClient);
    String symbol = "symbol_example"; // String | The symbol identifier
    OffsetDateTime date = OffsetDateTime.now(); // OffsetDateTime | Optional date in format YYYY-MM-DD (defaults to latest available data)
    try {
      List<Level3OrderBookModel> result = apiInstance.v1NativeIexLevel3OrderBookSymbolGet(symbol, date);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling NativeIexApi#v1NativeIexLevel3OrderBookSymbolGet");
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
| **symbol** | **String**| The symbol identifier | |
| **date** | **OffsetDateTime**| Optional date in format YYYY-MM-DD (defaults to latest available data) | |

### Return type

[**List&lt;Level3OrderBookModel&gt;**](Level3OrderBookModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a id="v1NativeIexTradeSymbolGet"></a>
# **v1NativeIexTradeSymbolGet**
> List&lt;TradeTradeModel&gt; v1NativeIexTradeSymbolGet(symbol, date)

Get Trades

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.NativeIexApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api-historical.stock.finfeedapi.com");

    NativeIexApi apiInstance = new NativeIexApi(defaultClient);
    String symbol = "symbol_example"; // String | The symbol identifier
    OffsetDateTime date = OffsetDateTime.now(); // OffsetDateTime | Optional date in format YYYY-MM-DD (defaults to latest available data)
    try {
      List<TradeTradeModel> result = apiInstance.v1NativeIexTradeSymbolGet(symbol, date);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling NativeIexApi#v1NativeIexTradeSymbolGet");
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
| **symbol** | **String**| The symbol identifier | |
| **date** | **OffsetDateTime**| Optional date in format YYYY-MM-DD (defaults to latest available data) | |

### Return type

[**List&lt;TradeTradeModel&gt;**](TradeTradeModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

