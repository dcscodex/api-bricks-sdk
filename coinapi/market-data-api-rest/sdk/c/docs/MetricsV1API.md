# MetricsV1API

All URIs are relative to *https://rest.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**MetricsV1API_v1MetricsAssetCurrentGet**](MetricsV1API.md#MetricsV1API_v1MetricsAssetCurrentGet) | **GET** /v1/metrics/asset/current | Current metrics for given asset
[**MetricsV1API_v1MetricsAssetHistoryGet**](MetricsV1API.md#MetricsV1API_v1MetricsAssetHistoryGet) | **GET** /v1/metrics/asset/history | Historical metrics for asset
[**MetricsV1API_v1MetricsAssetListingGet**](MetricsV1API.md#MetricsV1API_v1MetricsAssetListingGet) | **GET** /v1/metrics/asset/listing | Listing of all supported metrics for asset
[**MetricsV1API_v1MetricsExchangeCurrentGet**](MetricsV1API.md#MetricsV1API_v1MetricsExchangeCurrentGet) | **GET** /v1/metrics/exchange/current | Current metrics for given exchange
[**MetricsV1API_v1MetricsExchangeHistoryGet**](MetricsV1API.md#MetricsV1API_v1MetricsExchangeHistoryGet) | **GET** /v1/metrics/exchange/history | Historical metrics for the exchange
[**MetricsV1API_v1MetricsExchangeListingGet**](MetricsV1API.md#MetricsV1API_v1MetricsExchangeListingGet) | **GET** /v1/metrics/exchange/listing | Listing of all supported exchange metrics
[**MetricsV1API_v1MetricsListingGet**](MetricsV1API.md#MetricsV1API_v1MetricsListingGet) | **GET** /v1/metrics/listing | Listing of all supported metrics by CoinAPI
[**MetricsV1API_v1MetricsSymbolCurrentGet**](MetricsV1API.md#MetricsV1API_v1MetricsSymbolCurrentGet) | **GET** /v1/metrics/symbol/current | Current metrics for given symbol
[**MetricsV1API_v1MetricsSymbolHistoryGet**](MetricsV1API.md#MetricsV1API_v1MetricsSymbolHistoryGet) | **GET** /v1/metrics/symbol/history | Historical metrics for symbol
[**MetricsV1API_v1MetricsSymbolListingGet**](MetricsV1API.md#MetricsV1API_v1MetricsSymbolListingGet) | **GET** /v1/metrics/symbol/listing | Listing of all supported metrics for symbol


# **MetricsV1API_v1MetricsAssetCurrentGet**
```c
// Current metrics for given asset
//
// Get current asset metrics.
//
list_t* MetricsV1API_v1MetricsAssetCurrentGet(apiClient_t *apiClient, char *metric_id, char *asset_id, char *asset_id_external, char *exchange_id);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**metric_id** | **char \*** | Metric identifier (from the Metrics -&gt; Listing) | [optional] 
**asset_id** | **char \*** | Asset identifier (from the Metadata -&gt; Assets) | [optional] 
**asset_id_external** | **char \*** | Exchange asset identifier | [optional] 
**exchange_id** | **char \*** | Exchange identifier (from the Metadata -&gt; Exchanges) | [optional] 

### Return type

[list_t](v1_general_data.md) *


### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **MetricsV1API_v1MetricsAssetHistoryGet**
```c
// Historical metrics for asset
//
// Get asset metrics history.
//
list_t* MetricsV1API_v1MetricsAssetHistoryGet(apiClient_t *apiClient, char *metric_id, char *exchange_id, char *asset_id, char *asset_id_external, char time_start, char time_end, char *time_format, char *period_id, int *limit);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**metric_id** | **char \*** | Metric identifier (from the Metrics -&gt; Listing) | 
**exchange_id** | **char \*** | Exchange identifier (from the Metadata -&gt; Exchanges) | 
**asset_id** | **char \*** | Asset identifier (from the Metadata -&gt; Assets) | [optional] 
**asset_id_external** | **char \*** | Exchange asset identifier | [optional] 
**time_start** | **char** | Starting time in ISO 8601 | [optional] 
**time_end** | **char** | Ending time in ISO 8601 | [optional] 
**time_format** | **char \*** | If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec) | [optional] 
**period_id** | **char \*** | Identifier of requested timeseries period (e.g. &#x60;5SEC&#x60; or &#x60;2MTH&#x60;), default value is &#x60;1SEC&#x60; | [optional] 
**limit** | **int \*** | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]

### Return type

[list_t](v1_metric_data.md) *


### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **MetricsV1API_v1MetricsAssetListingGet**
```c
// Listing of all supported metrics for asset
//
// Get data metrics for asset.
//
list_t* MetricsV1API_v1MetricsAssetListingGet(apiClient_t *apiClient, char *metric_id, char *exchange_id, char *chain_id, char *network_id, char *asset_id, char *asset_id_external);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**metric_id** | **char \*** | Metric identifier (from the Metrics -&gt; Listing) | [optional] 
**exchange_id** | **char \*** | Exchange identifier (from the Metadata -&gt; Exchanges) | [optional] 
**chain_id** | **char \*** | Chain identifier | [optional] 
**network_id** | **char \*** | Network identifier | [optional] 
**asset_id** | **char \*** | Asset identifier (from the Metadata -&gt; Assets) | [optional] 
**asset_id_external** | **char \*** | The asset external identifier | [optional] 

### Return type

[list_t](v1_listing_item.md) *


### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **MetricsV1API_v1MetricsExchangeCurrentGet**
```c
// Current metrics for given exchange
//
// Get current exchange metrics values.
//
list_t* MetricsV1API_v1MetricsExchangeCurrentGet(apiClient_t *apiClient, char *exchange_id, char *metric_id);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**exchange_id** | **char \*** | The exchange identifier (from the Metadata -&gt; Exchanges) | 
**metric_id** | **char \*** | The metric identifier (from the Metrics -&gt; Listing) | [optional] 

### Return type

[list_t](v1_general_data.md) *


### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **MetricsV1API_v1MetricsExchangeHistoryGet**
```c
// Historical metrics for the exchange
//
// Get exchange metrics history.
//
list_t* MetricsV1API_v1MetricsExchangeHistoryGet(apiClient_t *apiClient, char *metric_id, char *exchange_id, char time_start, char time_end, char *time_format, char *period_id, int *limit);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**metric_id** | **char \*** | Metric identifier (from the Metrics -&gt; Listing) | 
**exchange_id** | **char \*** | Exchange identifier (from the Metadata -&gt; Exchanges) | 
**time_start** | **char** | Starting time in ISO 8601 | [optional] 
**time_end** | **char** | Ending time in ISO 8601 | [optional] 
**time_format** | **char \*** | If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec) | [optional] 
**period_id** | **char \*** | Identifier of requested timeseries period (e.g. &#x60;5SEC&#x60; or &#x60;2MTH&#x60;), default value is &#x60;1SEC&#x60; | [optional] 
**limit** | **int \*** | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]

### Return type

[list_t](v1_metric_data.md) *


### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **MetricsV1API_v1MetricsExchangeListingGet**
```c
// Listing of all supported exchange metrics
//
// Get data metrics for exchange.
//
list_t* MetricsV1API_v1MetricsExchangeListingGet(apiClient_t *apiClient, char *exchange_id, char *metric_id);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**exchange_id** | **char \*** | The exchange identifier (from the Metadata -&gt; Exchanges) | 
**metric_id** | **char \*** | The metric identifier (from the Metrics -&gt; Listing) | [optional] 

### Return type

[list_t](v1_listing_item.md) *


### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **MetricsV1API_v1MetricsListingGet**
```c
// Listing of all supported metrics by CoinAPI
//
// Get all data metrics.
//
list_t* MetricsV1API_v1MetricsListingGet(apiClient_t *apiClient);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |

### Return type

[list_t](v1_metric.md) *


### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **MetricsV1API_v1MetricsSymbolCurrentGet**
```c
// Current metrics for given symbol
//
// Get current symbol metrics.
//
list_t* MetricsV1API_v1MetricsSymbolCurrentGet(apiClient_t *apiClient, char *metric_id, char *symbol_id, char *exchange_id);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**metric_id** | **char \*** | Metric identifier (from the Metrics -&gt; Listing) | [optional] 
**symbol_id** | **char \*** | Symbol identifier (from the Metadata -&gt; Symbols) | [optional] 
**exchange_id** | **char \*** | Exchange id (from the Metadata -&gt; Exchanges) | [optional] 

### Return type

[list_t](v1_general_data.md) *


### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **MetricsV1API_v1MetricsSymbolHistoryGet**
```c
// Historical metrics for symbol
//
// Get symbol metrics history.
//
list_t* MetricsV1API_v1MetricsSymbolHistoryGet(apiClient_t *apiClient, char *metric_id, char *symbol_id, char time_start, char time_end, char *time_format, char *period_id, int *limit);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**metric_id** | **char \*** | Metric identifier (from the Metrics -&gt; Listing) | 
**symbol_id** | **char \*** | Symbol identifier (from the Metadata -&gt; Symbols) | 
**time_start** | **char** | Starting time in ISO 8601 | [optional] 
**time_end** | **char** | Ending time in ISO 8601 | [optional] 
**time_format** | **char \*** | If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec) | [optional] 
**period_id** | **char \*** | Identifier of requested timeseries period (e.g. &#x60;5SEC&#x60; or &#x60;2MTH&#x60;), default value is &#x60;1SEC&#x60; | [optional] 
**limit** | **int \*** | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]

### Return type

[list_t](v1_metric_data.md) *


### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **MetricsV1API_v1MetricsSymbolListingGet**
```c
// Listing of all supported metrics for symbol
//
// Get data metrics for symbol.
//
list_t* MetricsV1API_v1MetricsSymbolListingGet(apiClient_t *apiClient, char *metric_id, char *exchange_id, char *symbol_id);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**metric_id** | **char \*** | Metric identifier (from the Metrics -&gt; Listing) | [optional] 
**exchange_id** | **char \*** | Exchange identifier (from the Metadata -&gt; Exchanges) | [optional] 
**symbol_id** | **char \*** | Symbol identifier (from the Metadata -&gt; Symbols) | [optional] 

### Return type

[list_t](v1_listing_item.md) *


### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

