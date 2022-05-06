# ExchangeApi

All URIs are relative to *https://ems-mgmt-sandbox.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**exchangeLoginRequire**](ExchangeApi.md#exchangeLoginRequire) | **GET** /v1/exchanges | Get exchange configuration



## exchangeLoginRequire

> List&lt;ExchangeLoginRequire&gt; exchangeLoginRequire()

Get exchange configuration

Get information about the required parameters or server site location of the exchanges supported in the EMS API.

### Example

```java
// Import classes:
//import org.openapitools.client.api.ExchangeApi;

ExchangeApi apiInstance = new ExchangeApi();
try {
    List<ExchangeLoginRequire> result = apiInstance.exchangeLoginRequire();
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling ExchangeApi#exchangeLoginRequire");
    e.printStackTrace();
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**List&lt;ExchangeLoginRequire&gt;**](ExchangeLoginRequire.md)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader), [APIKeyQueryParam](../README.md#APIKeyQueryParam)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

