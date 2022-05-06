# EndpointsApi

All URIs are relative to *https://ems-mgmt-sandbox.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**endpoints**](EndpointsApi.md#endpoints) | **GET** /v1/endpoints | Get API endpoints



## endpoints

> List&lt;AccountEndpoint&gt; endpoints(filterExchangeId)

Get API endpoints

Get all API endpoints that the EMS API expose for your subscription.

### Example

```java
// Import classes:
//import org.openapitools.client.api.EndpointsApi;

EndpointsApi apiInstance = new EndpointsApi();
List<String> filterExchangeId = null; // List<String> | Exchange id
try {
    List<AccountEndpoint> result = apiInstance.endpoints(filterExchangeId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling EndpointsApi#endpoints");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterExchangeId** | [**List&lt;String&gt;**](String.md)| Exchange id | [optional] [default to null]

### Return type

[**List&lt;AccountEndpoint&gt;**](AccountEndpoint.md)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader), [APIKeyQueryParam](../README.md#APIKeyQueryParam)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

