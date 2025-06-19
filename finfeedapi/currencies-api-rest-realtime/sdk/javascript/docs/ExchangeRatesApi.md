# FxRealtimeRestApi.ExchangeRatesApi

All URIs are relative to *https://api-realtime.fx.finfeedapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getSpecificRate**](ExchangeRatesApi.md#getSpecificRate) | **GET** /v1/exchangerate/{asset_id_base}/{asset_id_quote} | Get specific rate
[**v1ExchangerateAssetIdBaseGet**](ExchangeRatesApi.md#v1ExchangerateAssetIdBaseGet) | **GET** /v1/exchangerate/{asset_id_base} | Get all current rates



## getSpecificRate

> V1ExchangeRate getSpecificRate(assetIdBase, assetIdQuote)

Get specific rate

Retrieves the exchange rate for a specific base and quote asset at a given time or the current rate.              :::info If you are using an exchange rate for mission-critical operations, then for best reliability, you should measure the difference between current time and the time returned from the response to ensure that value of the difference between those meets your internal requirements. :::

### Example

```javascript
import FxRealtimeRestApi from 'fx_realtime_rest_api';
let defaultClient = FxRealtimeRestApi.ApiClient.instance;
// Configure API key authorization: APIKey
let APIKey = defaultClient.authentications['APIKey'];
APIKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//APIKey.apiKeyPrefix = 'Token';
// Configure Bearer (JWT) access token for authorization: JWT
let JWT = defaultClient.authentications['JWT'];
JWT.accessToken = "YOUR ACCESS TOKEN"

let apiInstance = new FxRealtimeRestApi.ExchangeRatesApi();
let assetIdBase = "assetIdBase_example"; // String | Requested exchange rate base asset identifier (from the Metadata -> Assets)
let assetIdQuote = "assetIdQuote_example"; // String | Requested exchange rate quote asset identifier (from the Metadata -> Assets)
apiInstance.getSpecificRate(assetIdBase, assetIdQuote, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **assetIdBase** | **String**| Requested exchange rate base asset identifier (from the Metadata -&gt; Assets) | 
 **assetIdQuote** | **String**| Requested exchange rate quote asset identifier (from the Metadata -&gt; Assets) | 

### Return type

[**V1ExchangeRate**](V1ExchangeRate.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack


## v1ExchangerateAssetIdBaseGet

> V1ExchangeRates v1ExchangerateAssetIdBaseGet(assetIdBase, opts)

Get all current rates

Get the current exchange rate between requested asset and all other assets.              :::info If you are using an exchange rate for mission-critical operations, then for best reliability, you should measure the difference between current time and the time returned from the response to ensure that value of the difference between those meets your internal requirements. :::              :::info You can invert the rates by using Y &#x3D; 1 / X equation, for example BTC/USD &#x3D; 1 / (USD/BTC); :::

### Example

```javascript
import FxRealtimeRestApi from 'fx_realtime_rest_api';
let defaultClient = FxRealtimeRestApi.ApiClient.instance;
// Configure API key authorization: APIKey
let APIKey = defaultClient.authentications['APIKey'];
APIKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//APIKey.apiKeyPrefix = 'Token';
// Configure Bearer (JWT) access token for authorization: JWT
let JWT = defaultClient.authentications['JWT'];
JWT.accessToken = "YOUR ACCESS TOKEN"

let apiInstance = new FxRealtimeRestApi.ExchangeRatesApi();
let assetIdBase = "assetIdBase_example"; // String | Requested exchange rates base asset identifier (from the Metadata -> Assets)
let opts = {
  'filterAssetId': "filterAssetId_example", // String | Comma or semicolon delimited asset identifiers used to filter response (optional)
  'invert': false // Boolean | True will invert all the rates (optional, if true then rates will be calculated as `rate = 1 / actual_rate` eg. `USD/BTC` as `BTC/USD`)
};
apiInstance.v1ExchangerateAssetIdBaseGet(assetIdBase, opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **assetIdBase** | **String**| Requested exchange rates base asset identifier (from the Metadata -&gt; Assets) | 
 **filterAssetId** | **String**| Comma or semicolon delimited asset identifiers used to filter response (optional) | [optional] 
 **invert** | **Boolean**| True will invert all the rates (optional, if true then rates will be calculated as &#x60;rate &#x3D; 1 / actual_rate&#x60; eg. &#x60;USD/BTC&#x60; as &#x60;BTC/USD&#x60;) | [optional] [default to false]

### Return type

[**V1ExchangeRates**](V1ExchangeRates.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

