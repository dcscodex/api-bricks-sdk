# ExternalMetricsApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1ExternalmetricsAssetHistoryGet**](ExternalMetricsApi.md#v1ExternalmetricsAssetHistoryGet) | **GET** /v1/externalmetrics/asset/history | Historical metrics for the asset
[**v1ExternalmetricsAssetListingGet**](ExternalMetricsApi.md#v1ExternalmetricsAssetListingGet) | **GET** /v1/externalmetrics/asset/listing | Listing of metrics available for specific asset
[**v1ExternalmetricsChainHistoryGet**](ExternalMetricsApi.md#v1ExternalmetricsChainHistoryGet) | **GET** /v1/externalmetrics/chain/history | Historical metrics for the chain
[**v1ExternalmetricsChainListingGet**](ExternalMetricsApi.md#v1ExternalmetricsChainListingGet) | **GET** /v1/externalmetrics/chain/listing | Listing of metrics available for specific chain
[**v1ExternalmetricsExchangeHistoryGet**](ExternalMetricsApi.md#v1ExternalmetricsExchangeHistoryGet) | **GET** /v1/externalmetrics/exchange/history | Historical metrics for the exchange
[**v1ExternalmetricsExchangeListingGet**](ExternalMetricsApi.md#v1ExternalmetricsExchangeListingGet) | **GET** /v1/externalmetrics/exchange/listing | Listing of metrics available for specific exchange
[**v1ExternalmetricsListingGet**](ExternalMetricsApi.md#v1ExternalmetricsListingGet) | **GET** /v1/externalmetrics/listing | Listing of all supported metrics



## v1ExternalmetricsAssetHistoryGet

Historical metrics for the asset

Get asset metrics history.

### Example

```bash
 v1ExternalmetricsAssetHistoryGet  metric_id=value  asset_id=value  time_start=value  time_end=value  time_format=value  period_id=value  limit=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **metricId** | **string** | Metric identifier (e.g., 'TVL', 'STABLES_BRIDGED_USD') | [default to null]
 **assetId** | **string** | Asset identifier (e.g., 'USDC', 'USDT') | [default to null]
 **timeStart** | **string** | Starting time in ISO 8601 | [optional] [default to null]
 **timeEnd** | **string** | Ending time in ISO 8601 | [optional] [default to null]
 **timeFormat** | **string** | If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec) | [optional] [default to null]
 **periodId** | **string** | Identifier of requested timeseries period (e.g. '1MIN' or '2MTH'), default value is '1MIN' | [optional] [default to null]
 **limit** | **integer** | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]

### Return type

**array[map]**

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1ExternalmetricsAssetListingGet

Listing of metrics available for specific asset

Get all metrics that are actually available for the specified asset.

### Example

```bash
 v1ExternalmetricsAssetListingGet  asset_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **assetId** | **string** | Asset identifier (e.g., USDC, USDT) | [default to null]

### Return type

[**array[V1MetricInfo]**](V1MetricInfo.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1ExternalmetricsChainHistoryGet

Historical metrics for the chain

Get chain metrics history.

### Example

```bash
 v1ExternalmetricsChainHistoryGet  metric_id=value  chain_id=value  time_start=value  time_end=value  time_format=value  period_id=value  limit=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **metricId** | **string** | Metric identifier (e.g., 'TVL', 'STABLES_BRIDGED_USD') | [default to null]
 **chainId** | **string** | Chain identifier (e.g., 'Ethereum', 'Arbitrum') | [default to null]
 **timeStart** | **string** | Starting time in ISO 8601 | [optional] [default to null]
 **timeEnd** | **string** | Ending time in ISO 8601 | [optional] [default to null]
 **timeFormat** | **string** | If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec) | [optional] [default to null]
 **periodId** | **string** | Identifier of requested timeseries period (e.g. '1MIN' or '2MTH'), default value is '1MIN' | [optional] [default to null]
 **limit** | **integer** | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]

### Return type

**array[map]**

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1ExternalmetricsChainListingGet

Listing of metrics available for specific chain

Get all metrics that are actually available for the specified blockchain chain.

### Example

```bash
 v1ExternalmetricsChainListingGet  chain_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chainId** | **string** | Chain identifier (e.g., ETHEREUM, ARBITRUM) | [default to null]

### Return type

[**array[V1MetricInfo]**](V1MetricInfo.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1ExternalmetricsExchangeHistoryGet

Historical metrics for the exchange

Get exchange metrics history.

### Example

```bash
 v1ExternalmetricsExchangeHistoryGet  metric_id=value  exchange_id=value  time_start=value  time_end=value  time_format=value  period_id=value  limit=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **metricId** | **string** | Metric identifier (e.g., 'TVL', 'STABLES_BRIDGED_USD') | [default to null]
 **exchangeId** | **string** | Exchange identifier (e.g., 'BINANCE', 'UNISWAP-V3-ETHEREUM') | [default to null]
 **timeStart** | **string** | Starting time in ISO 8601 | [optional] [default to null]
 **timeEnd** | **string** | Ending time in ISO 8601 | [optional] [default to null]
 **timeFormat** | **string** | If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec) | [optional] [default to null]
 **periodId** | **string** | Identifier of requested timeseries period (e.g. '1MIN' or '2MTH'), default value is '1MIN' | [optional] [default to null]
 **limit** | **integer** | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]

### Return type

**array[map]**

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1ExternalmetricsExchangeListingGet

Listing of metrics available for specific exchange

Get all metrics that are actually available for the specified exchange.

### Example

```bash
 v1ExternalmetricsExchangeListingGet  exchange_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchangeId** | **string** | Exchange identifier (e.g., BINANCE, UNISWAP-V3-ETHEREUM) | [default to null]

### Return type

[**array[V1MetricInfo]**](V1MetricInfo.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1ExternalmetricsListingGet

Listing of all supported metrics

Get all metrics available in the system.

### Example

```bash
 v1ExternalmetricsListingGet
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**array[V1MetricInfo]**](V1MetricInfo.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

