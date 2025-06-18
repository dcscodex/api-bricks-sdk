# MetricsV2Api

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**v2MetricsAssetHistoryGet**](MetricsV2Api.md#v2MetricsAssetHistoryGet) | **GET** /v2/metrics/asset/history | Historical metrics for the asset
[**v2MetricsAssetListingGet**](MetricsV2Api.md#v2MetricsAssetListingGet) | **GET** /v2/metrics/asset/listing | Listing of metrics available for specific asset
[**v2MetricsChainHistoryGet**](MetricsV2Api.md#v2MetricsChainHistoryGet) | **GET** /v2/metrics/chain/history | Historical metrics for the chain
[**v2MetricsChainListingGet**](MetricsV2Api.md#v2MetricsChainListingGet) | **GET** /v2/metrics/chain/listing | Listing of metrics available for specific chain
[**v2MetricsExchangeHistoryGet**](MetricsV2Api.md#v2MetricsExchangeHistoryGet) | **GET** /v2/metrics/exchange/history | Historical metrics for the exchange
[**v2MetricsExchangeListingGet**](MetricsV2Api.md#v2MetricsExchangeListingGet) | **GET** /v2/metrics/exchange/listing | Listing of metrics available for specific exchange
[**v2MetricsListingGet**](MetricsV2Api.md#v2MetricsListingGet) | **GET** /v2/metrics/listing | Listing of all supported metrics



## v2MetricsAssetHistoryGet

Historical metrics for the asset

Get asset metrics history.

### Example

```bash
 v2MetricsAssetHistoryGet  metric_id=value  asset_id=value  time_start=value  time_end=value  time_format=value  period_id=value  limit=value
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


## v2MetricsAssetListingGet

Listing of metrics available for specific asset

Get all metrics that are actually available for the specified asset.

### Example

```bash
 v2MetricsAssetListingGet  asset_id=value
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


## v2MetricsChainHistoryGet

Historical metrics for the chain

Get chain metrics history.

### Example

```bash
 v2MetricsChainHistoryGet  metric_id=value  chain_id=value  time_start=value  time_end=value  time_format=value  period_id=value  limit=value
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


## v2MetricsChainListingGet

Listing of metrics available for specific chain

Get all metrics that are actually available for the specified blockchain chain.

### Example

```bash
 v2MetricsChainListingGet  chain_id=value
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


## v2MetricsExchangeHistoryGet

Historical metrics for the exchange

Get exchange metrics history.

### Example

```bash
 v2MetricsExchangeHistoryGet  metric_id=value  exchange_id=value  time_start=value  time_end=value  time_format=value  period_id=value  limit=value
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


## v2MetricsExchangeListingGet

Listing of metrics available for specific exchange

Get all metrics that are actually available for the specified exchange.

### Example

```bash
 v2MetricsExchangeListingGet  exchange_id=value
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


## v2MetricsListingGet

Listing of all supported metrics

Get all metrics available in the system.

### Example

```bash
 v2MetricsListingGet
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

