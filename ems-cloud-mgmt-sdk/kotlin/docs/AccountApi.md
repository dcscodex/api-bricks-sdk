# AccountApi

All URIs are relative to *https://ems-mgmt-sandbox.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteAccount**](AccountApi.md#deleteAccount) | **DELETE** /v1/accounts | Delete account
[**deleteAccountAll**](AccountApi.md#deleteAccountAll) | **DELETE** /v1/accounts/all | Delete all accounts
[**getAccount**](AccountApi.md#getAccount) | **GET** /v1/accounts | Get accounts
[**persistAccount**](AccountApi.md#persistAccount) | **POST** /v1/accounts | Add or update account


<a name="deleteAccount"></a>
# **deleteAccount**
> deleteAccount(exchangeId)

Delete account

Delete specific exchange account maintained by the EMS API for your subscription.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = AccountApi()
val exchangeId : kotlin.collections.List<kotlin.String> =  // kotlin.collections.List<kotlin.String> | Exchange identifier of the account to delete
try {
    apiInstance.deleteAccount(exchangeId)
} catch (e: ClientException) {
    println("4xx response calling AccountApi#deleteAccount")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling AccountApi#deleteAccount")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchangeId** | [**kotlin.collections.List&lt;kotlin.String&gt;**](kotlin.String.md)| Exchange identifier of the account to delete |

### Return type

null (empty response body)

### Authorization


Configure APIKeyHeader:
    ApiClient.apiKey["X-CoinAPI-Key"] = ""
    ApiClient.apiKeyPrefix["X-CoinAPI-Key"] = ""
Configure APIKeyQueryParam:
    ApiClient.apiKey["apikey"] = ""
    ApiClient.apiKeyPrefix["apikey"] = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

<a name="deleteAccountAll"></a>
# **deleteAccountAll**
> deleteAccountAll()

Delete all accounts

Delete all exchange accounts maintained by the EMS API for your subscription.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = AccountApi()
try {
    apiInstance.deleteAccountAll()
} catch (e: ClientException) {
    println("4xx response calling AccountApi#deleteAccountAll")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling AccountApi#deleteAccountAll")
    e.printStackTrace()
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

null (empty response body)

### Authorization


Configure APIKeyHeader:
    ApiClient.apiKey["X-CoinAPI-Key"] = ""
    ApiClient.apiKeyPrefix["X-CoinAPI-Key"] = ""
Configure APIKeyQueryParam:
    ApiClient.apiKey["apikey"] = ""
    ApiClient.apiKeyPrefix["apikey"] = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

<a name="getAccount"></a>
# **getAccount**
> kotlin.collections.List&lt;GetAccount&gt; getAccount(filterExchangeId)

Get accounts

Get all accounts maintained for your subscription in the EMS API.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = AccountApi()
val filterExchangeId : kotlin.collections.List<kotlin.String> =  // kotlin.collections.List<kotlin.String> | Exchange id of the specific account to provide single account instead of the list of all accounts
try {
    val result : kotlin.collections.List<GetAccount> = apiInstance.getAccount(filterExchangeId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling AccountApi#getAccount")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling AccountApi#getAccount")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterExchangeId** | [**kotlin.collections.List&lt;kotlin.String&gt;**](kotlin.String.md)| Exchange id of the specific account to provide single account instead of the list of all accounts | [optional]

### Return type

[**kotlin.collections.List&lt;GetAccount&gt;**](GetAccount.md)

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

<a name="persistAccount"></a>
# **persistAccount**
> persistAccount(body)

Add or update account

Add new or update existing exchange account for your subscription in the EMS API.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = AccountApi()
val body : AccountData =  // AccountData | Exchange account object that needs to be add/update to the EMS
try {
    apiInstance.persistAccount(body)
} catch (e: ClientException) {
    println("4xx response calling AccountApi#persistAccount")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling AccountApi#persistAccount")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**AccountData**](AccountData.md)| Exchange account object that needs to be add/update to the EMS |

### Return type

null (empty response body)

### Authorization


Configure APIKeyHeader:
    ApiClient.apiKey["X-CoinAPI-Key"] = ""
    ApiClient.apiKeyPrefix["X-CoinAPI-Key"] = ""
Configure APIKeyQueryParam:
    ApiClient.apiKey["apikey"] = ""
    ApiClient.apiKeyPrefix["apikey"] = ""

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

