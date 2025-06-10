# OptionsAPI

All URIs are relative to *https://rest.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**OptionsAPI_v1OptionsExchangeIdCurrentGet**](OptionsAPI.md#OptionsAPI_v1OptionsExchangeIdCurrentGet) | **GET** /v1/options/{exchange_id}/current | Current data by Exchange


# **OptionsAPI_v1OptionsExchangeIdCurrentGet**
```c
// Current data by Exchange
//
// Get current options data for a specific exchange.    Returns option data grouped by underlying asset, quote currency, and expiration time,  with quotes for both calls and puts at each strike price.
//
list_t* OptionsAPI_v1OptionsExchangeIdCurrentGet(apiClient_t *apiClient, char *exchange_id);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**exchange_id** | **char \*** | Exchange identifier (from the Metadata -&gt; Exchanges) | 

### Return type

[list_t](options_option_exchange_group.md) *


### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

