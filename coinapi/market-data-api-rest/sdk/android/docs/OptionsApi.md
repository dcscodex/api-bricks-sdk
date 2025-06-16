# OptionsApi

All URIs are relative to *https://rest.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1OptionsExchangeIdCurrentGet**](OptionsApi.md#v1OptionsExchangeIdCurrentGet) | **GET** /v1/options/{exchange_id}/current | Current data by Exchange



## v1OptionsExchangeIdCurrentGet

> List&lt;OptionsOptionExchangeGroup&gt; v1OptionsExchangeIdCurrentGet(exchangeId)

Current data by Exchange

Get current options data for a specific exchange.  Returns option data grouped by underlying asset, quote currency, and expiration time, with quotes for both calls and puts at each strike price.

### Example

```java
// Import classes:
//import org.openapitools.client.api.OptionsApi;

OptionsApi apiInstance = new OptionsApi();
String exchangeId = null; // String | Exchange identifier (from the Metadata -> Exchanges)
try {
    List<OptionsOptionExchangeGroup> result = apiInstance.v1OptionsExchangeIdCurrentGet(exchangeId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling OptionsApi#v1OptionsExchangeIdCurrentGet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchangeId** | **String**| Exchange identifier (from the Metadata -&gt; Exchanges) | [default to null]

### Return type

[**List&lt;OptionsOptionExchangeGroup&gt;**](OptionsOptionExchangeGroup.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

