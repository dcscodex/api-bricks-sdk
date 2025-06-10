# EXTERNALMETRICS_API

All URIs are relative to *https://rest.coinapi.io*

Feature | HTTP request | Description
------------- | ------------- | -------------
[**v1_externalmetrics_asset_history_get**](EXTERNALMETRICS_API.md#v1_externalmetrics_asset_history_get) | **Get** /v1/externalmetrics/asset/history | Historical metrics for the asset from external sources
[**v1_externalmetrics_asset_listing_get**](EXTERNALMETRICS_API.md#v1_externalmetrics_asset_listing_get) | **Get** /v1/externalmetrics/asset/listing | Listing of metrics available for specific asset
[**v1_externalmetrics_assets_get**](EXTERNALMETRICS_API.md#v1_externalmetrics_assets_get) | **Get** /v1/externalmetrics/assets | Listing of all supported external assets
[**v1_externalmetrics_chain_history_get**](EXTERNALMETRICS_API.md#v1_externalmetrics_chain_history_get) | **Get** /v1/externalmetrics/chain/history | Historical metrics for the chain from external sources
[**v1_externalmetrics_chain_listing_get**](EXTERNALMETRICS_API.md#v1_externalmetrics_chain_listing_get) | **Get** /v1/externalmetrics/chain/listing | Listing of metrics available for specific chain
[**v1_externalmetrics_chains_get**](EXTERNALMETRICS_API.md#v1_externalmetrics_chains_get) | **Get** /v1/externalmetrics/chains | Listing of all supported external chains
[**v1_externalmetrics_exchange_history_get**](EXTERNALMETRICS_API.md#v1_externalmetrics_exchange_history_get) | **Get** /v1/externalmetrics/exchange/history | Historical metrics for the exchange from both external and internal sources
[**v1_externalmetrics_exchange_listing_get**](EXTERNALMETRICS_API.md#v1_externalmetrics_exchange_listing_get) | **Get** /v1/externalmetrics/exchange/listing | Listing of metrics available for specific exchange (both external and generic)
[**v1_externalmetrics_exchanges_get**](EXTERNALMETRICS_API.md#v1_externalmetrics_exchanges_get) | **Get** /v1/externalmetrics/exchanges | Listing of all supported external exchanges
[**v1_externalmetrics_listing_get**](EXTERNALMETRICS_API.md#v1_externalmetrics_listing_get) | **Get** /v1/externalmetrics/listing | Listing of all supported metrics (both external and generic)


# **v1_externalmetrics_asset_history_get**
> v1_externalmetrics_asset_history_get (metric_id: STRING_32 ; asset_id: STRING_32 ; time_start:  detachable DATE_TIME ; time_end:  detachable DATE_TIME ; time_format:  detachable STRING_32 ; period_id:  detachable STRING_32 ; limit:  detachable INTEGER_32 ): detachable LIST [ANY]


Historical metrics for the asset from external sources

Get asset metrics history from external data providers. Data is typically aggregated daily.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **metric_id** | **STRING_32**| Metric identifier (e.g., &#x60;TVL&#x60;, &#x60;STABLES_BRIDGED_USD&#x60; - internal metric key) | [default to null]
 **asset_id** | **STRING_32**| Asset identifier (e.g., &#x60;USDC&#x60;, &#x60;USDT&#x60; - from supported assets list) | [default to null]
 **time_start** | **DATE_TIME**| Starting time in ISO 8601 | [optional] [default to null]
 **time_end** | **DATE_TIME**| Ending time in ISO 8601 | [optional] [default to null]
 **time_format** | **STRING_32**| If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec) | [optional] [default to null]
 **period_id** | **STRING_32**| Identifier of requested timeseries period (e.g. &#x60;1MIN&#x60; or &#x60;2MTH&#x60;), default value is &#x60;1MIN&#x60; | [optional] [default to null]
 **limit** | **INTEGER_32**| Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]

### Return type

[**LIST [ANY]**](ANY.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_externalmetrics_asset_listing_get**
> v1_externalmetrics_asset_listing_get (asset_id: STRING_32 ): detachable LIST [V1_METRIC_INFO]


Listing of metrics available for specific asset

Get all metrics that are actually available for the specified asset from external providers.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **asset_id** | **STRING_32**| Asset identifier (e.g., USDC, USDT) | [default to null]

### Return type

[**LIST [V1_METRIC_INFO]**](v1.MetricInfo.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_externalmetrics_assets_get**
> v1_externalmetrics_assets_get : detachable LIST [V1_EXTERNAL_ASSET]


Listing of all supported external assets

Get all assets (primarily stablecoins) supported by external data providers.


### Parameters
This endpoint does not need any parameter.

### Return type

[**LIST [V1_EXTERNAL_ASSET]**](v1.ExternalAsset.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_externalmetrics_chain_history_get**
> v1_externalmetrics_chain_history_get (metric_id: STRING_32 ; chain_id: STRING_32 ; time_start:  detachable DATE_TIME ; time_end:  detachable DATE_TIME ; time_format:  detachable STRING_32 ; period_id:  detachable STRING_32 ; limit:  detachable INTEGER_32 ): detachable LIST [ANY]


Historical metrics for the chain from external sources

Get chain metrics history from external data providers. Data is typically aggregated daily.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **metric_id** | **STRING_32**| Metric identifier (e.g., &#x60;TVL&#x60;, &#x60;STABLES_BRIDGED_USD&#x60; - internal metric key) | [default to null]
 **chain_id** | **STRING_32**| Chain identifier (e.g., &#x60;Ethereum&#x60;, &#x60;Arbitrum&#x60; - from supported chains list) | [default to null]
 **time_start** | **DATE_TIME**| Starting time in ISO 8601 | [optional] [default to null]
 **time_end** | **DATE_TIME**| Ending time in ISO 8601 | [optional] [default to null]
 **time_format** | **STRING_32**| If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec) | [optional] [default to null]
 **period_id** | **STRING_32**| Identifier of requested timeseries period (e.g. &#x60;1MIN&#x60; or &#x60;2MTH&#x60;), default value is &#x60;1MIN&#x60; | [optional] [default to null]
 **limit** | **INTEGER_32**| Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]

### Return type

[**LIST [ANY]**](ANY.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_externalmetrics_chain_listing_get**
> v1_externalmetrics_chain_listing_get (chain_id: STRING_32 ): detachable LIST [V1_METRIC_INFO]


Listing of metrics available for specific chain

Get all metrics that are actually available for the specified blockchain chain from external providers.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chain_id** | **STRING_32**| Chain identifier (e.g., ETHEREUM, ARBITRUM) | [default to null]

### Return type

[**LIST [V1_METRIC_INFO]**](v1.MetricInfo.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_externalmetrics_chains_get**
> v1_externalmetrics_chains_get : detachable LIST [V1_CHAIN]


Listing of all supported external chains

Get all blockchain chains supported by external data providers.


### Parameters
This endpoint does not need any parameter.

### Return type

[**LIST [V1_CHAIN]**](v1.Chain.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_externalmetrics_exchange_history_get**
> v1_externalmetrics_exchange_history_get (metric_id: STRING_32 ; exchange_id: STRING_32 ; time_start:  detachable DATE_TIME ; time_end:  detachable DATE_TIME ; time_format:  detachable STRING_32 ; period_id:  detachable STRING_32 ; limit:  detachable INTEGER_32 ): detachable LIST [ANY]


Historical metrics for the exchange from both external and internal sources

Get exchange metrics history from external data providers or internal sources based on metric type.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **metric_id** | **STRING_32**| Metric identifier (e.g., &#x60;TVL&#x60;, &#x60;STABLES_BRIDGED_USD&#x60; for external, or generic metric IDs) | [default to null]
 **exchange_id** | **STRING_32**| Exchange identifier (e.g., &#x60;BINANCE&#x60;, &#x60;UNISWAP-V3-ETHEREUM&#x60;) | [default to null]
 **time_start** | **DATE_TIME**| Starting time in ISO 8601 | [optional] [default to null]
 **time_end** | **DATE_TIME**| Ending time in ISO 8601 | [optional] [default to null]
 **time_format** | **STRING_32**| If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec) | [optional] [default to null]
 **period_id** | **STRING_32**| Identifier of requested timeseries period (e.g. &#x60;1MIN&#x60; or &#x60;2MTH&#x60;), default value is &#x60;1MIN&#x60; | [optional] [default to null]
 **limit** | **INTEGER_32**| Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]

### Return type

[**LIST [ANY]**](ANY.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_externalmetrics_exchange_listing_get**
> v1_externalmetrics_exchange_listing_get (exchange_id: STRING_32 ): detachable LIST [V1_METRIC_INFO]


Listing of metrics available for specific exchange (both external and generic)

Get all metrics that are actually available for the specified exchange from both external providers and internal sources.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchange_id** | **STRING_32**| Exchange identifier (e.g., BINANCE, UNISWAP-V3-ETHEREUM) | [default to null]

### Return type

[**LIST [V1_METRIC_INFO]**](v1.MetricInfo.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_externalmetrics_exchanges_get**
> v1_externalmetrics_exchanges_get : detachable LIST [V1_EXTERNAL_EXCHANGE]


Listing of all supported external exchanges

Get all exchanges that have mapping to external data providers for metrics that actually have sources.  Only returns exchanges that are properly mapped to external protocols for metrics with defined sources.


### Parameters
This endpoint does not need any parameter.

### Return type

[**LIST [V1_EXTERNAL_EXCHANGE]**](v1.ExternalExchange.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_externalmetrics_listing_get**
> v1_externalmetrics_listing_get : detachable LIST [V1_METRIC_INFO]


Listing of all supported metrics (both external and generic)

Get all metrics available from external data providers and internal generic metrics.  External metrics have detailed descriptions, while generic metrics are marked as such.


### Parameters
This endpoint does not need any parameter.

### Return type

[**LIST [V1_METRIC_INFO]**](v1.MetricInfo.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

