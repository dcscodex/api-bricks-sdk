# CoinApiMarketDataRestApi.ExchangeRatesApi

All URIs are relative to *https://rest.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getSpecificRate**](ExchangeRatesApi.md#getSpecificRate) | **GET** /v1/exchangerate/{asset_id_base}/{asset_id_quote} | Get specific rate
[**v1ExchangerateAssetIdBaseAssetIdQuoteHistoryGet**](ExchangeRatesApi.md#v1ExchangerateAssetIdBaseAssetIdQuoteHistoryGet) | **GET** /v1/exchangerate/{asset_id_base}/{asset_id_quote}/history | Timeseries data
[**v1ExchangerateAssetIdBaseGet**](ExchangeRatesApi.md#v1ExchangerateAssetIdBaseGet) | **GET** /v1/exchangerate/{asset_id_base} | Get all current rates
[**v1ExchangerateHistoryPeriodsGet**](ExchangeRatesApi.md#v1ExchangerateHistoryPeriodsGet) | **GET** /v1/exchangerate/history/periods | Timeseries periods



## getSpecificRate

> V1ExchangeRate getSpecificRate(assetIdBase, assetIdQuote, opts)

Get specific rate

Retrieves the exchange rate for a specific base and quote asset at a given time or the current rate.              :::info If you are using an exchange rate for mission-critical operations, then for best reliability, you should measure the difference between current time and the time returned from the response to ensure that value of the difference between those meets your internal requirements. :::

### Example

```javascript
import CoinApiMarketDataRestApi from 'coin_api_market_data_rest_api';
let defaultClient = CoinApiMarketDataRestApi.ApiClient.instance;
// Configure API key authorization: APIKey
let APIKey = defaultClient.authentications['APIKey'];
APIKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//APIKey.apiKeyPrefix = 'Token';
// Configure Bearer (JWT) access token for authorization: JWT
let JWT = defaultClient.authentications['JWT'];
JWT.accessToken = "YOUR ACCESS TOKEN"

let apiInstance = new CoinApiMarketDataRestApi.ExchangeRatesApi();
let assetIdBase = "assetIdBase_example"; // String | Requested exchange rate base asset identifier (from the Metadata -> Assets)
let assetIdQuote = "assetIdQuote_example"; // String | Requested exchange rate quote asset identifier (from the Metadata -> Assets)
let opts = {
  'time': "time_example" // String | Time at which exchange rate is calculated (optional, if not supplied then current rate is returned)
};
apiInstance.getSpecificRate(assetIdBase, assetIdQuote, opts, (error, data, response) => {
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
 **time** | **String**| Time at which exchange rate is calculated (optional, if not supplied then current rate is returned) | [optional] 

### Return type

[**V1ExchangeRate**](V1ExchangeRate.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack


## v1ExchangerateAssetIdBaseAssetIdQuoteHistoryGet

> [V1ExchangeRatesTimeseriesItem] v1ExchangerateAssetIdBaseAssetIdQuoteHistoryGet(assetIdBase, assetIdQuote, opts)

Timeseries data

Get the historical exchange rates between two assets in the form of the timeseries.

### Example

```javascript
import CoinApiMarketDataRestApi from 'coin_api_market_data_rest_api';
let defaultClient = CoinApiMarketDataRestApi.ApiClient.instance;
// Configure API key authorization: APIKey
let APIKey = defaultClient.authentications['APIKey'];
APIKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//APIKey.apiKeyPrefix = 'Token';
// Configure Bearer (JWT) access token for authorization: JWT
let JWT = defaultClient.authentications['JWT'];
JWT.accessToken = "YOUR ACCESS TOKEN"

let apiInstance = new CoinApiMarketDataRestApi.ExchangeRatesApi();
let assetIdBase = "assetIdBase_example"; // String | Requested exchange rates base asset identifier (from the Metadata -> Assets)
let assetIdQuote = "assetIdQuote_example"; // String | Requested exchange rates base asset identifier (from the Metadata -> Assets)
let opts = {
  'periodId': "periodId_example", // String | Identifier of requested timeseries period (required, e.g. `5SEC` or `1HRS`)
  'timeStart': "timeStart_example", // String | Timeseries starting time in ISO 8601 (required)
  'timeEnd': "timeEnd_example", // String | Timeseries ending time in ISO 8601 (required)
  'limit': 100 // Number | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
};
apiInstance.v1ExchangerateAssetIdBaseAssetIdQuoteHistoryGet(assetIdBase, assetIdQuote, opts, (error, data, response) => {
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
 **assetIdQuote** | **String**| Requested exchange rates base asset identifier (from the Metadata -&gt; Assets) | 
 **periodId** | **String**| Identifier of requested timeseries period (required, e.g. &#x60;5SEC&#x60; or &#x60;1HRS&#x60;) | [optional] 
 **timeStart** | **String**| Timeseries starting time in ISO 8601 (required) | [optional] 
 **timeEnd** | **String**| Timeseries ending time in ISO 8601 (required) | [optional] 
 **limit** | **Number**| Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]

### Return type

[**[V1ExchangeRatesTimeseriesItem]**](V1ExchangeRatesTimeseriesItem.md)

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
import CoinApiMarketDataRestApi from 'coin_api_market_data_rest_api';
let defaultClient = CoinApiMarketDataRestApi.ApiClient.instance;
// Configure API key authorization: APIKey
let APIKey = defaultClient.authentications['APIKey'];
APIKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//APIKey.apiKeyPrefix = 'Token';
// Configure Bearer (JWT) access token for authorization: JWT
let JWT = defaultClient.authentications['JWT'];
JWT.accessToken = "YOUR ACCESS TOKEN"

let apiInstance = new CoinApiMarketDataRestApi.ExchangeRatesApi();
let assetIdBase = "assetIdBase_example"; // String | Requested exchange rates base asset identifier (from the Metadata -> Assets)
let opts = {
  'filterAssetId': "filterAssetId_example", // String | Comma or semicolon delimited asset identifiers used to filter response (optional)
  'invert': false, // Boolean | True will invert all the rates (optional, if true then rates will be calculated as `rate = 1 / actual_rate` eg. `USD/BTC` as `BTC/USD`)
  'time': "time_example" // String | Time for historical rates (optional)
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
 **time** | **String**| Time for historical rates (optional) | [optional] 

### Return type

[**V1ExchangeRates**](V1ExchangeRates.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack


## v1ExchangerateHistoryPeriodsGet

> [V1TimeseriesPeriod] v1ExchangerateHistoryPeriodsGet()

Timeseries periods

You can also obtain historical exchange rates of any asset pair, grouped into time periods. Get full list of supported time periods available for requesting exchange rates historical timeseries data.              ## Timeseries periods Time unit | Period identifiers --- | --- Second | 1SEC, 2SEC, 3SEC, 4SEC, 5SEC, 6SEC, 10SEC, 15SEC, 20SEC, 30SEC Minute | 1MIN, 2MIN, 3MIN, 4MIN, 5MIN, 6MIN, 10MIN, 15MIN, 20MIN, 30MIN Hour | 1HRS, 2HRS, 3HRS, 4HRS, 6HRS, 8HRS, 12HRS Day | 1DAY, 2DAY, 3DAY, 5DAY, 7DAY, 10DAY

### Example

```javascript
import CoinApiMarketDataRestApi from 'coin_api_market_data_rest_api';
let defaultClient = CoinApiMarketDataRestApi.ApiClient.instance;
// Configure API key authorization: APIKey
let APIKey = defaultClient.authentications['APIKey'];
APIKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//APIKey.apiKeyPrefix = 'Token';
// Configure Bearer (JWT) access token for authorization: JWT
let JWT = defaultClient.authentications['JWT'];
JWT.accessToken = "YOUR ACCESS TOKEN"

let apiInstance = new CoinApiMarketDataRestApi.ExchangeRatesApi();
apiInstance.v1ExchangerateHistoryPeriodsGet((error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**[V1TimeseriesPeriod]**](V1TimeseriesPeriod.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

