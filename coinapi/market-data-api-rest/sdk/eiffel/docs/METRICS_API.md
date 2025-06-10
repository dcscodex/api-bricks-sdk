# METRICS_API

All URIs are relative to *https://rest.coinapi.io*

Feature | HTTP request | Description
------------- | ------------- | -------------
[**v1_metrics_asset_current_get**](METRICS_API.md#v1_metrics_asset_current_get) | **Get** /v1/metrics/asset/current | Current metrics for given asset
[**v1_metrics_asset_history_get**](METRICS_API.md#v1_metrics_asset_history_get) | **Get** /v1/metrics/asset/history | Historical metrics for asset
[**v1_metrics_asset_listing_get**](METRICS_API.md#v1_metrics_asset_listing_get) | **Get** /v1/metrics/asset/listing | Listing of all supported metrics for asset
[**v1_metrics_exchange_current_get**](METRICS_API.md#v1_metrics_exchange_current_get) | **Get** /v1/metrics/exchange/current | Current metrics for given exchange
[**v1_metrics_exchange_history_get**](METRICS_API.md#v1_metrics_exchange_history_get) | **Get** /v1/metrics/exchange/history | Historical metrics for the exchange
[**v1_metrics_exchange_listing_get**](METRICS_API.md#v1_metrics_exchange_listing_get) | **Get** /v1/metrics/exchange/listing | Listing of all supported exchange metrics
[**v1_metrics_listing_get**](METRICS_API.md#v1_metrics_listing_get) | **Get** /v1/metrics/listing | Listing of all supported metrics by CoinAPI
[**v1_metrics_symbol_current_get**](METRICS_API.md#v1_metrics_symbol_current_get) | **Get** /v1/metrics/symbol/current | Current metrics for given symbol
[**v1_metrics_symbol_history_get**](METRICS_API.md#v1_metrics_symbol_history_get) | **Get** /v1/metrics/symbol/history | Historical metrics for symbol
[**v1_metrics_symbol_listing_get**](METRICS_API.md#v1_metrics_symbol_listing_get) | **Get** /v1/metrics/symbol/listing | Listing of all supported metrics for symbol


# **v1_metrics_asset_current_get**
> v1_metrics_asset_current_get (metric_id:  detachable STRING_32 ; asset_id:  detachable STRING_32 ; asset_id_external:  detachable STRING_32 ; exchange_id:  detachable STRING_32 ): detachable LIST [V1_GENERAL_DATA]


Current metrics for given asset

Get current asset metrics.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **metric_id** | **STRING_32**| Metric identifier (from the Metrics -&gt; Listing) | [optional] [default to null]
 **asset_id** | **STRING_32**| Asset identifier (from the Metadata -&gt; Assets) | [optional] [default to null]
 **asset_id_external** | **STRING_32**| Exchange asset identifier | [optional] [default to null]
 **exchange_id** | **STRING_32**| Exchange identifier (from the Metadata -&gt; Exchanges) | [optional] [default to null]

### Return type

[**LIST [V1_GENERAL_DATA]**](v1.GeneralData.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_metrics_asset_history_get**
> v1_metrics_asset_history_get (metric_id: STRING_32 ; exchange_id: STRING_32 ; asset_id:  detachable STRING_32 ; asset_id_external:  detachable STRING_32 ; time_start:  detachable DATE_TIME ; time_end:  detachable DATE_TIME ; time_format:  detachable STRING_32 ; period_id:  detachable STRING_32 ; limit:  detachable INTEGER_32 ): detachable LIST [V1_METRIC_DATA]


Historical metrics for asset

Get asset metrics history.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **metric_id** | **STRING_32**| Metric identifier (from the Metrics -&gt; Listing) | [default to null]
 **exchange_id** | **STRING_32**| Exchange identifier (from the Metadata -&gt; Exchanges) | [default to null]
 **asset_id** | **STRING_32**| Asset identifier (from the Metadata -&gt; Assets) | [optional] [default to null]
 **asset_id_external** | **STRING_32**| Exchange asset identifier | [optional] [default to null]
 **time_start** | **DATE_TIME**| Starting time in ISO 8601 | [optional] [default to null]
 **time_end** | **DATE_TIME**| Ending time in ISO 8601 | [optional] [default to null]
 **time_format** | **STRING_32**| If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec) | [optional] [default to null]
 **period_id** | **STRING_32**| Identifier of requested timeseries period (e.g. &#x60;5SEC&#x60; or &#x60;2MTH&#x60;), default value is &#x60;1SEC&#x60; | [optional] [default to null]
 **limit** | **INTEGER_32**| Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]

### Return type

[**LIST [V1_METRIC_DATA]**](v1.MetricData.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_metrics_asset_listing_get**
> v1_metrics_asset_listing_get (metric_id:  detachable STRING_32 ; exchange_id:  detachable STRING_32 ; chain_id:  detachable STRING_32 ; network_id:  detachable STRING_32 ; asset_id:  detachable STRING_32 ; asset_id_external:  detachable STRING_32 ): detachable LIST [V1_LISTING_ITEM]


Listing of all supported metrics for asset

Get data metrics for asset.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **metric_id** | **STRING_32**| Metric identifier (from the Metrics -&gt; Listing) | [optional] [default to null]
 **exchange_id** | **STRING_32**| Exchange identifier (from the Metadata -&gt; Exchanges) | [optional] [default to null]
 **chain_id** | **STRING_32**| Chain identifier | [optional] [default to null]
 **network_id** | **STRING_32**| Network identifier | [optional] [default to null]
 **asset_id** | **STRING_32**| Asset identifier (from the Metadata -&gt; Assets) | [optional] [default to null]
 **asset_id_external** | **STRING_32**| The asset external identifier | [optional] [default to null]

### Return type

[**LIST [V1_LISTING_ITEM]**](v1.ListingItem.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_metrics_exchange_current_get**
> v1_metrics_exchange_current_get (exchange_id: STRING_32 ; metric_id:  detachable STRING_32 ): detachable LIST [V1_GENERAL_DATA]


Current metrics for given exchange

Get current exchange metrics values.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchange_id** | **STRING_32**| The exchange identifier (from the Metadata -&gt; Exchanges) | [default to null]
 **metric_id** | **STRING_32**| The metric identifier (from the Metrics -&gt; Listing) | [optional] [default to null]

### Return type

[**LIST [V1_GENERAL_DATA]**](v1.GeneralData.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_metrics_exchange_history_get**
> v1_metrics_exchange_history_get (metric_id: STRING_32 ; exchange_id: STRING_32 ; time_start:  detachable DATE_TIME ; time_end:  detachable DATE_TIME ; time_format:  detachable STRING_32 ; period_id:  detachable STRING_32 ; limit:  detachable INTEGER_32 ): detachable LIST [V1_METRIC_DATA]


Historical metrics for the exchange

Get exchange metrics history.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **metric_id** | **STRING_32**| Metric identifier (from the Metrics -&gt; Listing) | [default to null]
 **exchange_id** | **STRING_32**| Exchange identifier (from the Metadata -&gt; Exchanges) | [default to null]
 **time_start** | **DATE_TIME**| Starting time in ISO 8601 | [optional] [default to null]
 **time_end** | **DATE_TIME**| Ending time in ISO 8601 | [optional] [default to null]
 **time_format** | **STRING_32**| If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec) | [optional] [default to null]
 **period_id** | **STRING_32**| Identifier of requested timeseries period (e.g. &#x60;5SEC&#x60; or &#x60;2MTH&#x60;), default value is &#x60;1SEC&#x60; | [optional] [default to null]
 **limit** | **INTEGER_32**| Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]

### Return type

[**LIST [V1_METRIC_DATA]**](v1.MetricData.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_metrics_exchange_listing_get**
> v1_metrics_exchange_listing_get (exchange_id: STRING_32 ; metric_id:  detachable STRING_32 ): detachable LIST [V1_LISTING_ITEM]


Listing of all supported exchange metrics

Get data metrics for exchange.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchange_id** | **STRING_32**| The exchange identifier (from the Metadata -&gt; Exchanges) | [default to null]
 **metric_id** | **STRING_32**| The metric identifier (from the Metrics -&gt; Listing) | [optional] [default to null]

### Return type

[**LIST [V1_LISTING_ITEM]**](v1.ListingItem.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_metrics_listing_get**
> v1_metrics_listing_get : detachable LIST [V1_METRIC]


Listing of all supported metrics by CoinAPI

Get all data metrics.


### Parameters
This endpoint does not need any parameter.

### Return type

[**LIST [V1_METRIC]**](v1.Metric.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_metrics_symbol_current_get**
> v1_metrics_symbol_current_get (metric_id:  detachable STRING_32 ; symbol_id:  detachable STRING_32 ; exchange_id:  detachable STRING_32 ): detachable LIST [V1_GENERAL_DATA]


Current metrics for given symbol

Get current symbol metrics.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **metric_id** | **STRING_32**| Metric identifier (from the Metrics -&gt; Listing) | [optional] [default to null]
 **symbol_id** | **STRING_32**| Symbol identifier (from the Metadata -&gt; Symbols) | [optional] [default to null]
 **exchange_id** | **STRING_32**| Exchange id (from the Metadata -&gt; Exchanges) | [optional] [default to null]

### Return type

[**LIST [V1_GENERAL_DATA]**](v1.GeneralData.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_metrics_symbol_history_get**
> v1_metrics_symbol_history_get (metric_id: STRING_32 ; symbol_id: STRING_32 ; time_start:  detachable DATE_TIME ; time_end:  detachable DATE_TIME ; time_format:  detachable STRING_32 ; period_id:  detachable STRING_32 ; limit:  detachable INTEGER_32 ): detachable LIST [V1_METRIC_DATA]


Historical metrics for symbol

Get symbol metrics history.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **metric_id** | **STRING_32**| Metric identifier (from the Metrics -&gt; Listing) | [default to null]
 **symbol_id** | **STRING_32**| Symbol identifier (from the Metadata -&gt; Symbols) | [default to null]
 **time_start** | **DATE_TIME**| Starting time in ISO 8601 | [optional] [default to null]
 **time_end** | **DATE_TIME**| Ending time in ISO 8601 | [optional] [default to null]
 **time_format** | **STRING_32**| If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec) | [optional] [default to null]
 **period_id** | **STRING_32**| Identifier of requested timeseries period (e.g. &#x60;5SEC&#x60; or &#x60;2MTH&#x60;), default value is &#x60;1SEC&#x60; | [optional] [default to null]
 **limit** | **INTEGER_32**| Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]

### Return type

[**LIST [V1_METRIC_DATA]**](v1.MetricData.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_metrics_symbol_listing_get**
> v1_metrics_symbol_listing_get (metric_id:  detachable STRING_32 ; exchange_id:  detachable STRING_32 ; symbol_id:  detachable STRING_32 ): detachable LIST [V1_LISTING_ITEM]


Listing of all supported metrics for symbol

Get data metrics for symbol.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **metric_id** | **STRING_32**| Metric identifier (from the Metrics -&gt; Listing) | [optional] [default to null]
 **exchange_id** | **STRING_32**| Exchange identifier (from the Metadata -&gt; Exchanges) | [optional] [default to null]
 **symbol_id** | **STRING_32**| Symbol identifier (from the Metadata -&gt; Symbols) | [optional] [default to null]

### Return type

[**LIST [V1_LISTING_ITEM]**](v1.ListingItem.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

