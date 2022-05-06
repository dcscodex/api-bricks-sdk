# AccountApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteAccount**](AccountApi.md#deleteAccount) | **DELETE** /v1/accounts | Delete account
[**deleteAccountAll**](AccountApi.md#deleteAccountAll) | **DELETE** /v1/accounts/all | Delete all accounts
[**getAccount**](AccountApi.md#getAccount) | **GET** /v1/accounts | Get accounts
[**persistAccount**](AccountApi.md#persistAccount) | **POST** /v1/accounts | Add or update account



## deleteAccount

Delete account

Delete specific exchange account maintained by the EMS API for your subscription.

### Example

```bash
 deleteAccount  Specify as:  exchange_id=value1 exchange_id=value2 exchange_id=...
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchangeId** | [**array[string]**](string.md) | Exchange identifier of the account to delete | [default to null]

### Return type

(empty response body)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader), [APIKeyQueryParam](../README.md#APIKeyQueryParam)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: Not Applicable

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteAccountAll

Delete all accounts

Delete all exchange accounts maintained by the EMS API for your subscription.

### Example

```bash
 deleteAccountAll
```

### Parameters

This endpoint does not need any parameter.

### Return type

(empty response body)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader), [APIKeyQueryParam](../README.md#APIKeyQueryParam)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: Not Applicable

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getAccount

Get accounts

Get all accounts maintained for your subscription in the EMS API.

### Example

```bash
 getAccount  Specify as:  filter_exchange_id=value1 filter_exchange_id=value2 filter_exchange_id=...
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterExchangeId** | [**array[string]**](string.md) | Exchange id of the specific account to provide single account instead of the list of all accounts | [optional] [default to null]

### Return type

[**array[GetAccount]**](GetAccount.md)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader), [APIKeyQueryParam](../README.md#APIKeyQueryParam)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## persistAccount

Add or update account

Add new or update existing exchange account for your subscription in the EMS API.

### Example

```bash
 persistAccount
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**AccountData**](AccountData.md) | Exchange account object that needs to be add/update to the EMS |

### Return type

(empty response body)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader), [APIKeyQueryParam](../README.md#APIKeyQueryParam)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not Applicable

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

