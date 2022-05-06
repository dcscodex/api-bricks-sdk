# LocationApi

All URIs are relative to *https://ems-mgmt-sandbox.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**locations**](LocationApi.md#locations) | **GET** /v1/locations | Get site locations



## locations

> List&lt;Locations&gt; locations()

Get site locations

This endpoint providing information about the server site locations supported in the EMS API.

### Example

```java
// Import classes:
//import org.openapitools.client.api.LocationApi;

LocationApi apiInstance = new LocationApi();
try {
    List<Locations> result = apiInstance.locations();
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling LocationApi#locations");
    e.printStackTrace();
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**List&lt;Locations&gt;**](Locations.md)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader), [APIKeyQueryParam](../README.md#APIKeyQueryParam)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

