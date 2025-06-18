# MetricsV1Api

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1MetricsAssetCurrentGet**](MetricsV1Api.md#v1MetricsAssetCurrentGet) | **GET** /v1/metrics/asset/current | Current metrics for given asset
[**v1MetricsAssetHistoryGet**](MetricsV1Api.md#v1MetricsAssetHistoryGet) | **GET** /v1/metrics/asset/history | Historical metrics for asset
[**v1MetricsAssetListingGet**](MetricsV1Api.md#v1MetricsAssetListingGet) | **GET** /v1/metrics/asset/listing | Listing of all supported metrics for asset
[**v1MetricsExchangeCurrentGet**](MetricsV1Api.md#v1MetricsExchangeCurrentGet) | **GET** /v1/metrics/exchange/current | Current metrics for given exchange
[**v1MetricsExchangeHistoryGet**](MetricsV1Api.md#v1MetricsExchangeHistoryGet) | **GET** /v1/metrics/exchange/history | Historical metrics for the exchange
[**v1MetricsExchangeListingGet**](MetricsV1Api.md#v1MetricsExchangeListingGet) | **GET** /v1/metrics/exchange/listing | Listing of all supported exchange metrics
[**v1MetricsListingGet**](MetricsV1Api.md#v1MetricsListingGet) | **GET** /v1/metrics/listing | Listing of all supported metrics by CoinAPI
[**v1MetricsSymbolCurrentGet**](MetricsV1Api.md#v1MetricsSymbolCurrentGet) | **GET** /v1/metrics/symbol/current | Current metrics for given symbol
[**v1MetricsSymbolHistoryGet**](MetricsV1Api.md#v1MetricsSymbolHistoryGet) | **GET** /v1/metrics/symbol/history | Historical metrics for symbol
[**v1MetricsSymbolListingGet**](MetricsV1Api.md#v1MetricsSymbolListingGet) | **GET** /v1/metrics/symbol/listing | Listing of all supported metrics for symbol



## v1MetricsAssetCurrentGet

Current metrics for given asset

Get current asset metrics.

### Example

```bash
 v1MetricsAssetCurrentGet  metric_id=value  asset_id=value  asset_id_external=value  exchange_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **metricId** | **string** | Metric identifier (from the Metrics -> Listing) | [optional] [default to null]
 **assetId** | **string** | Asset identifier (from the Metadata -> Assets) | [optional] [default to null]
 **assetIdExternal** | **string** | Exchange asset identifier | [optional] [default to null]
 **exchangeId** | **string** | Exchange identifier (from the Metadata -> Exchanges) | [optional] [default to null]

### Return type

[**array[V1GeneralData]**](V1GeneralData.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1MetricsAssetHistoryGet

Historical metrics for asset

Get asset metrics history.

### Example

```bash
 v1MetricsAssetHistoryGet  metric_id=value  exchange_id=value  asset_id=value  asset_id_external=value  time_start=value  time_end=value  time_format=value  period_id=value  limit=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **metricId** | **string** | Metric identifier (from the Metrics -> Listing) | [default to null]
 **exchangeId** | **string** | Exchange identifier (from the Metadata -> Exchanges) | [default to null]
 **assetId** | **string** | Asset identifier (from the Metadata -> Assets) | [optional] [default to null]
 **assetIdExternal** | **string** | Exchange asset identifier | [optional] [default to null]
 **timeStart** | **string** | Starting time in ISO 8601 | [optional] [default to null]
 **timeEnd** | **string** | Ending time in ISO 8601 | [optional] [default to null]
 **timeFormat** | **string** | If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec) | [optional] [default to null]
 **periodId** | **string** | Identifier of requested timeseries period (e.g. '5SEC' or '2MTH'), default value is '1SEC' | [optional] [default to null]
 **limit** | **integer** | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]

### Return type

[**array[V1MetricData]**](V1MetricData.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1MetricsAssetListingGet

Listing of all supported metrics for asset

Get data metrics for asset.

### Example

```bash
 v1MetricsAssetListingGet  metric_id=value  exchange_id=value  chain_id=value  network_id=value  asset_id=value  asset_id_external=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **metricId** | **string** | Metric identifier (from the Metrics -> Listing) | [optional] [default to null]
 **exchangeId** | **string** | Exchange identifier (from the Metadata -> Exchanges) | [optional] [default to null]
 **chainId** | **string** | Chain identifier | [optional] [default to null]
 **networkId** | **string** | Network identifier | [optional] [default to null]
 **assetId** | **string** | Asset identifier (from the Metadata -> Assets) | [optional] [default to null]
 **assetIdExternal** | **string** | The asset external identifier | [optional] [default to null]

### Return type

[**array[V1ListingItem]**](V1ListingItem.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1MetricsExchangeCurrentGet

Current metrics for given exchange

Get current exchange metrics values.

### Example

```bash
 v1MetricsExchangeCurrentGet  exchange_id=value  metric_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchangeId** | **string** | The exchange identifier (from the Metadata -> Exchanges) | [default to null]
 **metricId** | **string** | The metric identifier (from the Metrics -> Listing) | [optional] [default to null]

### Return type

[**array[V1GeneralData]**](V1GeneralData.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1MetricsExchangeHistoryGet

Historical metrics for the exchange

Get exchange metrics history.

### Example

```bash
 v1MetricsExchangeHistoryGet  metric_id=value  exchange_id=value  time_start=value  time_end=value  time_format=value  period_id=value  limit=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **metricId** | **string** | Metric identifier (from the Metrics -> Listing) | [default to null]
 **exchangeId** | **string** | Exchange identifier (from the Metadata -> Exchanges) | [default to null]
 **timeStart** | **string** | Starting time in ISO 8601 | [optional] [default to null]
 **timeEnd** | **string** | Ending time in ISO 8601 | [optional] [default to null]
 **timeFormat** | **string** | If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec) | [optional] [default to null]
 **periodId** | **string** | Identifier of requested timeseries period (e.g. '5SEC' or '2MTH'), default value is '1SEC' | [optional] [default to null]
 **limit** | **integer** | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]

### Return type

[**array[V1MetricData]**](V1MetricData.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1MetricsExchangeListingGet

Listing of all supported exchange metrics

Get data metrics for exchange.

### Example

```bash
 v1MetricsExchangeListingGet  exchange_id=value  metric_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchangeId** | **string** | The exchange identifier (from the Metadata -> Exchanges) | [default to null]
 **metricId** | **string** | The metric identifier (from the Metrics -> Listing) | [optional] [default to null]

### Return type

[**array[V1ListingItem]**](V1ListingItem.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1MetricsListingGet

Listing of all supported metrics by CoinAPI

Get all data metrics.

### Example

```bash
 v1MetricsListingGet
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**array[V1Metric]**](V1Metric.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1MetricsSymbolCurrentGet

Current metrics for given symbol

Get current symbol metrics.

### Example

```bash
 v1MetricsSymbolCurrentGet  metric_id=value  symbol_id=value  exchange_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **metricId** | **string** | Metric identifier (from the Metrics -> Listing) | [optional] [default to null]
 **symbolId** | **string** | Symbol identifier (from the Metadata -> Symbols) | [optional] [default to null]
 **exchangeId** | **string** | Exchange id (from the Metadata -> Exchanges) | [optional] [default to null]

### Return type

[**array[V1GeneralData]**](V1GeneralData.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1MetricsSymbolHistoryGet

Historical metrics for symbol

Get symbol metrics history.

### Example

```bash
 v1MetricsSymbolHistoryGet  metric_id=value  symbol_id=value  time_start=value  time_end=value  time_format=value  period_id=value  limit=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **metricId** | **string** | Metric identifier (from the Metrics -> Listing) | [default to null]
 **symbolId** | **string** | Symbol identifier (from the Metadata -> Symbols) | [default to null]
 **timeStart** | **string** | Starting time in ISO 8601 | [optional] [default to null]
 **timeEnd** | **string** | Ending time in ISO 8601 | [optional] [default to null]
 **timeFormat** | **string** | If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec) | [optional] [default to null]
 **periodId** | **string** | Identifier of requested timeseries period (e.g. '5SEC' or '2MTH'), default value is '1SEC' | [optional] [default to null]
 **limit** | **integer** | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]

### Return type

[**array[V1MetricData]**](V1MetricData.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1MetricsSymbolListingGet

Listing of all supported metrics for symbol

Get data metrics for symbol.

### Example

```bash
 v1MetricsSymbolListingGet  metric_id=value  exchange_id=value  symbol_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **metricId** | **string** | Metric identifier (from the Metrics -> Listing) | [optional] [default to null]
 **exchangeId** | **string** | Exchange identifier (from the Metadata -> Exchanges) | [optional] [default to null]
 **symbolId** | **string** | Symbol identifier (from the Metadata -> Symbols) | [optional] [default to null]

### Return type

[**array[V1ListingItem]**](V1ListingItem.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

