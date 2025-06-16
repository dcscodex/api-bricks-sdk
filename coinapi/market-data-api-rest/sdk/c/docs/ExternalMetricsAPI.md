# ExternalMetricsAPI

All URIs are relative to *https://rest.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ExternalMetricsAPI_v1ExternalmetricsAssetHistoryGet**](ExternalMetricsAPI.md#ExternalMetricsAPI_v1ExternalmetricsAssetHistoryGet) | **GET** /v1/externalmetrics/asset/history | Historical metrics for the asset
[**ExternalMetricsAPI_v1ExternalmetricsAssetListingGet**](ExternalMetricsAPI.md#ExternalMetricsAPI_v1ExternalmetricsAssetListingGet) | **GET** /v1/externalmetrics/asset/listing | Listing of metrics available for specific asset
[**ExternalMetricsAPI_v1ExternalmetricsChainHistoryGet**](ExternalMetricsAPI.md#ExternalMetricsAPI_v1ExternalmetricsChainHistoryGet) | **GET** /v1/externalmetrics/chain/history | Historical metrics for the chain
[**ExternalMetricsAPI_v1ExternalmetricsChainListingGet**](ExternalMetricsAPI.md#ExternalMetricsAPI_v1ExternalmetricsChainListingGet) | **GET** /v1/externalmetrics/chain/listing | Listing of metrics available for specific chain
[**ExternalMetricsAPI_v1ExternalmetricsExchangeHistoryGet**](ExternalMetricsAPI.md#ExternalMetricsAPI_v1ExternalmetricsExchangeHistoryGet) | **GET** /v1/externalmetrics/exchange/history | Historical metrics for the exchange
[**ExternalMetricsAPI_v1ExternalmetricsExchangeListingGet**](ExternalMetricsAPI.md#ExternalMetricsAPI_v1ExternalmetricsExchangeListingGet) | **GET** /v1/externalmetrics/exchange/listing | Listing of metrics available for specific exchange
[**ExternalMetricsAPI_v1ExternalmetricsListingGet**](ExternalMetricsAPI.md#ExternalMetricsAPI_v1ExternalmetricsListingGet) | **GET** /v1/externalmetrics/listing | Listing of all supported metrics


# **ExternalMetricsAPI_v1ExternalmetricsAssetHistoryGet**
```c
// Historical metrics for the asset
//
// Get asset metrics history.
//
list_t* ExternalMetricsAPI_v1ExternalmetricsAssetHistoryGet(apiClient_t *apiClient, char *metric_id, char *asset_id, char time_start, char time_end, char *time_format, char *period_id, int *limit);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**metric_id** | **char \*** | Metric identifier (e.g., &#x60;TVL&#x60;, &#x60;STABLES_BRIDGED_USD&#x60;) | 
**asset_id** | **char \*** | Asset identifier (e.g., &#x60;USDC&#x60;, &#x60;USDT&#x60;) | 
**time_start** | **char** | Starting time in ISO 8601 | [optional] 
**time_end** | **char** | Ending time in ISO 8601 | [optional] 
**time_format** | **char \*** | If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec) | [optional] 
**period_id** | **char \*** | Identifier of requested timeseries period (e.g. &#x60;1MIN&#x60; or &#x60;2MTH&#x60;), default value is &#x60;1MIN&#x60; | [optional] 
**limit** | **int \*** | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]

### Return type

[list_t](object.md) *


### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ExternalMetricsAPI_v1ExternalmetricsAssetListingGet**
```c
// Listing of metrics available for specific asset
//
// Get all metrics that are actually available for the specified asset.
//
list_t* ExternalMetricsAPI_v1ExternalmetricsAssetListingGet(apiClient_t *apiClient, char *asset_id);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**asset_id** | **char \*** | Asset identifier (e.g., USDC, USDT) | 

### Return type

[list_t](v1_metric_info.md) *


### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ExternalMetricsAPI_v1ExternalmetricsChainHistoryGet**
```c
// Historical metrics for the chain
//
// Get chain metrics history.
//
list_t* ExternalMetricsAPI_v1ExternalmetricsChainHistoryGet(apiClient_t *apiClient, char *metric_id, char *chain_id, char time_start, char time_end, char *time_format, char *period_id, int *limit);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**metric_id** | **char \*** | Metric identifier (e.g., &#x60;TVL&#x60;, &#x60;STABLES_BRIDGED_USD&#x60;) | 
**chain_id** | **char \*** | Chain identifier (e.g., &#x60;Ethereum&#x60;, &#x60;Arbitrum&#x60;) | 
**time_start** | **char** | Starting time in ISO 8601 | [optional] 
**time_end** | **char** | Ending time in ISO 8601 | [optional] 
**time_format** | **char \*** | If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec) | [optional] 
**period_id** | **char \*** | Identifier of requested timeseries period (e.g. &#x60;1MIN&#x60; or &#x60;2MTH&#x60;), default value is &#x60;1MIN&#x60; | [optional] 
**limit** | **int \*** | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]

### Return type

[list_t](object.md) *


### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ExternalMetricsAPI_v1ExternalmetricsChainListingGet**
```c
// Listing of metrics available for specific chain
//
// Get all metrics that are actually available for the specified blockchain chain.
//
list_t* ExternalMetricsAPI_v1ExternalmetricsChainListingGet(apiClient_t *apiClient, char *chain_id);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**chain_id** | **char \*** | Chain identifier (e.g., ETHEREUM, ARBITRUM) | 

### Return type

[list_t](v1_metric_info.md) *


### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ExternalMetricsAPI_v1ExternalmetricsExchangeHistoryGet**
```c
// Historical metrics for the exchange
//
// Get exchange metrics history.
//
list_t* ExternalMetricsAPI_v1ExternalmetricsExchangeHistoryGet(apiClient_t *apiClient, char *metric_id, char *exchange_id, char time_start, char time_end, char *time_format, char *period_id, int *limit);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**metric_id** | **char \*** | Metric identifier (e.g., &#x60;TVL&#x60;, &#x60;STABLES_BRIDGED_USD&#x60;) | 
**exchange_id** | **char \*** | Exchange identifier (e.g., &#x60;BINANCE&#x60;, &#x60;UNISWAP-V3-ETHEREUM&#x60;) | 
**time_start** | **char** | Starting time in ISO 8601 | [optional] 
**time_end** | **char** | Ending time in ISO 8601 | [optional] 
**time_format** | **char \*** | If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec) | [optional] 
**period_id** | **char \*** | Identifier of requested timeseries period (e.g. &#x60;1MIN&#x60; or &#x60;2MTH&#x60;), default value is &#x60;1MIN&#x60; | [optional] 
**limit** | **int \*** | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]

### Return type

[list_t](object.md) *


### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ExternalMetricsAPI_v1ExternalmetricsExchangeListingGet**
```c
// Listing of metrics available for specific exchange
//
// Get all metrics that are actually available for the specified exchange.
//
list_t* ExternalMetricsAPI_v1ExternalmetricsExchangeListingGet(apiClient_t *apiClient, char *exchange_id);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**exchange_id** | **char \*** | Exchange identifier (e.g., BINANCE, UNISWAP-V3-ETHEREUM) | 

### Return type

[list_t](v1_metric_info.md) *


### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ExternalMetricsAPI_v1ExternalmetricsListingGet**
```c
// Listing of all supported metrics
//
// Get all metrics available in the system.
//
list_t* ExternalMetricsAPI_v1ExternalmetricsListingGet(apiClient_t *apiClient);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |

### Return type

[list_t](v1_metric_info.md) *


### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

