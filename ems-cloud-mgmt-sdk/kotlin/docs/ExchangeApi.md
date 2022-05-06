# ExchangeApi

All URIs are relative to *https://ems-mgmt-sandbox.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**exchangeLoginRequire**](ExchangeApi.md#exchangeLoginRequire) | **GET** /v1/exchanges | Get exchange configuration


<a name="exchangeLoginRequire"></a>
# **exchangeLoginRequire**
> kotlin.collections.List&lt;ExchangeLoginRequire&gt; exchangeLoginRequire()

Get exchange configuration

Get information about the required parameters or server site location of the exchanges supported in the EMS API.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = ExchangeApi()
try {
    val result : kotlin.collections.List<ExchangeLoginRequire> = apiInstance.exchangeLoginRequire()
    println(result)
} catch (e: ClientException) {
    println("4xx response calling ExchangeApi#exchangeLoginRequire")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling ExchangeApi#exchangeLoginRequire")
    e.printStackTrace()
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**kotlin.collections.List&lt;ExchangeLoginRequire&gt;**](ExchangeLoginRequire.md)

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

