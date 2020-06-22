# BalancesApi

All URIs are relative to *http://localhost:3001*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1BalancesGet**](BalancesApi.md#v1BalancesGet) | **GET** /v1/balances | Get balances



## v1BalancesGet

> List&lt;Balance&gt; v1BalancesGet(exchangeId)

Get balances

Returns all of your balances, including available balance.

### Example

```java
// Import classes:
//import org.openapitools.client.api.BalancesApi;

BalancesApi apiInstance = new BalancesApi();
String exchangeId = KRAKEN; // String | Exchange name
try {
    List<Balance> result = apiInstance.v1BalancesGet(exchangeId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling BalancesApi#v1BalancesGet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchangeId** | **String**| Exchange name | [optional] [default to null]

### Return type

[**List&lt;Balance&gt;**](Balance.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

