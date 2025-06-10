# ExternalMetricsApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1ExternalmetricsAssetHistoryGet**](ExternalMetricsApi.md#v1ExternalmetricsAssetHistoryGet) | **GET** /v1/externalmetrics/asset/history | Historical metrics for the asset from external sources
[**v1ExternalmetricsAssetListingGet**](ExternalMetricsApi.md#v1ExternalmetricsAssetListingGet) | **GET** /v1/externalmetrics/asset/listing | Listing of metrics available for specific asset
[**v1ExternalmetricsAssetsGet**](ExternalMetricsApi.md#v1ExternalmetricsAssetsGet) | **GET** /v1/externalmetrics/assets | Listing of all supported external assets
[**v1ExternalmetricsChainHistoryGet**](ExternalMetricsApi.md#v1ExternalmetricsChainHistoryGet) | **GET** /v1/externalmetrics/chain/history | Historical metrics for the chain from external sources
[**v1ExternalmetricsChainListingGet**](ExternalMetricsApi.md#v1ExternalmetricsChainListingGet) | **GET** /v1/externalmetrics/chain/listing | Listing of metrics available for specific chain
[**v1ExternalmetricsChainsGet**](ExternalMetricsApi.md#v1ExternalmetricsChainsGet) | **GET** /v1/externalmetrics/chains | Listing of all supported external chains
[**v1ExternalmetricsExchangeHistoryGet**](ExternalMetricsApi.md#v1ExternalmetricsExchangeHistoryGet) | **GET** /v1/externalmetrics/exchange/history | Historical metrics for the exchange from both external and internal sources
[**v1ExternalmetricsExchangeListingGet**](ExternalMetricsApi.md#v1ExternalmetricsExchangeListingGet) | **GET** /v1/externalmetrics/exchange/listing | Listing of metrics available for specific exchange (both external and generic)
[**v1ExternalmetricsExchangesGet**](ExternalMetricsApi.md#v1ExternalmetricsExchangesGet) | **GET** /v1/externalmetrics/exchanges | Listing of all supported external exchanges
[**v1ExternalmetricsListingGet**](ExternalMetricsApi.md#v1ExternalmetricsListingGet) | **GET** /v1/externalmetrics/listing | Listing of all supported metrics (both external and generic)



## v1ExternalmetricsAssetHistoryGet

Historical metrics for the asset from external sources

Get asset metrics history from external data providers. Data is typically aggregated daily.

### Example

```bash
 v1ExternalmetricsAssetHistoryGet  metric_id=value  asset_id=value  time_start=value  time_end=value  time_format=value  period_id=value  limit=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **metricId** | **string** | Metric identifier (e.g., 'TVL', 'STABLES_BRIDGED_USD' - internal metric key) | [default to null]
 **assetId** | **string** | Asset identifier (e.g., 'USDC', 'USDT' - from supported assets list) | [default to null]
 **timeStart** | **string** | Starting time in ISO 8601 | [optional] [default to null]
 **timeEnd** | **string** | Ending time in ISO 8601 | [optional] [default to null]
 **timeFormat** | **string** | If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec) | [optional] [default to null]
 **periodId** | **string** | Identifier of requested timeseries period (e.g. '1MIN' or '2MTH'), default value is '1MIN' | [optional] [default to null]
 **limit** | **integer** | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]

### Return type

**array[map]**

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1ExternalmetricsAssetListingGet

Listing of metrics available for specific asset

Get all metrics that are actually available for the specified asset from external providers.

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

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1ExternalmetricsAssetsGet

Listing of all supported external assets

Get all assets (primarily stablecoins) supported by external data providers.

### Example

```bash
 v1ExternalmetricsAssetsGet
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**array[V1ExternalAsset]**](V1ExternalAsset.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1ExternalmetricsChainHistoryGet

Historical metrics for the chain from external sources

Get chain metrics history from external data providers. Data is typically aggregated daily.

### Example

```bash
 v1ExternalmetricsChainHistoryGet  metric_id=value  chain_id=value  time_start=value  time_end=value  time_format=value  period_id=value  limit=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **metricId** | **string** | Metric identifier (e.g., 'TVL', 'STABLES_BRIDGED_USD' - internal metric key) | [default to null]
 **chainId** | **string** | Chain identifier (e.g., 'Ethereum', 'Arbitrum' - from supported chains list) | [default to null]
 **timeStart** | **string** | Starting time in ISO 8601 | [optional] [default to null]
 **timeEnd** | **string** | Ending time in ISO 8601 | [optional] [default to null]
 **timeFormat** | **string** | If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec) | [optional] [default to null]
 **periodId** | **string** | Identifier of requested timeseries period (e.g. '1MIN' or '2MTH'), default value is '1MIN' | [optional] [default to null]
 **limit** | **integer** | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]

### Return type

**array[map]**

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1ExternalmetricsChainListingGet

Listing of metrics available for specific chain

Get all metrics that are actually available for the specified blockchain chain from external providers.

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

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1ExternalmetricsChainsGet

Listing of all supported external chains

Get all blockchain chains supported by external data providers.

### Example

```bash
 v1ExternalmetricsChainsGet
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**array[V1Chain]**](V1Chain.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1ExternalmetricsExchangeHistoryGet

Historical metrics for the exchange from both external and internal sources

Get exchange metrics history from external data providers or internal sources based on metric type.

### Example

```bash
 v1ExternalmetricsExchangeHistoryGet  metric_id=value  exchange_id=value  time_start=value  time_end=value  time_format=value  period_id=value  limit=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **metricId** | **string** | Metric identifier (e.g., 'TVL', 'STABLES_BRIDGED_USD' for external, or generic metric IDs) | [default to null]
 **exchangeId** | **string** | Exchange identifier (e.g., 'BINANCE', 'UNISWAP-V3-ETHEREUM') | [default to null]
 **timeStart** | **string** | Starting time in ISO 8601 | [optional] [default to null]
 **timeEnd** | **string** | Ending time in ISO 8601 | [optional] [default to null]
 **timeFormat** | **string** | If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec) | [optional] [default to null]
 **periodId** | **string** | Identifier of requested timeseries period (e.g. '1MIN' or '2MTH'), default value is '1MIN' | [optional] [default to null]
 **limit** | **integer** | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]

### Return type

**array[map]**

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1ExternalmetricsExchangeListingGet

Listing of metrics available for specific exchange (both external and generic)

Get all metrics that are actually available for the specified exchange from both external providers and internal sources.

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

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1ExternalmetricsExchangesGet

Listing of all supported external exchanges

Get all exchanges that have mapping to external data providers for metrics that actually have sources.
Only returns exchanges that are properly mapped to external protocols for metrics with defined sources.

### Example

```bash
 v1ExternalmetricsExchangesGet
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**array[V1ExternalExchange]**](V1ExternalExchange.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1ExternalmetricsListingGet

Listing of all supported metrics (both external and generic)

Get all metrics available from external data providers and internal generic metrics.
External metrics have detailed descriptions, while generic metrics are marked as such.

### Example

```bash
 v1ExternalmetricsListingGet
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**array[V1MetricInfo]**](V1MetricInfo.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

