# EXCHANGERATES_API

All URIs are relative to *https://api-historical.exrates.coinapi.io*

Feature | HTTP request | Description
------------- | ------------- | -------------
[**specific_rate**](EXCHANGERATES_API.md#specific_rate) | **Get** /v1/exchangerate/{asset_id_base}/{asset_id_quote} | Get specific rate
[**v1_exchangerate_asset_id_base_asset_id_quote_history_get**](EXCHANGERATES_API.md#v1_exchangerate_asset_id_base_asset_id_quote_history_get) | **Get** /v1/exchangerate/{asset_id_base}/{asset_id_quote}/history | Timeseries data
[**v1_exchangerate_asset_id_base_get**](EXCHANGERATES_API.md#v1_exchangerate_asset_id_base_get) | **Get** /v1/exchangerate/{asset_id_base} | Get all current rates
[**v1_exchangerate_history_periods_get**](EXCHANGERATES_API.md#v1_exchangerate_history_periods_get) | **Get** /v1/exchangerate/history/periods | Timeseries periods


# **specific_rate**
> specific_rate (asset_id_base: STRING_32 ; asset_id_quote: STRING_32 ; time:  detachable STRING_32 ): detachable V1_EXCHANGE_RATE


Get specific rate

Retrieves the exchange rate for a specific base and quote asset at a given time or the current rate.                :::info  If you are using an exchange rate for mission-critical operations, then for best reliability, you should measure the difference between current time and the time returned from the response to ensure that value of the difference between those meets your internal requirements.  :::


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **asset_id_base** | **STRING_32**| Requested exchange rate base asset identifier (from the Metadata -&gt; Assets) | [default to null]
 **asset_id_quote** | **STRING_32**| Requested exchange rate quote asset identifier (from the Metadata -&gt; Assets) | [default to null]
 **time** | **STRING_32**| Time at which exchange rate is calculated (optional, if not supplied then current rate is returned) | [optional] [default to null]

### Return type

[**V1_EXCHANGE_RATE**](v1.ExchangeRate.md)

### Authorization

[APIKey](../README.md#APIKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_exchangerate_asset_id_base_asset_id_quote_history_get**
> v1_exchangerate_asset_id_base_asset_id_quote_history_get (asset_id_base: STRING_32 ; asset_id_quote: STRING_32 ; period_id:  detachable STRING_32 ; time_start:  detachable STRING_32 ; time_end:  detachable STRING_32 ; limit:  detachable INTEGER_32 ): detachable LIST [V1_EXCHANGE_RATES_TIMESERIES_ITEM]


Timeseries data

Get the historical exchange rates between two assets in the form of the timeseries.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **asset_id_base** | **STRING_32**| Requested exchange rates base asset identifier (from the Metadata -&gt; Assets) | [default to null]
 **asset_id_quote** | **STRING_32**| Requested exchange rates base asset identifier (from the Metadata -&gt; Assets) | [default to null]
 **period_id** | **STRING_32**| Identifier of requested timeseries period (required, e.g. &#x60;5SEC&#x60; or &#x60;1HRS&#x60;) | [optional] [default to null]
 **time_start** | **STRING_32**| Timeseries starting time in ISO 8601 (required) | [optional] [default to null]
 **time_end** | **STRING_32**| Timeseries ending time in ISO 8601 (required) | [optional] [default to null]
 **limit** | **INTEGER_32**| Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]

### Return type

[**LIST [V1_EXCHANGE_RATES_TIMESERIES_ITEM]**](v1.ExchangeRatesTimeseriesItem.md)

### Authorization

[APIKey](../README.md#APIKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_exchangerate_asset_id_base_get**
> v1_exchangerate_asset_id_base_get (asset_id_base: STRING_32 ; filter_asset_id:  detachable STRING_32 ; invert:  detachable BOOLEAN ; time:  detachable STRING_32 ): detachable V1_EXCHANGE_RATES


Get all current rates

Get the current exchange rate between requested asset and all other assets.                :::info  If you are using an exchange rate for mission-critical operations, then for best reliability, you should measure the difference between current time and the time returned from the response to ensure that value of the difference between those meets your internal requirements.  :::                :::info  You can invert the rates by using Y = 1 / X equation, for example BTC/USD = 1 / (USD/BTC);  :::


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **asset_id_base** | **STRING_32**| Requested exchange rates base asset identifier (from the Metadata -&gt; Assets) | [default to null]
 **filter_asset_id** | **STRING_32**| Comma or semicolon delimited asset identifiers used to filter response (optional) | [optional] [default to null]
 **invert** | **BOOLEAN**| True will invert all the rates (optional, if true then rates will be calculated as &#x60;rate &#x3D; 1 / actual_rate&#x60; eg. &#x60;USD/BTC&#x60; as &#x60;BTC/USD&#x60;) | [optional] [default to false]
 **time** | **STRING_32**| Time for historical rates (optional) | [optional] [default to null]

### Return type

[**V1_EXCHANGE_RATES**](v1.ExchangeRates.md)

### Authorization

[APIKey](../README.md#APIKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_exchangerate_history_periods_get**
> v1_exchangerate_history_periods_get : detachable LIST [V1_TIMESERIES_PERIOD]


Timeseries periods

You can also obtain historical exchange rates of any asset pair, grouped into time periods.  Get full list of supported time periods available for requesting exchange rates historical timeseries data.                ## Timeseries periods  Time unit | Period identifiers  --- | ---  Second | 1SEC, 2SEC, 3SEC, 4SEC, 5SEC, 6SEC, 10SEC, 15SEC, 20SEC, 30SEC  Minute | 1MIN, 2MIN, 3MIN, 4MIN, 5MIN, 6MIN, 10MIN, 15MIN, 20MIN, 30MIN  Hour | 1HRS, 2HRS, 3HRS, 4HRS, 6HRS, 8HRS, 12HRS  Day | 1DAY, 2DAY, 3DAY, 5DAY, 7DAY, 10DAY


### Parameters
This endpoint does not need any parameter.

### Return type

[**LIST [V1_TIMESERIES_PERIOD]**](v1.TimeseriesPeriod.md)

### Authorization

[APIKey](../README.md#APIKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

