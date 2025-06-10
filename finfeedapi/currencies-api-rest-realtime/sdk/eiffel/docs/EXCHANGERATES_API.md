# EXCHANGERATES_API

All URIs are relative to *https://api-realtime.fx.finfeedapi.com*

Feature | HTTP request | Description
------------- | ------------- | -------------
[**specific_rate**](EXCHANGERATES_API.md#specific_rate) | **Get** /v1/exchangerate/{asset_id_base}/{asset_id_quote} | Get specific rate
[**v1_exchangerate_asset_id_base_get**](EXCHANGERATES_API.md#v1_exchangerate_asset_id_base_get) | **Get** /v1/exchangerate/{asset_id_base} | Get all current rates


# **specific_rate**
> specific_rate (asset_id_base: STRING_32 ; asset_id_quote: STRING_32 ): detachable V1_EXCHANGE_RATE


Get specific rate

Retrieves the exchange rate for a specific base and quote asset at a given time or the current rate.              :::info If you are using an exchange rate for mission-critical operations, then for best reliability, you should measure the difference between current time and the time returned from the response to ensure that value of the difference between those meets your internal requirements. :::


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **asset_id_base** | **STRING_32**| Requested exchange rate base asset identifier (from the Metadata -&gt; Assets) | [default to null]
 **asset_id_quote** | **STRING_32**| Requested exchange rate quote asset identifier (from the Metadata -&gt; Assets) | [default to null]

### Return type

[**V1_EXCHANGE_RATE**](v1.ExchangeRate.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_exchangerate_asset_id_base_get**
> v1_exchangerate_asset_id_base_get (asset_id_base: STRING_32 ; filter_asset_id:  detachable STRING_32 ; invert:  detachable BOOLEAN ): detachable V1_EXCHANGE_RATES


Get all current rates

Get the current exchange rate between requested asset and all other assets.              :::info If you are using an exchange rate for mission-critical operations, then for best reliability, you should measure the difference between current time and the time returned from the response to ensure that value of the difference between those meets your internal requirements. :::              :::info You can invert the rates by using Y = 1 / X equation, for example BTC/USD = 1 / (USD/BTC); :::


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **asset_id_base** | **STRING_32**| Requested exchange rates base asset identifier (from the Metadata -&gt; Assets) | [default to null]
 **filter_asset_id** | **STRING_32**| Comma or semicolon delimited asset identifiers used to filter response (optional) | [optional] [default to null]
 **invert** | **BOOLEAN**| True will invert all the rates (optional, if true then rates will be calculated as &#x60;rate &#x3D; 1 / actual_rate&#x60; eg. &#x60;USD/BTC&#x60; as &#x60;BTC/USD&#x60;) | [optional] [default to false]

### Return type

[**V1_EXCHANGE_RATES**](v1.ExchangeRates.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

