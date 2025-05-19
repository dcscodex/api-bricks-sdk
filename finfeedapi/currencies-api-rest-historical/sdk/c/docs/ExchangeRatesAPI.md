# ExchangeRatesAPI

All URIs are relative to *https://api-historical.fx.finfeedapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ExchangeRatesAPI_getSpecificRate**](ExchangeRatesAPI.md#ExchangeRatesAPI_getSpecificRate) | **GET** /v1/exchangerate/{asset_id_base}/{asset_id_quote} | Get specific rate
[**ExchangeRatesAPI_v1ExchangerateAssetIdBaseAssetIdQuoteHistoryGet**](ExchangeRatesAPI.md#ExchangeRatesAPI_v1ExchangerateAssetIdBaseAssetIdQuoteHistoryGet) | **GET** /v1/exchangerate/{asset_id_base}/{asset_id_quote}/history | Timeseries data
[**ExchangeRatesAPI_v1ExchangerateAssetIdBaseGet**](ExchangeRatesAPI.md#ExchangeRatesAPI_v1ExchangerateAssetIdBaseGet) | **GET** /v1/exchangerate/{asset_id_base} | Get all current rates
[**ExchangeRatesAPI_v1ExchangerateHistoryPeriodsGet**](ExchangeRatesAPI.md#ExchangeRatesAPI_v1ExchangerateHistoryPeriodsGet) | **GET** /v1/exchangerate/history/periods | Timeseries periods


# **ExchangeRatesAPI_getSpecificRate**
```c
// Get specific rate
//
// Retrieves the exchange rate for a specific base and quote asset at a given time or the current rate.                :::info  If you are using an exchange rate for mission-critical operations, then for best reliability, you should measure the difference between current time and the time returned from the response to ensure that value of the difference between those meets your internal requirements.  :::
//
v1_exchange_rate_t* ExchangeRatesAPI_getSpecificRate(apiClient_t *apiClient, char *asset_id_base, char *asset_id_quote, char *time);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**asset_id_base** | **char \*** | Requested exchange rate base asset identifier (from the Metadata -&gt; Assets) | 
**asset_id_quote** | **char \*** | Requested exchange rate quote asset identifier (from the Metadata -&gt; Assets) | 
**time** | **char \*** | Time at which exchange rate is calculated (optional, if not supplied then current rate is returned) | [optional] 

### Return type

[v1_exchange_rate_t](v1_exchange_rate.md) *


### Authorization

[APIKey](../README.md#APIKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ExchangeRatesAPI_v1ExchangerateAssetIdBaseAssetIdQuoteHistoryGet**
```c
// Timeseries data
//
// Get the historical exchange rates between two assets in the form of the timeseries.
//
list_t* ExchangeRatesAPI_v1ExchangerateAssetIdBaseAssetIdQuoteHistoryGet(apiClient_t *apiClient, char *asset_id_base, char *asset_id_quote, char *period_id, char *time_start, char *time_end, int *limit);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**asset_id_base** | **char \*** | Requested exchange rates base asset identifier (from the Metadata -&gt; Assets) | 
**asset_id_quote** | **char \*** | Requested exchange rates base asset identifier (from the Metadata -&gt; Assets) | 
**period_id** | **char \*** | Identifier of requested timeseries period (required, e.g. &#x60;5SEC&#x60; or &#x60;1HRS&#x60;) | [optional] 
**time_start** | **char \*** | Timeseries starting time in ISO 8601 (required) | [optional] 
**time_end** | **char \*** | Timeseries ending time in ISO 8601 (required) | [optional] 
**limit** | **int \*** | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]

### Return type

[list_t](v1_exchange_rates_timeseries_item.md) *


### Authorization

[APIKey](../README.md#APIKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ExchangeRatesAPI_v1ExchangerateAssetIdBaseGet**
```c
// Get all current rates
//
// Get the current exchange rate between requested asset and all other assets.                :::info  If you are using an exchange rate for mission-critical operations, then for best reliability, you should measure the difference between current time and the time returned from the response to ensure that value of the difference between those meets your internal requirements.  :::                :::info  You can invert the rates by using Y = 1 / X equation, for example BTC/USD = 1 / (USD/BTC);  :::
//
v1_exchange_rates_t* ExchangeRatesAPI_v1ExchangerateAssetIdBaseGet(apiClient_t *apiClient, char *asset_id_base, char *filter_asset_id, int *invert, char *time);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**asset_id_base** | **char \*** | Requested exchange rates base asset identifier (from the Metadata -&gt; Assets) | 
**filter_asset_id** | **char \*** | Comma or semicolon delimited asset identifiers used to filter response (optional) | [optional] 
**invert** | **int \*** | True will invert all the rates (optional, if true then rates will be calculated as &#x60;rate &#x3D; 1 / actual_rate&#x60; eg. &#x60;USD/BTC&#x60; as &#x60;BTC/USD&#x60;) | [optional] [default to false]
**time** | **char \*** | Time for historical rates (optional) | [optional] 

### Return type

[v1_exchange_rates_t](v1_exchange_rates.md) *


### Authorization

[APIKey](../README.md#APIKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ExchangeRatesAPI_v1ExchangerateHistoryPeriodsGet**
```c
// Timeseries periods
//
// You can also obtain historical exchange rates of any asset pair, grouped into time periods.  Get full list of supported time periods available for requesting exchange rates historical timeseries data.                ## Timeseries periods  Time unit | Period identifiers  --- | ---  Second | 1SEC, 2SEC, 3SEC, 4SEC, 5SEC, 6SEC, 10SEC, 15SEC, 20SEC, 30SEC  Minute | 1MIN, 2MIN, 3MIN, 4MIN, 5MIN, 6MIN, 10MIN, 15MIN, 20MIN, 30MIN  Hour | 1HRS, 2HRS, 3HRS, 4HRS, 6HRS, 8HRS, 12HRS  Day | 1DAY, 2DAY, 3DAY, 5DAY, 7DAY, 10DAY
//
list_t* ExchangeRatesAPI_v1ExchangerateHistoryPeriodsGet(apiClient_t *apiClient);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |

### Return type

[list_t](v1_timeseries_period.md) *


### Authorization

[APIKey](../README.md#APIKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

