# OpenapiClient::ExternalMetricsApi

All URIs are relative to *https://rest.coinapi.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**v1_externalmetrics_asset_history_get**](ExternalMetricsApi.md#v1_externalmetrics_asset_history_get) | **GET** /v1/externalmetrics/asset/history | Historical metrics for the asset from external sources |
| [**v1_externalmetrics_asset_listing_get**](ExternalMetricsApi.md#v1_externalmetrics_asset_listing_get) | **GET** /v1/externalmetrics/asset/listing | Listing of metrics available for specific asset |
| [**v1_externalmetrics_assets_get**](ExternalMetricsApi.md#v1_externalmetrics_assets_get) | **GET** /v1/externalmetrics/assets | Listing of all supported external assets |
| [**v1_externalmetrics_chain_history_get**](ExternalMetricsApi.md#v1_externalmetrics_chain_history_get) | **GET** /v1/externalmetrics/chain/history | Historical metrics for the chain from external sources |
| [**v1_externalmetrics_chain_listing_get**](ExternalMetricsApi.md#v1_externalmetrics_chain_listing_get) | **GET** /v1/externalmetrics/chain/listing | Listing of metrics available for specific chain |
| [**v1_externalmetrics_chains_get**](ExternalMetricsApi.md#v1_externalmetrics_chains_get) | **GET** /v1/externalmetrics/chains | Listing of all supported external chains |
| [**v1_externalmetrics_exchange_history_get**](ExternalMetricsApi.md#v1_externalmetrics_exchange_history_get) | **GET** /v1/externalmetrics/exchange/history | Historical metrics for the exchange from both external and internal sources |
| [**v1_externalmetrics_exchange_listing_get**](ExternalMetricsApi.md#v1_externalmetrics_exchange_listing_get) | **GET** /v1/externalmetrics/exchange/listing | Listing of metrics available for specific exchange (both external and generic) |
| [**v1_externalmetrics_exchanges_get**](ExternalMetricsApi.md#v1_externalmetrics_exchanges_get) | **GET** /v1/externalmetrics/exchanges | Listing of all supported external exchanges |
| [**v1_externalmetrics_listing_get**](ExternalMetricsApi.md#v1_externalmetrics_listing_get) | **GET** /v1/externalmetrics/listing | Listing of all supported metrics (both external and generic) |


## v1_externalmetrics_asset_history_get

> Array&lt;Object&gt; v1_externalmetrics_asset_history_get(metric_id, asset_id, opts)

Historical metrics for the asset from external sources

Get asset metrics history from external data providers. Data is typically aggregated daily.

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

api_instance = OpenapiClient::ExternalMetricsApi.new
metric_id = 'metric_id_example' # String | Metric identifier (e.g., `TVL`, `STABLES_BRIDGED_USD` - internal metric key)
asset_id = 'asset_id_example' # String | Asset identifier (e.g., `USDC`, `USDT` - from supported assets list)
opts = {
  time_start: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Starting time in ISO 8601
  time_end: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Ending time in ISO 8601
  time_format: 'time_format_example', # String | If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec)
  period_id: 'period_id_example', # String | Identifier of requested timeseries period (e.g. `1MIN` or `2MTH`), default value is `1MIN`
  limit: 56 # Integer | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
}

begin
  # Historical metrics for the asset from external sources
  result = api_instance.v1_externalmetrics_asset_history_get(metric_id, asset_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ExternalMetricsApi->v1_externalmetrics_asset_history_get: #{e}"
end
```

#### Using the v1_externalmetrics_asset_history_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Array&lt;Object&gt;, Integer, Hash)> v1_externalmetrics_asset_history_get_with_http_info(metric_id, asset_id, opts)

```ruby
begin
  # Historical metrics for the asset from external sources
  data, status_code, headers = api_instance.v1_externalmetrics_asset_history_get_with_http_info(metric_id, asset_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Array&lt;Object&gt;
rescue OpenapiClient::ApiError => e
  puts "Error when calling ExternalMetricsApi->v1_externalmetrics_asset_history_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **metric_id** | **String** | Metric identifier (e.g., &#x60;TVL&#x60;, &#x60;STABLES_BRIDGED_USD&#x60; - internal metric key) |  |
| **asset_id** | **String** | Asset identifier (e.g., &#x60;USDC&#x60;, &#x60;USDT&#x60; - from supported assets list) |  |
| **time_start** | **Time** | Starting time in ISO 8601 | [optional] |
| **time_end** | **Time** | Ending time in ISO 8601 | [optional] |
| **time_format** | **String** | If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec) | [optional] |
| **period_id** | **String** | Identifier of requested timeseries period (e.g. &#x60;1MIN&#x60; or &#x60;2MTH&#x60;), default value is &#x60;1MIN&#x60; | [optional] |
| **limit** | **Integer** | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional][default to 100] |

### Return type

**Array&lt;Object&gt;**

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack


## v1_externalmetrics_asset_listing_get

> <Array<V1MetricInfo>> v1_externalmetrics_asset_listing_get(asset_id)

Listing of metrics available for specific asset

Get all metrics that are actually available for the specified asset from external providers.

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

api_instance = OpenapiClient::ExternalMetricsApi.new
asset_id = 'asset_id_example' # String | Asset identifier (e.g., USDC, USDT)

begin
  # Listing of metrics available for specific asset
  result = api_instance.v1_externalmetrics_asset_listing_get(asset_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ExternalMetricsApi->v1_externalmetrics_asset_listing_get: #{e}"
end
```

#### Using the v1_externalmetrics_asset_listing_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<V1MetricInfo>>, Integer, Hash)> v1_externalmetrics_asset_listing_get_with_http_info(asset_id)

```ruby
begin
  # Listing of metrics available for specific asset
  data, status_code, headers = api_instance.v1_externalmetrics_asset_listing_get_with_http_info(asset_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<V1MetricInfo>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ExternalMetricsApi->v1_externalmetrics_asset_listing_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **asset_id** | **String** | Asset identifier (e.g., USDC, USDT) |  |

### Return type

[**Array&lt;V1MetricInfo&gt;**](V1MetricInfo.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack


## v1_externalmetrics_assets_get

> <Array<V1ExternalAsset>> v1_externalmetrics_assets_get

Listing of all supported external assets

Get all assets (primarily stablecoins) supported by external data providers.

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

api_instance = OpenapiClient::ExternalMetricsApi.new

begin
  # Listing of all supported external assets
  result = api_instance.v1_externalmetrics_assets_get
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ExternalMetricsApi->v1_externalmetrics_assets_get: #{e}"
end
```

#### Using the v1_externalmetrics_assets_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<V1ExternalAsset>>, Integer, Hash)> v1_externalmetrics_assets_get_with_http_info

```ruby
begin
  # Listing of all supported external assets
  data, status_code, headers = api_instance.v1_externalmetrics_assets_get_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<V1ExternalAsset>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ExternalMetricsApi->v1_externalmetrics_assets_get_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;V1ExternalAsset&gt;**](V1ExternalAsset.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack


## v1_externalmetrics_chain_history_get

> Array&lt;Object&gt; v1_externalmetrics_chain_history_get(metric_id, chain_id, opts)

Historical metrics for the chain from external sources

Get chain metrics history from external data providers. Data is typically aggregated daily.

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

api_instance = OpenapiClient::ExternalMetricsApi.new
metric_id = 'metric_id_example' # String | Metric identifier (e.g., `TVL`, `STABLES_BRIDGED_USD` - internal metric key)
chain_id = 'chain_id_example' # String | Chain identifier (e.g., `Ethereum`, `Arbitrum` - from supported chains list)
opts = {
  time_start: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Starting time in ISO 8601
  time_end: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Ending time in ISO 8601
  time_format: 'time_format_example', # String | If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec)
  period_id: 'period_id_example', # String | Identifier of requested timeseries period (e.g. `1MIN` or `2MTH`), default value is `1MIN`
  limit: 56 # Integer | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
}

begin
  # Historical metrics for the chain from external sources
  result = api_instance.v1_externalmetrics_chain_history_get(metric_id, chain_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ExternalMetricsApi->v1_externalmetrics_chain_history_get: #{e}"
end
```

#### Using the v1_externalmetrics_chain_history_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Array&lt;Object&gt;, Integer, Hash)> v1_externalmetrics_chain_history_get_with_http_info(metric_id, chain_id, opts)

```ruby
begin
  # Historical metrics for the chain from external sources
  data, status_code, headers = api_instance.v1_externalmetrics_chain_history_get_with_http_info(metric_id, chain_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Array&lt;Object&gt;
rescue OpenapiClient::ApiError => e
  puts "Error when calling ExternalMetricsApi->v1_externalmetrics_chain_history_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **metric_id** | **String** | Metric identifier (e.g., &#x60;TVL&#x60;, &#x60;STABLES_BRIDGED_USD&#x60; - internal metric key) |  |
| **chain_id** | **String** | Chain identifier (e.g., &#x60;Ethereum&#x60;, &#x60;Arbitrum&#x60; - from supported chains list) |  |
| **time_start** | **Time** | Starting time in ISO 8601 | [optional] |
| **time_end** | **Time** | Ending time in ISO 8601 | [optional] |
| **time_format** | **String** | If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec) | [optional] |
| **period_id** | **String** | Identifier of requested timeseries period (e.g. &#x60;1MIN&#x60; or &#x60;2MTH&#x60;), default value is &#x60;1MIN&#x60; | [optional] |
| **limit** | **Integer** | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional][default to 100] |

### Return type

**Array&lt;Object&gt;**

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack


## v1_externalmetrics_chain_listing_get

> <Array<V1MetricInfo>> v1_externalmetrics_chain_listing_get(chain_id)

Listing of metrics available for specific chain

Get all metrics that are actually available for the specified blockchain chain from external providers.

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

api_instance = OpenapiClient::ExternalMetricsApi.new
chain_id = 'chain_id_example' # String | Chain identifier (e.g., ETHEREUM, ARBITRUM)

begin
  # Listing of metrics available for specific chain
  result = api_instance.v1_externalmetrics_chain_listing_get(chain_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ExternalMetricsApi->v1_externalmetrics_chain_listing_get: #{e}"
end
```

#### Using the v1_externalmetrics_chain_listing_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<V1MetricInfo>>, Integer, Hash)> v1_externalmetrics_chain_listing_get_with_http_info(chain_id)

```ruby
begin
  # Listing of metrics available for specific chain
  data, status_code, headers = api_instance.v1_externalmetrics_chain_listing_get_with_http_info(chain_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<V1MetricInfo>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ExternalMetricsApi->v1_externalmetrics_chain_listing_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **chain_id** | **String** | Chain identifier (e.g., ETHEREUM, ARBITRUM) |  |

### Return type

[**Array&lt;V1MetricInfo&gt;**](V1MetricInfo.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack


## v1_externalmetrics_chains_get

> <Array<V1Chain>> v1_externalmetrics_chains_get

Listing of all supported external chains

Get all blockchain chains supported by external data providers.

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

api_instance = OpenapiClient::ExternalMetricsApi.new

begin
  # Listing of all supported external chains
  result = api_instance.v1_externalmetrics_chains_get
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ExternalMetricsApi->v1_externalmetrics_chains_get: #{e}"
end
```

#### Using the v1_externalmetrics_chains_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<V1Chain>>, Integer, Hash)> v1_externalmetrics_chains_get_with_http_info

```ruby
begin
  # Listing of all supported external chains
  data, status_code, headers = api_instance.v1_externalmetrics_chains_get_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<V1Chain>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ExternalMetricsApi->v1_externalmetrics_chains_get_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;V1Chain&gt;**](V1Chain.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack


## v1_externalmetrics_exchange_history_get

> Array&lt;Object&gt; v1_externalmetrics_exchange_history_get(metric_id, exchange_id, opts)

Historical metrics for the exchange from both external and internal sources

Get exchange metrics history from external data providers or internal sources based on metric type.

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

api_instance = OpenapiClient::ExternalMetricsApi.new
metric_id = 'metric_id_example' # String | Metric identifier (e.g., `TVL`, `STABLES_BRIDGED_USD` for external, or generic metric IDs)
exchange_id = 'exchange_id_example' # String | Exchange identifier (e.g., `BINANCE`, `UNISWAP-V3-ETHEREUM`)
opts = {
  time_start: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Starting time in ISO 8601
  time_end: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Ending time in ISO 8601
  time_format: 'time_format_example', # String | If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec)
  period_id: 'period_id_example', # String | Identifier of requested timeseries period (e.g. `1MIN` or `2MTH`), default value is `1MIN`
  limit: 56 # Integer | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
}

begin
  # Historical metrics for the exchange from both external and internal sources
  result = api_instance.v1_externalmetrics_exchange_history_get(metric_id, exchange_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ExternalMetricsApi->v1_externalmetrics_exchange_history_get: #{e}"
end
```

#### Using the v1_externalmetrics_exchange_history_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Array&lt;Object&gt;, Integer, Hash)> v1_externalmetrics_exchange_history_get_with_http_info(metric_id, exchange_id, opts)

```ruby
begin
  # Historical metrics for the exchange from both external and internal sources
  data, status_code, headers = api_instance.v1_externalmetrics_exchange_history_get_with_http_info(metric_id, exchange_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Array&lt;Object&gt;
rescue OpenapiClient::ApiError => e
  puts "Error when calling ExternalMetricsApi->v1_externalmetrics_exchange_history_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **metric_id** | **String** | Metric identifier (e.g., &#x60;TVL&#x60;, &#x60;STABLES_BRIDGED_USD&#x60; for external, or generic metric IDs) |  |
| **exchange_id** | **String** | Exchange identifier (e.g., &#x60;BINANCE&#x60;, &#x60;UNISWAP-V3-ETHEREUM&#x60;) |  |
| **time_start** | **Time** | Starting time in ISO 8601 | [optional] |
| **time_end** | **Time** | Ending time in ISO 8601 | [optional] |
| **time_format** | **String** | If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec) | [optional] |
| **period_id** | **String** | Identifier of requested timeseries period (e.g. &#x60;1MIN&#x60; or &#x60;2MTH&#x60;), default value is &#x60;1MIN&#x60; | [optional] |
| **limit** | **Integer** | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional][default to 100] |

### Return type

**Array&lt;Object&gt;**

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack


## v1_externalmetrics_exchange_listing_get

> <Array<V1MetricInfo>> v1_externalmetrics_exchange_listing_get(exchange_id)

Listing of metrics available for specific exchange (both external and generic)

Get all metrics that are actually available for the specified exchange from both external providers and internal sources.

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

api_instance = OpenapiClient::ExternalMetricsApi.new
exchange_id = 'exchange_id_example' # String | Exchange identifier (e.g., BINANCE, UNISWAP-V3-ETHEREUM)

begin
  # Listing of metrics available for specific exchange (both external and generic)
  result = api_instance.v1_externalmetrics_exchange_listing_get(exchange_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ExternalMetricsApi->v1_externalmetrics_exchange_listing_get: #{e}"
end
```

#### Using the v1_externalmetrics_exchange_listing_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<V1MetricInfo>>, Integer, Hash)> v1_externalmetrics_exchange_listing_get_with_http_info(exchange_id)

```ruby
begin
  # Listing of metrics available for specific exchange (both external and generic)
  data, status_code, headers = api_instance.v1_externalmetrics_exchange_listing_get_with_http_info(exchange_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<V1MetricInfo>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ExternalMetricsApi->v1_externalmetrics_exchange_listing_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **exchange_id** | **String** | Exchange identifier (e.g., BINANCE, UNISWAP-V3-ETHEREUM) |  |

### Return type

[**Array&lt;V1MetricInfo&gt;**](V1MetricInfo.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack


## v1_externalmetrics_exchanges_get

> <Array<V1ExternalExchange>> v1_externalmetrics_exchanges_get

Listing of all supported external exchanges

Get all exchanges that have mapping to external data providers for metrics that actually have sources.  Only returns exchanges that are properly mapped to external protocols for metrics with defined sources.

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

api_instance = OpenapiClient::ExternalMetricsApi.new

begin
  # Listing of all supported external exchanges
  result = api_instance.v1_externalmetrics_exchanges_get
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ExternalMetricsApi->v1_externalmetrics_exchanges_get: #{e}"
end
```

#### Using the v1_externalmetrics_exchanges_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<V1ExternalExchange>>, Integer, Hash)> v1_externalmetrics_exchanges_get_with_http_info

```ruby
begin
  # Listing of all supported external exchanges
  data, status_code, headers = api_instance.v1_externalmetrics_exchanges_get_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<V1ExternalExchange>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ExternalMetricsApi->v1_externalmetrics_exchanges_get_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;V1ExternalExchange&gt;**](V1ExternalExchange.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack


## v1_externalmetrics_listing_get

> <Array<V1MetricInfo>> v1_externalmetrics_listing_get

Listing of all supported metrics (both external and generic)

Get all metrics available from external data providers and internal generic metrics.  External metrics have detailed descriptions, while generic metrics are marked as such.

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

api_instance = OpenapiClient::ExternalMetricsApi.new

begin
  # Listing of all supported metrics (both external and generic)
  result = api_instance.v1_externalmetrics_listing_get
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ExternalMetricsApi->v1_externalmetrics_listing_get: #{e}"
end
```

#### Using the v1_externalmetrics_listing_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<V1MetricInfo>>, Integer, Hash)> v1_externalmetrics_listing_get_with_http_info

```ruby
begin
  # Listing of all supported metrics (both external and generic)
  data, status_code, headers = api_instance.v1_externalmetrics_listing_get_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<V1MetricInfo>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ExternalMetricsApi->v1_externalmetrics_listing_get_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;V1MetricInfo&gt;**](V1MetricInfo.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

