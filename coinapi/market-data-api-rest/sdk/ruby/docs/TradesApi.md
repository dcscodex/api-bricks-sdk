# OpenapiClient::TradesApi

All URIs are relative to *https://rest.coinapi.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**v1_trades_latest_get**](TradesApi.md#v1_trades_latest_get) | **GET** /v1/trades/latest | Latest data |
| [**v1_trades_symbol_id_history_get**](TradesApi.md#v1_trades_symbol_id_history_get) | **GET** /v1/trades/{symbol_id}/history | Historical data |
| [**v1_trades_symbol_id_latest_get**](TradesApi.md#v1_trades_symbol_id_latest_get) | **GET** /v1/trades/{symbol_id}/latest | Latest data by symbol_id |


## v1_trades_latest_get

> <Array<V1Trade>> v1_trades_latest_get(opts)

Latest data

Get latest trades executed up to 1 minute ago. Latest data is always returned in time descending order.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: APIKey
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Authorization'] = 'Bearer'

  # Configure Bearer authorization (JWT): JWT
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::TradesApi.new
opts = {
  filter_symbol_id: 'filter_symbol_id_example', # String | Comma or semicolon delimited parts of symbol identifier used to filter response. (optional)
  include_id: true, # Boolean | Information that additional exchange trade identifier should be included in the `id_trade` parameter of the trade if exchange providing identifiers.
  limit: 56 # Integer | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
}

begin
  # Latest data
  result = api_instance.v1_trades_latest_get(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling TradesApi->v1_trades_latest_get: #{e}"
end
```

#### Using the v1_trades_latest_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<V1Trade>>, Integer, Hash)> v1_trades_latest_get_with_http_info(opts)

```ruby
begin
  # Latest data
  data, status_code, headers = api_instance.v1_trades_latest_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<V1Trade>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling TradesApi->v1_trades_latest_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter_symbol_id** | **String** | Comma or semicolon delimited parts of symbol identifier used to filter response. (optional) | [optional] |
| **include_id** | **Boolean** | Information that additional exchange trade identifier should be included in the &#x60;id_trade&#x60; parameter of the trade if exchange providing identifiers. | [optional][default to false] |
| **limit** | **Integer** | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional][default to 100] |

### Return type

[**Array&lt;V1Trade&gt;**](V1Trade.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack


## v1_trades_symbol_id_history_get

> <Array<V1Trade>> v1_trades_symbol_id_history_get(symbol_id, opts)

Historical data

Get history transactions from specific symbol, returned in time ascending order.  :::warning The 'time_start' and 'time_end' parameters must be from the same day as this endpoint provides intraday data only for specific day. Please use the 'date' parameter instead for querying data for a specific day without filter. :::

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: APIKey
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Authorization'] = 'Bearer'

  # Configure Bearer authorization (JWT): JWT
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::TradesApi.new
symbol_id = 'symbol_id_example' # String | Symbol identifier for requested timeseries (from the Metadata -> Symbols)
opts = {
  date: 'date_example', # String | Date in ISO 8601, returned data is for the whole given day (required if 'time_start' is not provided)
  time_start: 'time_start_example', # String | Starting time in ISO 8601
  time_end: 'time_end_example', # String | Timeseries ending time in ISO 8601
  limit: 56, # Integer | Amount of items to return (optional, minimum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
  include_id: true # Boolean | Information that additional exchange trade identifier should be included in the `id_trade` parameter of the trade if exchange providing identifiers.
}

begin
  # Historical data
  result = api_instance.v1_trades_symbol_id_history_get(symbol_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling TradesApi->v1_trades_symbol_id_history_get: #{e}"
end
```

#### Using the v1_trades_symbol_id_history_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<V1Trade>>, Integer, Hash)> v1_trades_symbol_id_history_get_with_http_info(symbol_id, opts)

```ruby
begin
  # Historical data
  data, status_code, headers = api_instance.v1_trades_symbol_id_history_get_with_http_info(symbol_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<V1Trade>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling TradesApi->v1_trades_symbol_id_history_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **symbol_id** | **String** | Symbol identifier for requested timeseries (from the Metadata -&gt; Symbols) |  |
| **date** | **String** | Date in ISO 8601, returned data is for the whole given day (required if &#39;time_start&#39; is not provided) | [optional] |
| **time_start** | **String** | Starting time in ISO 8601 | [optional] |
| **time_end** | **String** | Timeseries ending time in ISO 8601 | [optional] |
| **limit** | **Integer** | Amount of items to return (optional, minimum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional][default to 100] |
| **include_id** | **Boolean** | Information that additional exchange trade identifier should be included in the &#x60;id_trade&#x60; parameter of the trade if exchange providing identifiers. | [optional][default to false] |

### Return type

[**Array&lt;V1Trade&gt;**](V1Trade.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack


## v1_trades_symbol_id_latest_get

> <Array<V1Trade>> v1_trades_symbol_id_latest_get(symbol_id, opts)

Latest data by symbol_id

Get latest trades executed up to 1 minute ago. Latest data is always returned in time descending order.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: APIKey
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Authorization'] = 'Bearer'

  # Configure Bearer authorization (JWT): JWT
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::TradesApi.new
symbol_id = 'symbol_id_example' # String | Symbol identifier for requested timeseries (from the Metadata -> Symbols)
opts = {
  limit: 56, # Integer | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
  include_id: true # Boolean | Information that additional exchange trade identifier should be included in the `id_trade` parameter of the trade if exchange providing identifiers.
}

begin
  # Latest data by symbol_id
  result = api_instance.v1_trades_symbol_id_latest_get(symbol_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling TradesApi->v1_trades_symbol_id_latest_get: #{e}"
end
```

#### Using the v1_trades_symbol_id_latest_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<V1Trade>>, Integer, Hash)> v1_trades_symbol_id_latest_get_with_http_info(symbol_id, opts)

```ruby
begin
  # Latest data by symbol_id
  data, status_code, headers = api_instance.v1_trades_symbol_id_latest_get_with_http_info(symbol_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<V1Trade>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling TradesApi->v1_trades_symbol_id_latest_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **symbol_id** | **String** | Symbol identifier for requested timeseries (from the Metadata -&gt; Symbols) |  |
| **limit** | **Integer** | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional][default to 100] |
| **include_id** | **Boolean** | Information that additional exchange trade identifier should be included in the &#x60;id_trade&#x60; parameter of the trade if exchange providing identifiers. | [optional][default to false] |

### Return type

[**Array&lt;V1Trade&gt;**](V1Trade.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

