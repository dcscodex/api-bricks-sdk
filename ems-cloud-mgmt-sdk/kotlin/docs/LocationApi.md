# LocationApi

All URIs are relative to *https://ems-mgmt-sandbox.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**locations**](LocationApi.md#locations) | **GET** /v1/locations | Get site locations


<a name="locations"></a>
# **locations**
> kotlin.collections.List&lt;Locations&gt; locations()

Get site locations

This endpoint providing information about the server site locations supported in the EMS API.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = LocationApi()
try {
    val result : kotlin.collections.List<Locations> = apiInstance.locations()
    println(result)
} catch (e: ClientException) {
    println("4xx response calling LocationApi#locations")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling LocationApi#locations")
    e.printStackTrace()
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**kotlin.collections.List&lt;Locations&gt;**](Locations.md)

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

