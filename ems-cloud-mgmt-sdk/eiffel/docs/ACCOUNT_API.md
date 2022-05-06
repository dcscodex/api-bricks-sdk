# ACCOUNT_API

All URIs are relative to *https://ems-mgmt-sandbox.coinapi.io*

Feature | HTTP request | Description
------------- | ------------- | -------------
[**account**](ACCOUNT_API.md#account) | **Get** /v1/accounts | Get accounts
[**delete_account**](ACCOUNT_API.md#delete_account) | **Delete** /v1/accounts | Delete account
[**delete_account_all**](ACCOUNT_API.md#delete_account_all) | **Delete** /v1/accounts/all | Delete all accounts
[**persist_account**](ACCOUNT_API.md#persist_account) | **Post** /v1/accounts | Add or update account


# **account**
> account (filter_exchange_id:  detachable LIST [STRING_32] ): detachable LIST [GET_ACCOUNT]


Get accounts

Get all accounts maintained for your subscription in the EMS API.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_exchange_id** | [**LIST [STRING_32]**](STRING_32.md)| Exchange id of the specific account to provide single account instead of the list of all accounts | [optional] [default to null]

### Return type

[**LIST [GET_ACCOUNT]**](GetAccount.md)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader), [APIKeyQueryParam](../README.md#APIKeyQueryParam)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_account**
> delete_account (exchange_id: LIST [STRING_32] )


Delete account

Delete specific exchange account maintained by the EMS API for your subscription.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchange_id** | [**LIST [STRING_32]**](STRING_32.md)| Exchange identifier of the account to delete | [default to null]

### Return type

{empty response body)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader), [APIKeyQueryParam](../README.md#APIKeyQueryParam)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_account_all**
> delete_account_all 


Delete all accounts

Delete all exchange accounts maintained by the EMS API for your subscription.


### Parameters
This endpoint does not need any parameter.

### Return type

{empty response body)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader), [APIKeyQueryParam](../README.md#APIKeyQueryParam)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **persist_account**
> persist_account (body: ACCOUNT_DATA )


Add or update account

Add new or update existing exchange account for your subscription in the EMS API.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**ACCOUNT_DATA**](ACCOUNT_DATA.md)| Exchange account object that needs to be add/update to the EMS | 

### Return type

{empty response body)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader), [APIKeyQueryParam](../README.md#APIKeyQueryParam)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

