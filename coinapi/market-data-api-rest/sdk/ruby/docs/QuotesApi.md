# OpenapiClient::QuotesApi

All URIs are relative to *https://rest.coinapi.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**v1_quotes_current_get**](QuotesApi.md#v1_quotes_current_get) | **GET** /v1/quotes/current | Current data |
| [**v1_quotes_latest_get**](QuotesApi.md#v1_quotes_latest_get) | **GET** /v1/quotes/latest | Latest data |
| [**v1_quotes_symbol_id_current_get**](QuotesApi.md#v1_quotes_symbol_id_current_get) | **GET** /v1/quotes/{symbol_id}/current | Current quotes for a specific symbol |
| [**v1_quotes_symbol_id_history_get**](QuotesApi.md#v1_quotes_symbol_id_history_get) | **GET** /v1/quotes/{symbol_id}/history | Historical data |
| [**v1_quotes_symbol_id_latest_get**](QuotesApi.md#v1_quotes_symbol_id_latest_get) | **GET** /v1/quotes/{symbol_id}/latest | Latest quote updates for a specific symbol |


## v1_quotes_current_get

> <Array<V1QuoteTrade>> v1_quotes_current_get(opts)

Current data

Get current quotes for all symbols or for a specific symbol.              :::info When requesting current data for a specific symbol, output is not encapsulated into JSON array as only one item is returned. :::

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

api_instance = OpenapiClient::QuotesApi.new
opts = {
  filter_symbol_id: 'filter_symbol_id_example' # String | Comma or semicolon delimited parts of symbol identifier used to filter response. (optional)
}

begin
  # Current data
  result = api_instance.v1_quotes_current_get(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling QuotesApi->v1_quotes_current_get: #{e}"
end
```

#### Using the v1_quotes_current_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<V1QuoteTrade>>, Integer, Hash)> v1_quotes_current_get_with_http_info(opts)

```ruby
begin
  # Current data
  data, status_code, headers = api_instance.v1_quotes_current_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<V1QuoteTrade>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling QuotesApi->v1_quotes_current_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter_symbol_id** | **String** | Comma or semicolon delimited parts of symbol identifier used to filter response. (optional) | [optional] |

### Return type

[**Array&lt;V1QuoteTrade&gt;**](V1QuoteTrade.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack


## v1_quotes_latest_get

> <Array<V1Quote>> v1_quotes_latest_get(opts)

Latest data

Get latest updates of the quotes up to 1 minute ago. Latest data is always returned in time descending order.

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

api_instance = OpenapiClient::QuotesApi.new
opts = {
  filter_symbol_id: 'filter_symbol_id_example', # String | Comma or semicolon delimited parts of symbol identifier used to filter response. (optional)
  limit: 56 # Integer | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
}

begin
  # Latest data
  result = api_instance.v1_quotes_latest_get(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling QuotesApi->v1_quotes_latest_get: #{e}"
end
```

#### Using the v1_quotes_latest_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<V1Quote>>, Integer, Hash)> v1_quotes_latest_get_with_http_info(opts)

```ruby
begin
  # Latest data
  data, status_code, headers = api_instance.v1_quotes_latest_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<V1Quote>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling QuotesApi->v1_quotes_latest_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter_symbol_id** | **String** | Comma or semicolon delimited parts of symbol identifier used to filter response. (optional) | [optional] |
| **limit** | **Integer** | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional][default to 100] |

### Return type

[**Array&lt;V1Quote&gt;**](V1Quote.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack


## v1_quotes_symbol_id_current_get

> <V1QuoteTrade> v1_quotes_symbol_id_current_get(symbol_id)

Current quotes for a specific symbol

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

api_instance = OpenapiClient::QuotesApi.new
symbol_id = 'symbol_id_example' # String | The symbol identifier (from the Metadata -> Symbols)

begin
  # Current quotes for a specific symbol
  result = api_instance.v1_quotes_symbol_id_current_get(symbol_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling QuotesApi->v1_quotes_symbol_id_current_get: #{e}"
end
```

#### Using the v1_quotes_symbol_id_current_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<V1QuoteTrade>, Integer, Hash)> v1_quotes_symbol_id_current_get_with_http_info(symbol_id)

```ruby
begin
  # Current quotes for a specific symbol
  data, status_code, headers = api_instance.v1_quotes_symbol_id_current_get_with_http_info(symbol_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <V1QuoteTrade>
rescue OpenapiClient::ApiError => e
  puts "Error when calling QuotesApi->v1_quotes_symbol_id_current_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **symbol_id** | **String** | The symbol identifier (from the Metadata -&gt; Symbols) |  |

### Return type

[**V1QuoteTrade**](V1QuoteTrade.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack


## v1_quotes_symbol_id_history_get

> <Array<V1Quote>> v1_quotes_symbol_id_history_get(symbol_id, opts)

Historical data

Get historical quote updates within requested time range, returned in time ascending order.  :::warning The 'time_start' and 'time_end' parameters must be from the same day as this endpoint provides intraday data only for specific day. Please use the 'date' parameter instead for querying data for a specific day without filter. :::

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

api_instance = OpenapiClient::QuotesApi.new
symbol_id = 'symbol_id_example' # String | Symbol identifier for requested timeseries (from the Metadata -> Symbols)
opts = {
  date: 'date_example', # String | Date in ISO 8601, returned data is for the whole given day (preferred method, required if 'time_start' is not provided)
  time_start: 'time_start_example', # String | Starting time in ISO 8601
  time_end: 'time_end_example', # String | Timeseries ending time in ISO 8601
  limit: 56 # Integer | Amount of items to return (optional, minimum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
}

begin
  # Historical data
  result = api_instance.v1_quotes_symbol_id_history_get(symbol_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling QuotesApi->v1_quotes_symbol_id_history_get: #{e}"
end
```

#### Using the v1_quotes_symbol_id_history_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<V1Quote>>, Integer, Hash)> v1_quotes_symbol_id_history_get_with_http_info(symbol_id, opts)

```ruby
begin
  # Historical data
  data, status_code, headers = api_instance.v1_quotes_symbol_id_history_get_with_http_info(symbol_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<V1Quote>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling QuotesApi->v1_quotes_symbol_id_history_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **symbol_id** | **String** | Symbol identifier for requested timeseries (from the Metadata -&gt; Symbols) |  |
| **date** | **String** | Date in ISO 8601, returned data is for the whole given day (preferred method, required if &#39;time_start&#39; is not provided) | [optional] |
| **time_start** | **String** | Starting time in ISO 8601 | [optional] |
| **time_end** | **String** | Timeseries ending time in ISO 8601 | [optional] |
| **limit** | **Integer** | Amount of items to return (optional, minimum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional][default to 100] |

### Return type

[**Array&lt;V1Quote&gt;**](V1Quote.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack


## v1_quotes_symbol_id_latest_get

> <Array<V1Quote>> v1_quotes_symbol_id_latest_get(symbol_id, opts)

Latest quote updates for a specific symbol

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

api_instance = OpenapiClient::QuotesApi.new
symbol_id = 'symbol_id_example' # String | Symbol identifier of requested timeseries (from the Metadata -> Symbols)
opts = {
  limit: 56 # Integer | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
}

begin
  # Latest quote updates for a specific symbol
  result = api_instance.v1_quotes_symbol_id_latest_get(symbol_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling QuotesApi->v1_quotes_symbol_id_latest_get: #{e}"
end
```

#### Using the v1_quotes_symbol_id_latest_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<V1Quote>>, Integer, Hash)> v1_quotes_symbol_id_latest_get_with_http_info(symbol_id, opts)

```ruby
begin
  # Latest quote updates for a specific symbol
  data, status_code, headers = api_instance.v1_quotes_symbol_id_latest_get_with_http_info(symbol_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<V1Quote>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling QuotesApi->v1_quotes_symbol_id_latest_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **symbol_id** | **String** | Symbol identifier of requested timeseries (from the Metadata -&gt; Symbols) |  |
| **limit** | **Integer** | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional][default to 100] |

### Return type

[**Array&lt;V1Quote&gt;**](V1Quote.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

