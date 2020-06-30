# BalancesApi

All URIs are relative to *http://localhost:3001*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1BalancesGet**](BalancesApi.md#v1BalancesGet) | **GET** /v1/balances | Get balances


<a name="v1BalancesGet"></a>
# **v1BalancesGet**
> List&lt;Balance&gt; v1BalancesGet(exchangeId)

Get balances

Returns all of your balances, including available balance.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.BalancesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("http://localhost:3001");

    BalancesApi apiInstance = new BalancesApi(defaultClient);
    String exchangeId = KRAKEN; // String | Exchange name
    try {
      List<Balance> result = apiInstance.v1BalancesGet(exchangeId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling BalancesApi#v1BalancesGet");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchangeId** | **String**| Exchange name | [optional]

### Return type

[**List&lt;Balance&gt;**](Balance.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Result |  -  |

