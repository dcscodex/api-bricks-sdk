# AccountApi

All URIs are relative to *https://ems-mgmt-sandbox.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteAccount**](AccountApi.md#deleteAccount) | **DELETE** /v1/accounts | Delete account
[**deleteAccountAll**](AccountApi.md#deleteAccountAll) | **DELETE** /v1/accounts/all | Delete all accounts
[**getAccount**](AccountApi.md#getAccount) | **GET** /v1/accounts | Get accounts
[**persistAccount**](AccountApi.md#persistAccount) | **POST** /v1/accounts | Add or update account



## deleteAccount

> deleteAccount(exchangeId)

Delete account

Delete specific exchange account maintained by the EMS API for your subscription.

### Example

```java
// Import classes:
//import org.openapitools.client.api.AccountApi;

AccountApi apiInstance = new AccountApi();
List<String> exchangeId = null; // List<String> | Exchange identifier of the account to delete
try {
    apiInstance.deleteAccount(exchangeId);
} catch (ApiException e) {
    System.err.println("Exception when calling AccountApi#deleteAccount");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchangeId** | [**List&lt;String&gt;**](String.md)| Exchange identifier of the account to delete | [default to null]

### Return type

null (empty response body)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader), [APIKeyQueryParam](../README.md#APIKeyQueryParam)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## deleteAccountAll

> deleteAccountAll()

Delete all accounts

Delete all exchange accounts maintained by the EMS API for your subscription.

### Example

```java
// Import classes:
//import org.openapitools.client.api.AccountApi;

AccountApi apiInstance = new AccountApi();
try {
    apiInstance.deleteAccountAll();
} catch (ApiException e) {
    System.err.println("Exception when calling AccountApi#deleteAccountAll");
    e.printStackTrace();
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

null (empty response body)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader), [APIKeyQueryParam](../README.md#APIKeyQueryParam)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## getAccount

> List&lt;GetAccount&gt; getAccount(filterExchangeId)

Get accounts

Get all accounts maintained for your subscription in the EMS API.

### Example

```java
// Import classes:
//import org.openapitools.client.api.AccountApi;

AccountApi apiInstance = new AccountApi();
List<String> filterExchangeId = null; // List<String> | Exchange id of the specific account to provide single account instead of the list of all accounts
try {
    List<GetAccount> result = apiInstance.getAccount(filterExchangeId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling AccountApi#getAccount");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterExchangeId** | [**List&lt;String&gt;**](String.md)| Exchange id of the specific account to provide single account instead of the list of all accounts | [optional] [default to null]

### Return type

[**List&lt;GetAccount&gt;**](GetAccount.md)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader), [APIKeyQueryParam](../README.md#APIKeyQueryParam)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## persistAccount

> persistAccount(body)

Add or update account

Add new or update existing exchange account for your subscription in the EMS API.

### Example

```java
// Import classes:
//import org.openapitools.client.api.AccountApi;

AccountApi apiInstance = new AccountApi();
AccountData body = new AccountData(); // AccountData | Exchange account object that needs to be add/update to the EMS
try {
    apiInstance.persistAccount(body);
} catch (ApiException e) {
    System.err.println("Exception when calling AccountApi#persistAccount");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**AccountData**](AccountData.md)| Exchange account object that needs to be add/update to the EMS |

### Return type

null (empty response body)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader), [APIKeyQueryParam](../README.md#APIKeyQueryParam)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

