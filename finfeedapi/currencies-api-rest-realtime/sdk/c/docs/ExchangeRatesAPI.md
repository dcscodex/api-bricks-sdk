# ExchangeRatesAPI

All URIs are relative to *https://api-realtime.fx.finfeedapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ExchangeRatesAPI_getSpecificRate**](ExchangeRatesAPI.md#ExchangeRatesAPI_getSpecificRate) | **GET** /v1/exchangerate/{asset_id_base}/{asset_id_quote} | Get specific rate
[**ExchangeRatesAPI_v1ExchangerateAssetIdBaseGet**](ExchangeRatesAPI.md#ExchangeRatesAPI_v1ExchangerateAssetIdBaseGet) | **GET** /v1/exchangerate/{asset_id_base} | Get all current rates


# **ExchangeRatesAPI_getSpecificRate**
```c
// Get specific rate
//
// Retrieves the exchange rate for a specific base and quote asset at a given time or the current rate.              :::info If you are using an exchange rate for mission-critical operations, then for best reliability, you should measure the difference between current time and the time returned from the response to ensure that value of the difference between those meets your internal requirements. :::
//
v1_exchange_rate_t* ExchangeRatesAPI_getSpecificRate(apiClient_t *apiClient, char *asset_id_base, char *asset_id_quote);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**asset_id_base** | **char \*** | Requested exchange rate base asset identifier (from the Metadata -&gt; Assets) | 
**asset_id_quote** | **char \*** | Requested exchange rate quote asset identifier (from the Metadata -&gt; Assets) | 

### Return type

[v1_exchange_rate_t](v1_exchange_rate.md) *


### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ExchangeRatesAPI_v1ExchangerateAssetIdBaseGet**
```c
// Get all current rates
//
// Get the current exchange rate between requested asset and all other assets.              :::info If you are using an exchange rate for mission-critical operations, then for best reliability, you should measure the difference between current time and the time returned from the response to ensure that value of the difference between those meets your internal requirements. :::              :::info You can invert the rates by using Y = 1 / X equation, for example BTC/USD = 1 / (USD/BTC); :::
//
v1_exchange_rates_t* ExchangeRatesAPI_v1ExchangerateAssetIdBaseGet(apiClient_t *apiClient, char *asset_id_base, char *filter_asset_id, int *invert);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**asset_id_base** | **char \*** | Requested exchange rates base asset identifier (from the Metadata -&gt; Assets) | 
**filter_asset_id** | **char \*** | Comma or semicolon delimited asset identifiers used to filter response (optional) | [optional] 
**invert** | **int \*** | True will invert all the rates (optional, if true then rates will be calculated as &#x60;rate &#x3D; 1 / actual_rate&#x60; eg. &#x60;USD/BTC&#x60; as &#x60;BTC/USD&#x60;) | [optional] [default to false]

### Return type

[v1_exchange_rates_t](v1_exchange_rates.md) *


### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

