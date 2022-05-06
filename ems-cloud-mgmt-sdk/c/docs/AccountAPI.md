# AccountAPI

All URIs are relative to *https://ems-mgmt-sandbox.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**AccountAPI_deleteAccount**](AccountAPI.md#AccountAPI_deleteAccount) | **DELETE** /v1/accounts | Delete account
[**AccountAPI_deleteAccountAll**](AccountAPI.md#AccountAPI_deleteAccountAll) | **DELETE** /v1/accounts/all | Delete all accounts
[**AccountAPI_getAccount**](AccountAPI.md#AccountAPI_getAccount) | **GET** /v1/accounts | Get accounts
[**AccountAPI_persistAccount**](AccountAPI.md#AccountAPI_persistAccount) | **POST** /v1/accounts | Add or update account


# **AccountAPI_deleteAccount**
```c
// Delete account
//
// Delete specific exchange account maintained by the EMS API for your subscription.
//
void AccountAPI_deleteAccount(apiClient_t *apiClient, list_t * exchange_id);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**exchange_id** | **[list_t](char.md) \*** | Exchange identifier of the account to delete | 

### Return type

void

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader), [APIKeyQueryParam](../README.md#APIKeyQueryParam)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **AccountAPI_deleteAccountAll**
```c
// Delete all accounts
//
// Delete all exchange accounts maintained by the EMS API for your subscription.
//
void AccountAPI_deleteAccountAll(apiClient_t *apiClient);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |

### Return type

void

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader), [APIKeyQueryParam](../README.md#APIKeyQueryParam)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **AccountAPI_getAccount**
```c
// Get accounts
//
// Get all accounts maintained for your subscription in the EMS API.
//
list_t* AccountAPI_getAccount(apiClient_t *apiClient, list_t * filter_exchange_id);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**filter_exchange_id** | **[list_t](char.md) \*** | Exchange id of the specific account to provide single account instead of the list of all accounts | [optional] 

### Return type

[list_t](get_account.md) *


### Authorization

[APIKeyHeader](../README.md#APIKeyHeader), [APIKeyQueryParam](../README.md#APIKeyQueryParam)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **AccountAPI_persistAccount**
```c
// Add or update account
//
// Add new or update existing exchange account for your subscription in the EMS API.
//
void AccountAPI_persistAccount(apiClient_t *apiClient, account_data_t * body);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**body** | **[account_data_t](account_data.md) \*** | Exchange account object that needs to be add/update to the EMS | 

### Return type

void

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader), [APIKeyQueryParam](../README.md#APIKeyQueryParam)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

