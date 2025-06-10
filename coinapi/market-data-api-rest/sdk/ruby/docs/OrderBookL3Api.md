# OpenapiClient::OrderBookL3Api

All URIs are relative to *https://rest.coinapi.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**v1_orderbooks3_current_get**](OrderBookL3Api.md#v1_orderbooks3_current_get) | **GET** /v1/orderbooks3/current | Current order books |
| [**v1_orderbooks3_symbol_id_current_get**](OrderBookL3Api.md#v1_orderbooks3_symbol_id_current_get) | **GET** /v1/orderbooks3/{symbol_id}/current | Current order book by symbol_id |


## v1_orderbooks3_current_get

> <Array<V1OrderBookBase>> v1_orderbooks3_current_get(opts)

Current order books

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

api_instance = OpenapiClient::OrderBookL3Api.new
opts = {
  filter_symbol_id: 'filter_symbol_id_example', # String | Comma or semicolon delimited parts of symbol identifier used to filter the response.
  limit_levels: 56 # Integer | The maximum number of levels to include in the response.
}

begin
  # Current order books
  result = api_instance.v1_orderbooks3_current_get(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling OrderBookL3Api->v1_orderbooks3_current_get: #{e}"
end
```

#### Using the v1_orderbooks3_current_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<V1OrderBookBase>>, Integer, Hash)> v1_orderbooks3_current_get_with_http_info(opts)

```ruby
begin
  # Current order books
  data, status_code, headers = api_instance.v1_orderbooks3_current_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<V1OrderBookBase>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling OrderBookL3Api->v1_orderbooks3_current_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter_symbol_id** | **String** | Comma or semicolon delimited parts of symbol identifier used to filter the response. | [optional] |
| **limit_levels** | **Integer** | The maximum number of levels to include in the response. | [optional] |

### Return type

[**Array&lt;V1OrderBookBase&gt;**](V1OrderBookBase.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack


## v1_orderbooks3_symbol_id_current_get

> <V1OrderBookBase> v1_orderbooks3_symbol_id_current_get(symbol_id, opts)

Current order book by symbol_id

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

api_instance = OpenapiClient::OrderBookL3Api.new
symbol_id = 'symbol_id_example' # String | The symbol ID (from the Metadata -> Symbols)
opts = {
  limit_levels: 56 # Integer | The maximum number of levels to include in the response.
}

begin
  # Current order book by symbol_id
  result = api_instance.v1_orderbooks3_symbol_id_current_get(symbol_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling OrderBookL3Api->v1_orderbooks3_symbol_id_current_get: #{e}"
end
```

#### Using the v1_orderbooks3_symbol_id_current_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<V1OrderBookBase>, Integer, Hash)> v1_orderbooks3_symbol_id_current_get_with_http_info(symbol_id, opts)

```ruby
begin
  # Current order book by symbol_id
  data, status_code, headers = api_instance.v1_orderbooks3_symbol_id_current_get_with_http_info(symbol_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <V1OrderBookBase>
rescue OpenapiClient::ApiError => e
  puts "Error when calling OrderBookL3Api->v1_orderbooks3_symbol_id_current_get_with_http_info: #{e}"
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

