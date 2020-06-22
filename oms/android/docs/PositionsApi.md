# PositionsApi

All URIs are relative to *http://localhost:3001*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1PositionsGet**](PositionsApi.md#v1PositionsGet) | **GET** /v1/positions | Get positions



## v1PositionsGet

> List&lt;Position&gt; v1PositionsGet(exchangeId)

Get positions

Returns all of your positions.

### Example

```java
// Import classes:
//import org.openapitools.client.api.PositionsApi;

PositionsApi apiInstance = new PositionsApi();
String exchangeId = KRAKEN; // String | Exchange name
try {
    List<Position> result = apiInstance.v1PositionsGet(exchangeId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling PositionsApi#v1PositionsGet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchangeId** | **String**| Exchange name | [optional] [default to null]

### Return type

[**List&lt;Position&gt;**](Position.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

