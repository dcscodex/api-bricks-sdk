# ExchangeRatesApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**getSpecificRate**](ExchangeRatesApi.md#getSpecificRate) | **GET** /v1/exchangerate/{asset_id_base}/{asset_id_quote} | Get specific rate
[**v1ExchangerateAssetIdBaseAssetIdQuoteHistoryGet**](ExchangeRatesApi.md#v1ExchangerateAssetIdBaseAssetIdQuoteHistoryGet) | **GET** /v1/exchangerate/{asset_id_base}/{asset_id_quote}/history | Timeseries data
[**v1ExchangerateAssetIdBaseGet**](ExchangeRatesApi.md#v1ExchangerateAssetIdBaseGet) | **GET** /v1/exchangerate/{asset_id_base} | Get all current rates
[**v1ExchangerateHistoryPeriodsGet**](ExchangeRatesApi.md#v1ExchangerateHistoryPeriodsGet) | **GET** /v1/exchangerate/history/periods | Timeseries periods



## getSpecificRate

Get specific rate

Retrieves the exchange rate for a specific base and quote asset at a given time or the current rate.
            
:::info
If you are using an exchange rate for mission-critical operations, then for best reliability, you should measure the difference between current time and the time returned from the response to ensure that value of the difference between those meets your internal requirements.
:::

### Example

```bash
 getSpecificRate asset_id_base=value asset_id_quote=value  time=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **assetIdBase** | **string** | Requested exchange rate base asset identifier (from the Metadata -> Assets) | [default to null]
 **assetIdQuote** | **string** | Requested exchange rate quote asset identifier (from the Metadata -> Assets) | [default to null]
 **_time** | **string** | Time at which exchange rate is calculated (optional, if not supplied then current rate is returned) | [optional] [default to null]

### Return type

[**V1ExchangeRate**](V1ExchangeRate.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1ExchangerateAssetIdBaseAssetIdQuoteHistoryGet

Timeseries data

Get the historical exchange rates between two assets in the form of the timeseries.

### Example

```bash
 v1ExchangerateAssetIdBaseAssetIdQuoteHistoryGet asset_id_base=value asset_id_quote=value  period_id=value  time_start=value  time_end=value  limit=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **assetIdBase** | **string** | Requested exchange rates base asset identifier (from the Metadata -> Assets) | [default to null]
 **assetIdQuote** | **string** | Requested exchange rates base asset identifier (from the Metadata -> Assets) | [default to null]
 **periodId** | **string** | Identifier of requested timeseries period (required, e.g. '5SEC' or '1HRS') | [optional] [default to null]
 **timeStart** | **string** | Timeseries starting time in ISO 8601 (required) | [optional] [default to null]
 **timeEnd** | **string** | Timeseries ending time in ISO 8601 (required) | [optional] [default to null]
 **limit** | **integer** | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]

### Return type

[**array[V1ExchangeRatesTimeseriesItem]**](V1ExchangeRatesTimeseriesItem.md)

### Authorization

[ApiKey](../README.md#ApiKey)

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
 v1ExchangerateAssetIdBaseGet asset_id_base=value  filter_asset_id=value  invert=value  time=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **assetIdBase** | **string** | Requested exchange rates base asset identifier (from the Metadata -> Assets) | [default to null]
 **filterAssetId** | **string** | Comma or semicolon delimited asset identifiers used to filter response (optional) | [optional] [default to null]
 **invert** | **boolean** | True will invert all the rates (optional, if true then rates will be calculated as 'rate = 1 / actual_rate' eg. 'USD/BTC' as 'BTC/USD') | [optional] [default to false]
 **_time** | **string** | Time for historical rates (optional) | [optional] [default to null]

### Return type

[**V1ExchangeRates**](V1ExchangeRates.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1ExchangerateHistoryPeriodsGet

Timeseries periods

You can also obtain historical exchange rates of any asset pair, grouped into time periods.
Get full list of supported time periods available for requesting exchange rates historical timeseries data.
            
## Timeseries periods
Time unit |	Period identifiers
--- | ---
Second | 1SEC, 2SEC, 3SEC, 4SEC, 5SEC, 6SEC, 10SEC, 15SEC, 20SEC, 30SEC
Minute | 1MIN, 2MIN, 3MIN, 4MIN, 5MIN, 6MIN, 10MIN, 15MIN, 20MIN, 30MIN
Hour | 1HRS, 2HRS, 3HRS, 4HRS, 6HRS, 8HRS, 12HRS
Day | 1DAY, 2DAY, 3DAY, 5DAY, 7DAY, 10DAY

### Example

```bash
 v1ExchangerateHistoryPeriodsGet
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**array[V1TimeseriesPeriod]**](V1TimeseriesPeriod.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

