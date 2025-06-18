# METRICSV2_API

All URIs are relative to *https://rest.coinapi.io*

Feature | HTTP request | Description
------------- | ------------- | -------------
[**v2_metrics_asset_history_get**](METRICSV2_API.md#v2_metrics_asset_history_get) | **Get** /v2/metrics/asset/history | Historical metrics for the asset
[**v2_metrics_asset_listing_get**](METRICSV2_API.md#v2_metrics_asset_listing_get) | **Get** /v2/metrics/asset/listing | Listing of metrics available for specific asset
[**v2_metrics_chain_history_get**](METRICSV2_API.md#v2_metrics_chain_history_get) | **Get** /v2/metrics/chain/history | Historical metrics for the chain
[**v2_metrics_chain_listing_get**](METRICSV2_API.md#v2_metrics_chain_listing_get) | **Get** /v2/metrics/chain/listing | Listing of metrics available for specific chain
[**v2_metrics_exchange_history_get**](METRICSV2_API.md#v2_metrics_exchange_history_get) | **Get** /v2/metrics/exchange/history | Historical metrics for the exchange
[**v2_metrics_exchange_listing_get**](METRICSV2_API.md#v2_metrics_exchange_listing_get) | **Get** /v2/metrics/exchange/listing | Listing of metrics available for specific exchange
[**v2_metrics_listing_get**](METRICSV2_API.md#v2_metrics_listing_get) | **Get** /v2/metrics/listing | Listing of all supported metrics


# **v2_metrics_asset_history_get**
> v2_metrics_asset_history_get (metric_id: STRING_32 ; asset_id: STRING_32 ; time_start:  detachable DATE_TIME ; time_end:  detachable DATE_TIME ; time_format:  detachable STRING_32 ; period_id:  detachable STRING_32 ; limit:  detachable INTEGER_32 ): detachable LIST [ANY]


Historical metrics for the asset

Get asset metrics history.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **metric_id** | **STRING_32**| Metric identifier (e.g., &#x60;TVL&#x60;, &#x60;STABLES_BRIDGED_USD&#x60;) | [default to null]
 **asset_id** | **STRING_32**| Asset identifier (e.g., &#x60;USDC&#x60;, &#x60;USDT&#x60;) | [default to null]
 **time_start** | **DATE_TIME**| Starting time in ISO 8601 | [optional] [default to null]
 **time_end** | **DATE_TIME**| Ending time in ISO 8601 | [optional] [default to null]
 **time_format** | **STRING_32**| If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec) | [optional] [default to null]
 **period_id** | **STRING_32**| Identifier of requested timeseries period (e.g. &#x60;1MIN&#x60; or &#x60;2MTH&#x60;), default value is &#x60;1MIN&#x60; | [optional] [default to null]
 **limit** | **INTEGER_32**| Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]

### Return type

[**LIST [ANY]**](ANY.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v2_metrics_asset_listing_get**
> v2_metrics_asset_listing_get (asset_id: STRING_32 ): detachable LIST [V1_METRIC_INFO]


Listing of metrics available for specific asset

Get all metrics that are actually available for the specified asset.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **asset_id** | **STRING_32**| Asset identifier (e.g., USDC, USDT) | [default to null]

### Return type

[**LIST [V1_METRIC_INFO]**](v1.MetricInfo.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v2_metrics_chain_history_get**
> v2_metrics_chain_history_get (metric_id: STRING_32 ; chain_id: STRING_32 ; time_start:  detachable DATE_TIME ; time_end:  detachable DATE_TIME ; time_format:  detachable STRING_32 ; period_id:  detachable STRING_32 ; limit:  detachable INTEGER_32 ): detachable LIST [ANY]


Historical metrics for the chain

Get chain metrics history.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **metric_id** | **STRING_32**| Metric identifier (e.g., &#x60;TVL&#x60;, &#x60;STABLES_BRIDGED_USD&#x60;) | [default to null]
 **chain_id** | **STRING_32**| Chain identifier (e.g., &#x60;Ethereum&#x60;, &#x60;Arbitrum&#x60;) | [default to null]
 **time_start** | **DATE_TIME**| Starting time in ISO 8601 | [optional] [default to null]
 **time_end** | **DATE_TIME**| Ending time in ISO 8601 | [optional] [default to null]
 **time_format** | **STRING_32**| If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec) | [optional] [default to null]
 **period_id** | **STRING_32**| Identifier of requested timeseries period (e.g. &#x60;1MIN&#x60; or &#x60;2MTH&#x60;), default value is &#x60;1MIN&#x60; | [optional] [default to null]
 **limit** | **INTEGER_32**| Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]

### Return type

[**LIST [ANY]**](ANY.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v2_metrics_chain_listing_get**
> v2_metrics_chain_listing_get (chain_id: STRING_32 ): detachable LIST [V1_METRIC_INFO]


Listing of metrics available for specific chain

Get all metrics that are actually available for the specified blockchain chain.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chain_id** | **STRING_32**| Chain identifier (e.g., ETHEREUM, ARBITRUM) | [default to null]

### Return type

[**LIST [V1_METRIC_INFO]**](v1.MetricInfo.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v2_metrics_exchange_history_get**
> v2_metrics_exchange_history_get (metric_id: STRING_32 ; exchange_id: STRING_32 ; time_start:  detachable DATE_TIME ; time_end:  detachable DATE_TIME ; time_format:  detachable STRING_32 ; period_id:  detachable STRING_32 ; limit:  detachable INTEGER_32 ): detachable LIST [ANY]


Historical metrics for the exchange

Get exchange metrics history.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **metric_id** | **STRING_32**| Metric identifier (e.g., &#x60;TVL&#x60;, &#x60;STABLES_BRIDGED_USD&#x60;) | [default to null]
 **exchange_id** | **STRING_32**| Exchange identifier (e.g., &#x60;BINANCE&#x60;, &#x60;UNISWAP-V3-ETHEREUM&#x60;) | [default to null]
 **time_start** | **DATE_TIME**| Starting time in ISO 8601 | [optional] [default to null]
 **time_end** | **DATE_TIME**| Ending time in ISO 8601 | [optional] [default to null]
 **time_format** | **STRING_32**| If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec) | [optional] [default to null]
 **period_id** | **STRING_32**| Identifier of requested timeseries period (e.g. &#x60;1MIN&#x60; or &#x60;2MTH&#x60;), default value is &#x60;1MIN&#x60; | [optional] [default to null]
 **limit** | **INTEGER_32**| Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]

### Return type

[**LIST [ANY]**](ANY.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v2_metrics_exchange_listing_get**
> v2_metrics_exchange_listing_get (exchange_id: STRING_32 ): detachable LIST [V1_METRIC_INFO]


Listing of metrics available for specific exchange

Get all metrics that are actually available for the specified exchange.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchange_id** | **STRING_32**| Exchange identifier (e.g., BINANCE, UNISWAP-V3-ETHEREUM) | [default to null]

### Return type

[**LIST [V1_METRIC_INFO]**](v1.MetricInfo.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v2_metrics_listing_get**
> v2_metrics_listing_get : detachable LIST [V1_METRIC_INFO]


Listing of all supported metrics

Get all metrics available in the system.


### Parameters
This endpoint does not need any parameter.

### Return type

[**LIST [V1_METRIC_INFO]**](v1.MetricInfo.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

