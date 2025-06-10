# OrderBookL3Api

All URIs are relative to *https://rest.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1Orderbooks3CurrentGet**](OrderBookL3Api.md#v1Orderbooks3CurrentGet) | **GET** /v1/orderbooks3/current | Current order books
[**v1Orderbooks3SymbolIdCurrentGet**](OrderBookL3Api.md#v1Orderbooks3SymbolIdCurrentGet) | **GET** /v1/orderbooks3/{symbol_id}/current | Current order book by symbol_id



## v1Orderbooks3CurrentGet

> List&lt;V1OrderBookBase&gt; v1Orderbooks3CurrentGet(filterSymbolId, limitLevels)

Current order books

### Example

```java
// Import classes:
//import org.openapitools.client.api.OrderBookL3Api;

OrderBookL3Api apiInstance = new OrderBookL3Api();
String filterSymbolId = null; // String | Comma or semicolon delimited parts of symbol identifier used to filter the response.
Integer limitLevels = null; // Integer | The maximum number of levels to include in the response.
try {
    List<V1OrderBookBase> result = apiInstance.v1Orderbooks3CurrentGet(filterSymbolId, limitLevels);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling OrderBookL3Api#v1Orderbooks3CurrentGet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterSymbolId** | **String**| Comma or semicolon delimited parts of symbol identifier used to filter the response. | [optional] [default to null]
 **limitLevels** | **Integer**| The maximum number of levels to include in the response. | [optional] [default to null]

### Return type

[**List&lt;V1OrderBookBase&gt;**](V1OrderBookBase.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack


## v1Orderbooks3SymbolIdCurrentGet

> V1OrderBookBase v1Orderbooks3SymbolIdCurrentGet(symbolId, limitLevels)

Current order book by symbol_id

Retrieves the current order book for the specified symbol.

### Example

```java
// Import classes:
//import org.openapitools.client.api.OrderBookL3Api;

OrderBookL3Api apiInstance = new OrderBookL3Api();
String symbolId = null; // String | The symbol ID (from the Metadata -> Symbols)
Integer limitLevels = null; // Integer | The maximum number of levels to include in the response.
try {
    V1OrderBookBase result = apiInstance.v1Orderbooks3SymbolIdCurrentGet(symbolId, limitLevels);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling OrderBookL3Api#v1Orderbooks3SymbolIdCurrentGet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbolId** | **String**| The symbol ID (from the Metadata -&gt; Symbols) | [default to null]
 **limitLevels** | **Integer**| The maximum number of levels to include in the response. | [optional] [default to null]

### Return type

[**V1OrderBookBase**](V1OrderBookBase.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

