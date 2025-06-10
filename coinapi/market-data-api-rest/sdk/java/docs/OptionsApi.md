# OptionsApi

All URIs are relative to *https://rest.coinapi.io*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**v1OptionsExchangeIdCurrentGet**](OptionsApi.md#v1OptionsExchangeIdCurrentGet) | **GET** /v1/options/{exchange_id}/current | Current data by Exchange |


<a id="v1OptionsExchangeIdCurrentGet"></a>
# **v1OptionsExchangeIdCurrentGet**
> List&lt;OptionsOptionExchangeGroup&gt; v1OptionsExchangeIdCurrentGet(exchangeId)

Current data by Exchange

Get current options data for a specific exchange.    Returns option data grouped by underlying asset, quote currency, and expiration time,  with quotes for both calls and puts at each strike price.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.OptionsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://rest.coinapi.io");
    
    // Configure API key authorization: ApiKey
    ApiKeyAuth ApiKey = (ApiKeyAuth) defaultClient.getAuthentication("ApiKey");
    ApiKey.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //ApiKey.setApiKeyPrefix("Token");

    OptionsApi apiInstance = new OptionsApi(defaultClient);
    String exchangeId = "exchangeId_example"; // String | Exchange identifier (from the Metadata -> Exchanges)
    try {
      List<OptionsOptionExchangeGroup> result = apiInstance.v1OptionsExchangeIdCurrentGet(exchangeId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling OptionsApi#v1OptionsExchangeIdCurrentGet");
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
| **exchangeId** | **String**| Exchange identifier (from the Metadata -&gt; Exchanges) | |

### Return type

[**List&lt;OptionsOptionExchangeGroup&gt;**](OptionsOptionExchangeGroup.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

