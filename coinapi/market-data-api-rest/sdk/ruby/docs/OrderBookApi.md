# OpenapiClient::OrderBookApi

All URIs are relative to *https://rest.coinapi.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**v1_orderbooks_symbol_id_current_get**](OrderBookApi.md#v1_orderbooks_symbol_id_current_get) | **GET** /v1/orderbooks/{symbol_id}/current | Get current order book |
| [**v1_orderbooks_symbol_id_depth_current_get**](OrderBookApi.md#v1_orderbooks_symbol_id_depth_current_get) | **GET** /v1/orderbooks/{symbol_id}/depth/current | Current depth of the order book |
| [**v1_orderbooks_symbol_id_history_get**](OrderBookApi.md#v1_orderbooks_symbol_id_history_get) | **GET** /v1/orderbooks/{symbol_id}/history | Historical data |
| [**v1_orderbooks_symbol_id_latest_get**](OrderBookApi.md#v1_orderbooks_symbol_id_latest_get) | **GET** /v1/orderbooks/{symbol_id}/latest | Latest data |


## v1_orderbooks_symbol_id_current_get

> <V1OrderBookBase> v1_orderbooks_symbol_id_current_get(symbol_id, opts)

Get current order book

Retrieves the current order book for the specified symbol.

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

api_instance = OpenapiClient::OrderBookApi.new
symbol_id = 'symbol_id_example' # String | The symbol ID (from the Metadata -> Symbols)
opts = {
  limit_levels: 56 # Integer | The maximum number of levels to include in the response.
}

begin
  # Get current order book
  result = api_instance.v1_orderbooks_symbol_id_current_get(symbol_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling OrderBookApi->v1_orderbooks_symbol_id_current_get: #{e}"
end
```

#### Using the v1_orderbooks_symbol_id_current_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<V1OrderBookBase>, Integer, Hash)> v1_orderbooks_symbol_id_current_get_with_http_info(symbol_id, opts)

```ruby
begin
  # Get current order book
  data, status_code, headers = api_instance.v1_orderbooks_symbol_id_current_get_with_http_info(symbol_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <V1OrderBookBase>
rescue OpenapiClient::ApiError => e
  puts "Error when calling OrderBookApi->v1_orderbooks_symbol_id_current_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **symbol_id** | **String** | The symbol ID (from the Metadata -&gt; Symbols) |  |
| **limit_levels** | **Integer** | The maximum number of levels to include in the response. | [optional] |

### Return type

[**V1OrderBookBase**](V1OrderBookBase.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack


## v1_orderbooks_symbol_id_depth_current_get

> <V1OrderBookDepth> v1_orderbooks_symbol_id_depth_current_get(symbol_id, opts)

Current depth of the order book

Retrieves the current depth of the order book for the specified symbol.

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

api_instance = OpenapiClient::OrderBookApi.new
symbol_id = 'symbol_id_example' # String | The symbol ID (from the Metadata -> Symbols)
opts = {
  limit_levels: 56 # Integer | The maximum number of levels to include in the response.
}

begin
  # Current depth of the order book
  result = api_instance.v1_orderbooks_symbol_id_depth_current_get(symbol_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling OrderBookApi->v1_orderbooks_symbol_id_depth_current_get: #{e}"
end
```

#### Using the v1_orderbooks_symbol_id_depth_current_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<V1OrderBookDepth>, Integer, Hash)> v1_orderbooks_symbol_id_depth_current_get_with_http_info(symbol_id, opts)

```ruby
begin
  # Current depth of the order book
  data, status_code, headers = api_instance.v1_orderbooks_symbol_id_depth_current_get_with_http_info(symbol_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <V1OrderBookDepth>
rescue OpenapiClient::ApiError => e
  puts "Error when calling OrderBookApi->v1_orderbooks_symbol_id_depth_current_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **symbol_id** | **String** | The symbol ID (from the Metadata -&gt; Symbols) |  |
| **limit_levels** | **Integer** | The maximum number of levels to include in the response. | [optional] |

### Return type

[**V1OrderBookDepth**](V1OrderBookDepth.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack


## v1_orderbooks_symbol_id_history_get

> <Array<V1OrderBook>> v1_orderbooks_symbol_id_history_get(symbol_id, opts)

Historical data

Get historical order book snapshots for a specific symbol within time range, returned in time ascending order.                :::info  The historical order book data via the REST API is currently limited by a number of updates and to the maximum number of 20 levels.  :::    :::warning  The 'time_start' and 'time_end' parameters must be from the same day as this endpoint provides intraday data only for specific day.  Please use the 'date' parameter instead for querying data for a specific day without filter.  :::

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

api_instance = OpenapiClient::OrderBookApi.new
symbol_id = 'symbol_id_example' # String | Symbol identifier for requested timeseries (from the Metadata -> Symbols)
opts = {
  date: 'date_example', # String | Date in ISO 8601, returned data is for the whole given day (preferred method, required if 'time_start' is not provided)
  time_start: 'time_start_example', # String | Starting time in ISO 8601 (deprecated, use 'date' instead)
  time_end: 'time_end_example', # String | Timeseries ending time in ISO 8601 (deprecated, use 'date' instead)
  limit: 56, # Integer | Amount of items to return (optional, minimum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
  limit_levels: 56 # Integer | Maximum amount of levels from each side of the book to include in response (optional)
}

begin
  # Historical data
  result = api_instance.v1_orderbooks_symbol_id_history_get(symbol_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling OrderBookApi->v1_orderbooks_symbol_id_history_get: #{e}"
end
```

#### Using the v1_orderbooks_symbol_id_history_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<V1OrderBook>>, Integer, Hash)> v1_orderbooks_symbol_id_history_get_with_http_info(symbol_id, opts)

```ruby
begin
  # Historical data
  data, status_code, headers = api_instance.v1_orderbooks_symbol_id_history_get_with_http_info(symbol_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<V1OrderBook>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling OrderBookApi->v1_orderbooks_symbol_id_history_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **symbol_id** | **String** | Symbol identifier for requested timeseries (from the Metadata -&gt; Symbols) |  |
| **date** | **String** | Date in ISO 8601, returned data is for the whole given day (preferred method, required if &#39;time_start&#39; is not provided) | [optional] |
| **time_start** | **String** | Starting time in ISO 8601 (deprecated, use &#39;date&#39; instead) | [optional] |
| **time_end** | **String** | Timeseries ending time in ISO 8601 (deprecated, use &#39;date&#39; instead) | [optional] |
| **limit** | **Integer** | Amount of items to return (optional, minimum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional][default to 100] |
| **limit_levels** | **Integer** | Maximum amount of levels from each side of the book to include in response (optional) | [optional] |

### Return type

[**Array&lt;V1OrderBook&gt;**](V1OrderBook.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack


## v1_orderbooks_symbol_id_latest_get

> <Array<V1OrderBook>> v1_orderbooks_symbol_id_latest_get(symbol_id, opts)

Latest data

Get latest order book snapshots for a specific symbol, returned in time descending order.                :::info  The historical order book data via the REST API is currently limited by a number of updates and to the maximum number of 20 levels.  :::

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

api_instance = OpenapiClient::OrderBookApi.new
symbol_id = 'symbol_id_example' # String | Symbol identifier of requested timeseries (from the Metadata -> Symbols)
opts = {
  limit: 56, # Integer | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
  limit_levels: 56 # Integer | Maximum amount of levels from each side of the book to include in response (optional)
}

begin
  # Latest data
  result = api_instance.v1_orderbooks_symbol_id_latest_get(symbol_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling OrderBookApi->v1_orderbooks_symbol_id_latest_get: #{e}"
end
```

#### Using the v1_orderbooks_symbol_id_latest_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<V1OrderBook>>, Integer, Hash)> v1_orderbooks_symbol_id_latest_get_with_http_info(symbol_id, opts)

```ruby
begin
  # Latest data
  data, status_code, headers = api_instance.v1_orderbooks_symbol_id_latest_get_with_http_info(symbol_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<V1OrderBook>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling OrderBookApi->v1_orderbooks_symbol_id_latest_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **symbol_id** | **String** | Symbol identifier of requested timeseries (from the Metadata -&gt; Symbols) |  |
| **limit** | **Integer** | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional][default to 100] |
| **limit_levels** | **Integer** | Maximum amount of levels from each side of the book to include in response (optional) | [optional] |

### Return type

[**Array&lt;V1OrderBook&gt;**](V1OrderBook.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

