# OptionsApi

All URIs are relative to *https://rest.coinapi.io*

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**v1OptionsExchangeIdCurrentGet**](OptionsApi.md#v1OptionsExchangeIdCurrentGet) | **GET** /v1/options/{exchange_id}/current | Current data by Exchange |


<a id="v1OptionsExchangeIdCurrentGet"></a>
# **v1OptionsExchangeIdCurrentGet**
> kotlin.collections.List&lt;OptionsOptionExchangeGroup&gt; v1OptionsExchangeIdCurrentGet(exchangeId)

Current data by Exchange

Get current options data for a specific exchange.    Returns option data grouped by underlying asset, quote currency, and expiration time,  with quotes for both calls and puts at each strike price.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = OptionsApi()
val exchangeId : kotlin.String = exchangeId_example // kotlin.String | Exchange identifier (from the Metadata -> Exchanges)
try {
    val result : kotlin.collections.List<OptionsOptionExchangeGroup> = apiInstance.v1OptionsExchangeIdCurrentGet(exchangeId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling OptionsApi#v1OptionsExchangeIdCurrentGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling OptionsApi#v1OptionsExchangeIdCurrentGet")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **exchangeId** | **kotlin.String**| Exchange identifier (from the Metadata -&gt; Exchanges) | |

### Return type

[**kotlin.collections.List&lt;OptionsOptionExchangeGroup&gt;**](OptionsOptionExchangeGroup.md)

### Authorization


Configure ApiKey:
    ApiClient.apiKey["X-CoinAPI-Key"] = ""
    ApiClient.apiKeyPrefix["X-CoinAPI-Key"] = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json

