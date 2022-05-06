# EndpointsApi

All URIs are relative to *https://ems-mgmt-sandbox.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**endpoints**](EndpointsApi.md#endpoints) | **GET** /v1/endpoints | Get API endpoints


<a name="endpoints"></a>
# **endpoints**
> kotlin.collections.List&lt;AccountEndpoint&gt; endpoints(filterExchangeId)

Get API endpoints

Get all API endpoints that the EMS API expose for your subscription.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = EndpointsApi()
val filterExchangeId : kotlin.collections.List<kotlin.String> =  // kotlin.collections.List<kotlin.String> | Exchange id
try {
    val result : kotlin.collections.List<AccountEndpoint> = apiInstance.endpoints(filterExchangeId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling EndpointsApi#endpoints")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling EndpointsApi#endpoints")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterExchangeId** | [**kotlin.collections.List&lt;kotlin.String&gt;**](kotlin.String.md)| Exchange id | [optional]

### Return type

[**kotlin.collections.List&lt;AccountEndpoint&gt;**](AccountEndpoint.md)

### Authorization


Configure APIKeyHeader:
    ApiClient.apiKey["X-CoinAPI-Key"] = ""
    ApiClient.apiKeyPrefix["X-CoinAPI-Key"] = ""
Configure APIKeyQueryParam:
    ApiClient.apiKey["apikey"] = ""
    ApiClient.apiKeyPrefix["apikey"] = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

