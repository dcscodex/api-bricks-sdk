# OpenapiClient::MetricsApi

All URIs are relative to *https://rest.coinapi.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**v1_metrics_asset_current_get**](MetricsApi.md#v1_metrics_asset_current_get) | **GET** /v1/metrics/asset/current | Current metrics for given asset |
| [**v1_metrics_asset_history_get**](MetricsApi.md#v1_metrics_asset_history_get) | **GET** /v1/metrics/asset/history | Historical metrics for asset |
| [**v1_metrics_asset_listing_get**](MetricsApi.md#v1_metrics_asset_listing_get) | **GET** /v1/metrics/asset/listing | Listing of all supported metrics for asset |
| [**v1_metrics_exchange_current_get**](MetricsApi.md#v1_metrics_exchange_current_get) | **GET** /v1/metrics/exchange/current | Current metrics for given exchange |
| [**v1_metrics_exchange_history_get**](MetricsApi.md#v1_metrics_exchange_history_get) | **GET** /v1/metrics/exchange/history | Historical metrics for the exchange |
| [**v1_metrics_exchange_listing_get**](MetricsApi.md#v1_metrics_exchange_listing_get) | **GET** /v1/metrics/exchange/listing | Listing of all supported exchange metrics |
| [**v1_metrics_listing_get**](MetricsApi.md#v1_metrics_listing_get) | **GET** /v1/metrics/listing | Listing of all supported metrics by CoinAPI |
| [**v1_metrics_symbol_current_get**](MetricsApi.md#v1_metrics_symbol_current_get) | **GET** /v1/metrics/symbol/current | Current metrics for given symbol |
| [**v1_metrics_symbol_history_get**](MetricsApi.md#v1_metrics_symbol_history_get) | **GET** /v1/metrics/symbol/history | Historical metrics for symbol |
| [**v1_metrics_symbol_listing_get**](MetricsApi.md#v1_metrics_symbol_listing_get) | **GET** /v1/metrics/symbol/listing | Listing of all supported metrics for symbol |


## v1_metrics_asset_current_get

> <Array<V1GeneralData>> v1_metrics_asset_current_get(opts)

Current metrics for given asset

Get current asset metrics.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: ApiKey
  config.api_key['X-CoinAPI-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-CoinAPI-Key'] = 'Bearer'
end

api_instance = OpenapiClient::MetricsApi.new
opts = {
  metric_id: 'metric_id_example', # String | Metric identifier (from the Metrics -> Listing)
  asset_id: 'asset_id_example', # String | Asset identifier (from the Metadata -> Assets)
  asset_id_external: 'asset_id_external_example', # String | Exchange asset identifier
  exchange_id: 'exchange_id_example' # String | Exchange identifier (from the Metadata -> Exchanges)
}

begin
  # Current metrics for given asset
  result = api_instance.v1_metrics_asset_current_get(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MetricsApi->v1_metrics_asset_current_get: #{e}"
end
```

#### Using the v1_metrics_asset_current_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<V1GeneralData>>, Integer, Hash)> v1_metrics_asset_current_get_with_http_info(opts)

```ruby
begin
  # Current metrics for given asset
  data, status_code, headers = api_instance.v1_metrics_asset_current_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<V1GeneralData>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MetricsApi->v1_metrics_asset_current_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **metric_id** | **String** | Metric identifier (from the Metrics -&gt; Listing) | [optional] |
| **asset_id** | **String** | Asset identifier (from the Metadata -&gt; Assets) | [optional] |
| **asset_id_external** | **String** | Exchange asset identifier | [optional] |
| **exchange_id** | **String** | Exchange identifier (from the Metadata -&gt; Exchanges) | [optional] |

### Return type

[**Array&lt;V1GeneralData&gt;**](V1GeneralData.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack


## v1_metrics_asset_history_get

> <Array<V1MetricData>> v1_metrics_asset_history_get(metric_id, exchange_id, opts)

Historical metrics for asset

Get asset metrics history.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: ApiKey
  config.api_key['X-CoinAPI-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-CoinAPI-Key'] = 'Bearer'
end

api_instance = OpenapiClient::MetricsApi.new
metric_id = 'metric_id_example' # String | Metric identifier (from the Metrics -> Listing)
exchange_id = 'exchange_id_example' # String | Exchange identifier (from the Metadata -> Exchanges)
opts = {
  asset_id: 'asset_id_example', # String | Asset identifier (from the Metadata -> Assets)
  asset_id_external: 'asset_id_external_example', # String | Exchange asset identifier
  time_start: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Starting time in ISO 8601
  time_end: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Ending time in ISO 8601
  time_format: 'time_format_example', # String | If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec)
  period_id: 'period_id_example', # String | Identifier of requested timeseries period (e.g. `5SEC` or `2MTH`), default value is `1SEC`
  limit: 56 # Integer | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
}

begin
  # Historical metrics for asset
  result = api_instance.v1_metrics_asset_history_get(metric_id, exchange_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MetricsApi->v1_metrics_asset_history_get: #{e}"
end
```

#### Using the v1_metrics_asset_history_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<V1MetricData>>, Integer, Hash)> v1_metrics_asset_history_get_with_http_info(metric_id, exchange_id, opts)

```ruby
begin
  # Historical metrics for asset
  data, status_code, headers = api_instance.v1_metrics_asset_history_get_with_http_info(metric_id, exchange_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<V1MetricData>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MetricsApi->v1_metrics_asset_history_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **metric_id** | **String** | Metric identifier (from the Metrics -&gt; Listing) |  |
| **exchange_id** | **String** | Exchange identifier (from the Metadata -&gt; Exchanges) |  |
| **asset_id** | **String** | Asset identifier (from the Metadata -&gt; Assets) | [optional] |
| **asset_id_external** | **String** | Exchange asset identifier | [optional] |
| **time_start** | **Time** | Starting time in ISO 8601 | [optional] |
| **time_end** | **Time** | Ending time in ISO 8601 | [optional] |
| **time_format** | **String** | If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec) | [optional] |
| **period_id** | **String** | Identifier of requested timeseries period (e.g. &#x60;5SEC&#x60; or &#x60;2MTH&#x60;), default value is &#x60;1SEC&#x60; | [optional] |
| **limit** | **Integer** | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional][default to 100] |

### Return type

[**Array&lt;V1MetricData&gt;**](V1MetricData.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack


## v1_metrics_asset_listing_get

> <Array<V1ListingItem>> v1_metrics_asset_listing_get(opts)

Listing of all supported metrics for asset

Get data metrics for asset.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: ApiKey
  config.api_key['X-CoinAPI-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-CoinAPI-Key'] = 'Bearer'
end

api_instance = OpenapiClient::MetricsApi.new
opts = {
  metric_id: 'metric_id_example', # String | Metric identifier (from the Metrics -> Listing)
  exchange_id: 'exchange_id_example', # String | Exchange identifier (from the Metadata -> Exchanges)
  chain_id: 'chain_id_example', # String | Chain identifier
  network_id: 'network_id_example', # String | Network identifier
  asset_id: 'asset_id_example', # String | Asset identifier (from the Metadata -> Assets)
  asset_id_external: 'asset_id_external_example' # String | The asset external identifier
}

begin
  # Listing of all supported metrics for asset
  result = api_instance.v1_metrics_asset_listing_get(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MetricsApi->v1_metrics_asset_listing_get: #{e}"
end
```

#### Using the v1_metrics_asset_listing_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<V1ListingItem>>, Integer, Hash)> v1_metrics_asset_listing_get_with_http_info(opts)

```ruby
begin
  # Listing of all supported metrics for asset
  data, status_code, headers = api_instance.v1_metrics_asset_listing_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<V1ListingItem>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MetricsApi->v1_metrics_asset_listing_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **metric_id** | **String** | Metric identifier (from the Metrics -&gt; Listing) | [optional] |
| **exchange_id** | **String** | Exchange identifier (from the Metadata -&gt; Exchanges) | [optional] |
| **chain_id** | **String** | Chain identifier | [optional] |
| **network_id** | **String** | Network identifier | [optional] |
| **asset_id** | **String** | Asset identifier (from the Metadata -&gt; Assets) | [optional] |
| **asset_id_external** | **String** | The asset external identifier | [optional] |

### Return type

[**Array&lt;V1ListingItem&gt;**](V1ListingItem.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack


## v1_metrics_exchange_current_get

> <Array<V1GeneralData>> v1_metrics_exchange_current_get(exchange_id, opts)

Current metrics for given exchange

Get current exchange metrics values.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: ApiKey
  config.api_key['X-CoinAPI-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-CoinAPI-Key'] = 'Bearer'
end

api_instance = OpenapiClient::MetricsApi.new
exchange_id = 'exchange_id_example' # String | The exchange identifier (from the Metadata -> Exchanges)
opts = {
  metric_id: 'metric_id_example' # String | The metric identifier (from the Metrics -> Listing)
}

begin
  # Current metrics for given exchange
  result = api_instance.v1_metrics_exchange_current_get(exchange_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MetricsApi->v1_metrics_exchange_current_get: #{e}"
end
```

#### Using the v1_metrics_exchange_current_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<V1GeneralData>>, Integer, Hash)> v1_metrics_exchange_current_get_with_http_info(exchange_id, opts)

```ruby
begin
  # Current metrics for given exchange
  data, status_code, headers = api_instance.v1_metrics_exchange_current_get_with_http_info(exchange_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<V1GeneralData>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MetricsApi->v1_metrics_exchange_current_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **exchange_id** | **String** | The exchange identifier (from the Metadata -&gt; Exchanges) |  |
| **metric_id** | **String** | The metric identifier (from the Metrics -&gt; Listing) | [optional] |

### Return type

[**Array&lt;V1GeneralData&gt;**](V1GeneralData.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack


## v1_metrics_exchange_history_get

> <Array<V1MetricData>> v1_metrics_exchange_history_get(metric_id, exchange_id, opts)

Historical metrics for the exchange

Get exchange metrics history.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: ApiKey
  config.api_key['X-CoinAPI-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-CoinAPI-Key'] = 'Bearer'
end

api_instance = OpenapiClient::MetricsApi.new
metric_id = 'metric_id_example' # String | Metric identifier (from the Metrics -> Listing)
exchange_id = 'exchange_id_example' # String | Exchange identifier (from the Metadata -> Exchanges)
opts = {
  time_start: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Starting time in ISO 8601
  time_end: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Ending time in ISO 8601
  time_format: 'time_format_example', # String | If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec)
  period_id: 'period_id_example', # String | Identifier of requested timeseries period (e.g. `5SEC` or `2MTH`), default value is `1SEC`
  limit: 56 # Integer | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
}

begin
  # Historical metrics for the exchange
  result = api_instance.v1_metrics_exchange_history_get(metric_id, exchange_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MetricsApi->v1_metrics_exchange_history_get: #{e}"
end
```

#### Using the v1_metrics_exchange_history_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<V1MetricData>>, Integer, Hash)> v1_metrics_exchange_history_get_with_http_info(metric_id, exchange_id, opts)

```ruby
begin
  # Historical metrics for the exchange
  data, status_code, headers = api_instance.v1_metrics_exchange_history_get_with_http_info(metric_id, exchange_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<V1MetricData>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MetricsApi->v1_metrics_exchange_history_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **metric_id** | **String** | Metric identifier (from the Metrics -&gt; Listing) |  |
| **exchange_id** | **String** | Exchange identifier (from the Metadata -&gt; Exchanges) |  |
| **time_start** | **Time** | Starting time in ISO 8601 | [optional] |
| **time_end** | **Time** | Ending time in ISO 8601 | [optional] |
| **time_format** | **String** | If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec) | [optional] |
| **period_id** | **String** | Identifier of requested timeseries period (e.g. &#x60;5SEC&#x60; or &#x60;2MTH&#x60;), default value is &#x60;1SEC&#x60; | [optional] |
| **limit** | **Integer** | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional][default to 100] |

### Return type

[**Array&lt;V1MetricData&gt;**](V1MetricData.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack


## v1_metrics_exchange_listing_get

> <Array<V1ListingItem>> v1_metrics_exchange_listing_get(exchange_id, opts)

Listing of all supported exchange metrics

Get data metrics for exchange.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: ApiKey
  config.api_key['X-CoinAPI-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-CoinAPI-Key'] = 'Bearer'
end

api_instance = OpenapiClient::MetricsApi.new
exchange_id = 'exchange_id_example' # String | The exchange identifier (from the Metadata -> Exchanges)
opts = {
  metric_id: 'metric_id_example' # String | The metric identifier (from the Metrics -> Listing)
}

begin
  # Listing of all supported exchange metrics
  result = api_instance.v1_metrics_exchange_listing_get(exchange_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MetricsApi->v1_metrics_exchange_listing_get: #{e}"
end
```

#### Using the v1_metrics_exchange_listing_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<V1ListingItem>>, Integer, Hash)> v1_metrics_exchange_listing_get_with_http_info(exchange_id, opts)

```ruby
begin
  # Listing of all supported exchange metrics
  data, status_code, headers = api_instance.v1_metrics_exchange_listing_get_with_http_info(exchange_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<V1ListingItem>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MetricsApi->v1_metrics_exchange_listing_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **exchange_id** | **String** | The exchange identifier (from the Metadata -&gt; Exchanges) |  |
| **metric_id** | **String** | The metric identifier (from the Metrics -&gt; Listing) | [optional] |

### Return type

[**Array&lt;V1ListingItem&gt;**](V1ListingItem.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack


## v1_metrics_listing_get

> <Array<V1Metric>> v1_metrics_listing_get

Listing of all supported metrics by CoinAPI

Get all data metrics.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: ApiKey
  config.api_key['X-CoinAPI-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-CoinAPI-Key'] = 'Bearer'
end

api_instance = OpenapiClient::MetricsApi.new

begin
  # Listing of all supported metrics by CoinAPI
  result = api_instance.v1_metrics_listing_get
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MetricsApi->v1_metrics_listing_get: #{e}"
end
```

#### Using the v1_metrics_listing_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<V1Metric>>, Integer, Hash)> v1_metrics_listing_get_with_http_info

```ruby
begin
  # Listing of all supported metrics by CoinAPI
  data, status_code, headers = api_instance.v1_metrics_listing_get_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<V1Metric>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MetricsApi->v1_metrics_listing_get_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;V1Metric&gt;**](V1Metric.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack


## v1_metrics_symbol_current_get

> <Array<V1GeneralData>> v1_metrics_symbol_current_get(opts)

Current metrics for given symbol

Get current symbol metrics.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: ApiKey
  config.api_key['X-CoinAPI-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-CoinAPI-Key'] = 'Bearer'
end

api_instance = OpenapiClient::MetricsApi.new
opts = {
  metric_id: 'metric_id_example', # String | Metric identifier (from the Metrics -> Listing)
  symbol_id: 'symbol_id_example', # String | Symbol identifier (from the Metadata -> Symbols)
  exchange_id: 'exchange_id_example' # String | Exchange id (from the Metadata -> Exchanges)
}

begin
  # Current metrics for given symbol
  result = api_instance.v1_metrics_symbol_current_get(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MetricsApi->v1_metrics_symbol_current_get: #{e}"
end
```

#### Using the v1_metrics_symbol_current_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<V1GeneralData>>, Integer, Hash)> v1_metrics_symbol_current_get_with_http_info(opts)

```ruby
begin
  # Current metrics for given symbol
  data, status_code, headers = api_instance.v1_metrics_symbol_current_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<V1GeneralData>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MetricsApi->v1_metrics_symbol_current_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **metric_id** | **String** | Metric identifier (from the Metrics -&gt; Listing) | [optional] |
| **symbol_id** | **String** | Symbol identifier (from the Metadata -&gt; Symbols) | [optional] |
| **exchange_id** | **String** | Exchange id (from the Metadata -&gt; Exchanges) | [optional] |

### Return type

[**Array&lt;V1GeneralData&gt;**](V1GeneralData.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack


## v1_metrics_symbol_history_get

> <Array<V1MetricData>> v1_metrics_symbol_history_get(metric_id, symbol_id, opts)

Historical metrics for symbol

Get symbol metrics history.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: ApiKey
  config.api_key['X-CoinAPI-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-CoinAPI-Key'] = 'Bearer'
end

api_instance = OpenapiClient::MetricsApi.new
metric_id = 'metric_id_example' # String | Metric identifier (from the Metrics -> Listing)
symbol_id = 'symbol_id_example' # String | Symbol identifier (from the Metadata -> Symbols)
opts = {
  time_start: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Starting time in ISO 8601
  time_end: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Ending time in ISO 8601
  time_format: 'time_format_example', # String | If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec)
  period_id: 'period_id_example', # String | Identifier of requested timeseries period (e.g. `5SEC` or `2MTH`), default value is `1SEC`
  limit: 56 # Integer | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
}

begin
  # Historical metrics for symbol
  result = api_instance.v1_metrics_symbol_history_get(metric_id, symbol_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MetricsApi->v1_metrics_symbol_history_get: #{e}"
end
```

#### Using the v1_metrics_symbol_history_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<V1MetricData>>, Integer, Hash)> v1_metrics_symbol_history_get_with_http_info(metric_id, symbol_id, opts)

```ruby
begin
  # Historical metrics for symbol
  data, status_code, headers = api_instance.v1_metrics_symbol_history_get_with_http_info(metric_id, symbol_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<V1MetricData>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MetricsApi->v1_metrics_symbol_history_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **metric_id** | **String** | Metric identifier (from the Metrics -&gt; Listing) |  |
| **symbol_id** | **String** | Symbol identifier (from the Metadata -&gt; Symbols) |  |
| **time_start** | **Time** | Starting time in ISO 8601 | [optional] |
| **time_end** | **Time** | Ending time in ISO 8601 | [optional] |
| **time_format** | **String** | If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec) | [optional] |
| **period_id** | **String** | Identifier of requested timeseries period (e.g. &#x60;5SEC&#x60; or &#x60;2MTH&#x60;), default value is &#x60;1SEC&#x60; | [optional] |
| **limit** | **Integer** | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional][default to 100] |

### Return type

[**Array&lt;V1MetricData&gt;**](V1MetricData.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack


## v1_metrics_symbol_listing_get

> <Array<V1ListingItem>> v1_metrics_symbol_listing_get(opts)

Listing of all supported metrics for symbol

Get data metrics for symbol.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: ApiKey
  config.api_key['X-CoinAPI-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-CoinAPI-Key'] = 'Bearer'
end

api_instance = OpenapiClient::MetricsApi.new
opts = {
  metric_id: 'metric_id_example', # String | Metric identifier (from the Metrics -> Listing)
  exchange_id: 'exchange_id_example', # String | Exchange identifier (from the Metadata -> Exchanges)
  symbol_id: 'symbol_id_example' # String | Symbol identifier (from the Metadata -> Symbols)
}

begin
  # Listing of all supported metrics for symbol
  result = api_instance.v1_metrics_symbol_listing_get(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MetricsApi->v1_metrics_symbol_listing_get: #{e}"
end
```

#### Using the v1_metrics_symbol_listing_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<V1ListingItem>>, Integer, Hash)> v1_metrics_symbol_listing_get_with_http_info(opts)

```ruby
begin
  # Listing of all supported metrics for symbol
  data, status_code, headers = api_instance.v1_metrics_symbol_listing_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<V1ListingItem>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MetricsApi->v1_metrics_symbol_listing_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **metric_id** | **String** | Metric identifier (from the Metrics -&gt; Listing) | [optional] |
| **exchange_id** | **String** | Exchange identifier (from the Metadata -&gt; Exchanges) | [optional] |
| **symbol_id** | **String** | Symbol identifier (from the Metadata -&gt; Symbols) | [optional] |

### Return type

[**Array&lt;V1ListingItem&gt;**](V1ListingItem.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

