# AccountApi

All URIs are relative to *https://ems-mgmt-sandbox.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**DeleteAccount**](AccountApi.md#DeleteAccount) | **DELETE** /v1/accounts | Delete account
[**DeleteAccountAll**](AccountApi.md#DeleteAccountAll) | **DELETE** /v1/accounts/all | Delete all accounts
[**GetAccount**](AccountApi.md#GetAccount) | **GET** /v1/accounts | Get accounts
[**PersistAccount**](AccountApi.md#PersistAccount) | **POST** /v1/accounts | Add or update account


# **DeleteAccount**
> DeleteAccount(exchange.id)

Delete account

Delete specific exchange account maintained by the EMS API for your subscription.

### Example
```R
library(openapi)

var.exchange.id <- list("inner_example") # array[character] | Exchange identifier of the account to delete

#Delete account
api.instance <- AccountApi$new()
# Configure API key authorization: APIKeyHeader
api.instance$apiClient$apiKeys['X-CoinAPI-Key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: APIKeyQueryParam
api.instance$apiClient$apiKeys['apikey'] <- 'TODO_YOUR_API_KEY';
api.instance$DeleteAccount(var.exchange.id)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchange.id** | list( **character** )| Exchange identifier of the account to delete | 

### Return type

void (empty response body)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader), [APIKeyQueryParam](../README.md#APIKeyQueryParam)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **404** | Exchange account not found |  -  |

# **DeleteAccountAll**
> DeleteAccountAll()

Delete all accounts

Delete all exchange accounts maintained by the EMS API for your subscription.

### Example
```R
library(openapi)


#Delete all accounts
api.instance <- AccountApi$new()
# Configure API key authorization: APIKeyHeader
api.instance$apiClient$apiKeys['X-CoinAPI-Key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: APIKeyQueryParam
api.instance$apiClient$apiKeys['apikey'] <- 'TODO_YOUR_API_KEY';
api.instance$DeleteAccountAll()
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader), [APIKeyQueryParam](../README.md#APIKeyQueryParam)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |

# **GetAccount**
> array[GetAccount] GetAccount(filter.exchange.id=var.filter.exchange.id)

Get accounts

Get all accounts maintained for your subscription in the EMS API.

### Example
```R
library(openapi)

var.filter.exchange.id <- list("inner_example") # array[character] | Exchange id of the specific account to provide single account instead of the list of all accounts

#Get accounts
api.instance <- AccountApi$new()
# Configure API key authorization: APIKeyHeader
api.instance$apiClient$apiKeys['X-CoinAPI-Key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: APIKeyQueryParam
api.instance$apiClient$apiKeys['apikey'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$GetAccount(filter.exchange.id=var.filter.exchange.id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter.exchange.id** | list( **character** )| Exchange id of the specific account to provide single account instead of the list of all accounts | [optional] 

### Return type

[**array[GetAccount]**](GetAccount.md)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader), [APIKeyQueryParam](../README.md#APIKeyQueryParam)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |

# **PersistAccount**
> PersistAccount(body)

Add or update account

Add new or update existing exchange account for your subscription in the EMS API.

### Example
```R
library(openapi)

var.body <- AccountData$new("exchange_id_example", list(KeyValue$new("key_example", "value_example"))) # AccountData | Exchange account object that needs to be add/update to the EMS

#Add or update account
api.instance <- AccountApi$new()
# Configure API key authorization: APIKeyHeader
api.instance$apiClient$apiKeys['X-CoinAPI-Key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: APIKeyQueryParam
api.instance$apiClient$apiKeys['apikey'] <- 'TODO_YOUR_API_KEY';
api.instance$PersistAccount(var.body)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**AccountData**](AccountData.md)| Exchange account object that needs to be add/update to the EMS | 

### Return type

void (empty response body)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader), [APIKeyQueryParam](../README.md#APIKeyQueryParam)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **400** | Invalid exchange id |  -  |
| **405** | Validation exception |  -  |

