# ExchangeRatesApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**getSpecificRate**](ExchangeRatesApi.md#getSpecificRate) | **GET** /v1/exchangerate/{asset_id_base}/{asset_id_quote} | Get specific rate
[**v1ExchangerateAssetIdBaseGet**](ExchangeRatesApi.md#v1ExchangerateAssetIdBaseGet) | **GET** /v1/exchangerate/{asset_id_base} | Get all current rates



## getSpecificRate

Get specific rate

Retrieves the exchange rate for a specific base and quote asset at a given time or the current rate.
            
:::info
If you are using an exchange rate for mission-critical operations, then for best reliability, you should measure the difference between current time and the time returned from the response to ensure that value of the difference between those meets your internal requirements.
:::

### Example

```bash
 getSpecificRate asset_id_base=value asset_id_quote=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **assetIdBase** | **string** | Requested exchange rate base asset identifier (from the Metadata -> Assets) | [default to null]
 **assetIdQuote** | **string** | Requested exchange rate quote asset identifier (from the Metadata -> Assets) | [default to null]

### Return type

[**V1ExchangeRate**](V1ExchangeRate.md)

### Authorization

[APIKey](../README.md#APIKey)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1ExchangerateAssetIdBaseGet

Get all current rates

Get the current exchange rate between requested asset and all other assets.
            
:::info
If you are using an exchange rate for mission-critical operations, then for best reliability, you should measure the difference between current time and the time returned from the response to ensure that value of the difference between those meets your internal requirements.
:::
            
:::info
You can invert the rates by using Y = 1 / X equation, for example BTC/USD = 1 / (USD/BTC);
:::

### Example

```bash
 v1ExchangerateAssetIdBaseGet asset_id_base=value  filter_asset_id=value  invert=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **assetIdBase** | **string** | Requested exchange rates base asset identifier (from the Metadata -> Assets) | [default to null]
 **filterAssetId** | **string** | Comma or semicolon delimited asset identifiers used to filter response (optional) | [optional] [default to null]
 **invert** | **boolean** | True will invert all the rates (optional, if true then rates will be calculated as 'rate = 1 / actual_rate' eg. 'USD/BTC' as 'BTC/USD') | [optional] [default to false]

### Return type

[**V1ExchangeRates**](V1ExchangeRates.md)

### Authorization

[APIKey](../README.md#APIKey)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

