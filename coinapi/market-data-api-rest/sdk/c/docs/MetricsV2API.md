# MetricsV2API

All URIs are relative to *https://rest.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**MetricsV2API_v2MetricsAssetHistoryGet**](MetricsV2API.md#MetricsV2API_v2MetricsAssetHistoryGet) | **GET** /v2/metrics/asset/history | Historical metrics for the asset
[**MetricsV2API_v2MetricsAssetListingGet**](MetricsV2API.md#MetricsV2API_v2MetricsAssetListingGet) | **GET** /v2/metrics/asset/listing | Listing of metrics available for specific asset
[**MetricsV2API_v2MetricsChainHistoryGet**](MetricsV2API.md#MetricsV2API_v2MetricsChainHistoryGet) | **GET** /v2/metrics/chain/history | Historical metrics for the chain
[**MetricsV2API_v2MetricsChainListingGet**](MetricsV2API.md#MetricsV2API_v2MetricsChainListingGet) | **GET** /v2/metrics/chain/listing | Listing of metrics available for specific chain
[**MetricsV2API_v2MetricsExchangeHistoryGet**](MetricsV2API.md#MetricsV2API_v2MetricsExchangeHistoryGet) | **GET** /v2/metrics/exchange/history | Historical metrics for the exchange
[**MetricsV2API_v2MetricsExchangeListingGet**](MetricsV2API.md#MetricsV2API_v2MetricsExchangeListingGet) | **GET** /v2/metrics/exchange/listing | Listing of metrics available for specific exchange
[**MetricsV2API_v2MetricsListingGet**](MetricsV2API.md#MetricsV2API_v2MetricsListingGet) | **GET** /v2/metrics/listing | Listing of all supported metrics


# **MetricsV2API_v2MetricsAssetHistoryGet**
```c
// Historical metrics for the asset
//
// Get asset metrics history.
//
list_t* MetricsV2API_v2MetricsAssetHistoryGet(apiClient_t *apiClient, char *metric_id, char *asset_id, char time_start, char time_end, char *time_format, char *period_id, int *limit);
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

# **MetricsV2API_v2MetricsAssetListingGet**
```c
// Listing of metrics available for specific asset
//
// Get all metrics that are actually available for the specified asset.
//
list_t* MetricsV2API_v2MetricsAssetListingGet(apiClient_t *apiClient, char *asset_id);
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

# **MetricsV2API_v2MetricsChainHistoryGet**
```c
// Historical metrics for the chain
//
// Get chain metrics history.
//
list_t* MetricsV2API_v2MetricsChainHistoryGet(apiClient_t *apiClient, char *metric_id, char *chain_id, char time_start, char time_end, char *time_format, char *period_id, int *limit);
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

# **MetricsV2API_v2MetricsChainListingGet**
```c
// Listing of metrics available for specific chain
//
// Get all metrics that are actually available for the specified blockchain chain.
//
list_t* MetricsV2API_v2MetricsChainListingGet(apiClient_t *apiClient, char *chain_id);
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

# **MetricsV2API_v2MetricsExchangeHistoryGet**
```c
// Historical metrics for the exchange
//
// Get exchange metrics history.
//
list_t* MetricsV2API_v2MetricsExchangeHistoryGet(apiClient_t *apiClient, char *metric_id, char *exchange_id, char time_start, char time_end, char *time_format, char *period_id, int *limit);
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

# **MetricsV2API_v2MetricsExchangeListingGet**
```c
// Listing of metrics available for specific exchange
//
// Get all metrics that are actually available for the specified exchange.
//
list_t* MetricsV2API_v2MetricsExchangeListingGet(apiClient_t *apiClient, char *exchange_id);
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

# **MetricsV2API_v2MetricsListingGet**
```c
// Listing of all supported metrics
//
// Get all metrics available in the system.
//
list_t* MetricsV2API_v2MetricsListingGet(apiClient_t *apiClient);
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

