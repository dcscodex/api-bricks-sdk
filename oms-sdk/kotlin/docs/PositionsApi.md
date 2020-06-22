# PositionsApi

All URIs are relative to *http://localhost:3001*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1PositionsGet**](PositionsApi.md#v1PositionsGet) | **GET** /v1/positions | Get positions


<a name="v1PositionsGet"></a>
# **v1PositionsGet**
> kotlin.Array&lt;Position&gt; v1PositionsGet(exchangeId)

Get positions

Returns all of your positions.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = PositionsApi()
val exchangeId : kotlin.String = KRAKEN // kotlin.String | Exchange name
try {
    val result : kotlin.Array<Position> = apiInstance.v1PositionsGet(exchangeId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling PositionsApi#v1PositionsGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling PositionsApi#v1PositionsGet")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchangeId** | **kotlin.String**| Exchange name | [optional]

### Return type

[**kotlin.Array&lt;Position&gt;**](Position.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

