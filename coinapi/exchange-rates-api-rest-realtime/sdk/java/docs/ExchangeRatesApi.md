# ExchangeRatesApi

All URIs are relative to *https://api-realtime.exrates.coinapi.io*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**getSpecificRate**](ExchangeRatesApi.md#getSpecificRate) | **GET** /v1/exchangerate/{asset_id_base}/{asset_id_quote} | Get specific rate |
| [**v1ExchangerateAssetIdBaseGet**](ExchangeRatesApi.md#v1ExchangerateAssetIdBaseGet) | **GET** /v1/exchangerate/{asset_id_base} | Get all current rates |


<a id="getSpecificRate"></a>
# **getSpecificRate**
> V1ExchangeRate getSpecificRate(assetIdBase, assetIdQuote)

Get specific rate

Retrieves the exchange rate for a specific base and quote asset at a given time or the current rate.              :::info If you are using an exchange rate for mission-critical operations, then for best reliability, you should measure the difference between current time and the time returned from the response to ensure that value of the difference between those meets your internal requirements. :::

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.ExchangeRatesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api-realtime.exrates.coinapi.io");
    
    // Configure API key authorization: APIKey
    ApiKeyAuth APIKey = (ApiKeyAuth) defaultClient.getAuthentication("APIKey");
    APIKey.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //APIKey.setApiKeyPrefix("Token");

    // Configure HTTP bearer authorization: JWT
    HttpBearerAuth JWT = (HttpBearerAuth) defaultClient.getAuthentication("JWT");
    JWT.setBearerToken("BEARER TOKEN");

    ExchangeRatesApi apiInstance = new ExchangeRatesApi(defaultClient);
    String assetIdBase = "assetIdBase_example"; // String | Requested exchange rate base asset identifier (from the Metadata -> Assets)
    String assetIdQuote = "assetIdQuote_example"; // String | Requested exchange rate quote asset identifier (from the Metadata -> Assets)
    try {
      V1ExchangeRate result = apiInstance.getSpecificRate(assetIdBase, assetIdQuote);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling ExchangeRatesApi#getSpecificRate");
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
| **assetIdBase** | **String**| Requested exchange rate base asset identifier (from the Metadata -&gt; Assets) | |
| **assetIdQuote** | **String**| Requested exchange rate quote asset identifier (from the Metadata -&gt; Assets) | |

### Return type

[**V1ExchangeRate**](V1ExchangeRate.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a id="v1ExchangerateAssetIdBaseGet"></a>
# **v1ExchangerateAssetIdBaseGet**
> V1ExchangeRates v1ExchangerateAssetIdBaseGet(assetIdBase, filterAssetId, invert)

Get all current rates

Get the current exchange rate between requested asset and all other assets.              :::info If you are using an exchange rate for mission-critical operations, then for best reliability, you should measure the difference between current time and the time returned from the response to ensure that value of the difference between those meets your internal requirements. :::              :::info You can invert the rates by using Y &#x3D; 1 / X equation, for example BTC/USD &#x3D; 1 / (USD/BTC); :::

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.ExchangeRatesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api-realtime.exrates.coinapi.io");
    
    // Configure API key authorization: APIKey
    ApiKeyAuth APIKey = (ApiKeyAuth) defaultClient.getAuthentication("APIKey");
    APIKey.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //APIKey.setApiKeyPrefix("Token");

    // Configure HTTP bearer authorization: JWT
    HttpBearerAuth JWT = (HttpBearerAuth) defaultClient.getAuthentication("JWT");
    JWT.setBearerToken("BEARER TOKEN");

    ExchangeRatesApi apiInstance = new ExchangeRatesApi(defaultClient);
    String assetIdBase = "assetIdBase_example"; // String | Requested exchange rates base asset identifier (from the Metadata -> Assets)
    String filterAssetId = "filterAssetId_example"; // String | Comma or semicolon delimited asset identifiers used to filter response (optional)
    Boolean invert = false; // Boolean | True will invert all the rates (optional, if true then rates will be calculated as `rate = 1 / actual_rate` eg. `USD/BTC` as `BTC/USD`)
    try {
      V1ExchangeRates result = apiInstance.v1ExchangerateAssetIdBaseGet(assetIdBase, filterAssetId, invert);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling ExchangeRatesApi#v1ExchangerateAssetIdBaseGet");
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
| **assetIdBase** | **String**| Requested exchange rates base asset identifier (from the Metadata -&gt; Assets) | |
| **filterAssetId** | **String**| Comma or semicolon delimited asset identifiers used to filter response (optional) | [optional] |
| **invert** | **Boolean**| True will invert all the rates (optional, if true then rates will be calculated as &#x60;rate &#x3D; 1 / actual_rate&#x60; eg. &#x60;USD/BTC&#x60; as &#x60;BTC/USD&#x60;) | [optional] [default to false] |

### Return type

[**V1ExchangeRates**](V1ExchangeRates.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

