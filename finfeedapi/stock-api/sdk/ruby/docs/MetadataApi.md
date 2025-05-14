# OpenapiClient::MetadataApi

All URIs are relative to *https://api-historical.stock.finfeedapi.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**v1_exchanges_get**](MetadataApi.md#v1_exchanges_get) | **GET** /v1/exchanges | List of exchanges |
| [**v1_symbols_exchange_id_get**](MetadataApi.md#v1_symbols_exchange_id_get) | **GET** /v1/symbols/{exchange_id} | List of symbols for the exchange |


## v1_exchanges_get

> <Array<FinFeedAPIExchangeModel>> v1_exchanges_get

List of exchanges

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::MetadataApi.new

begin
  # List of exchanges
  result = api_instance.v1_exchanges_get
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MetadataApi->v1_exchanges_get: #{e}"
end
```

#### Using the v1_exchanges_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<FinFeedAPIExchangeModel>>, Integer, Hash)> v1_exchanges_get_with_http_info

```ruby
begin
  # List of exchanges
  data, status_code, headers = api_instance.v1_exchanges_get_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<FinFeedAPIExchangeModel>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MetadataApi->v1_exchanges_get_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;FinFeedAPIExchangeModel&gt;**](FinFeedAPIExchangeModel.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## v1_symbols_exchange_id_get

> <Array<FinFeedAPISymbolModel>> v1_symbols_exchange_id_get(exchange_id)

List of symbols for the exchange

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::MetadataApi.new
exchange_id = 'exchange_id_example' # String | 

begin
  # List of symbols for the exchange
  result = api_instance.v1_symbols_exchange_id_get(exchange_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MetadataApi->v1_symbols_exchange_id_get: #{e}"
end
```

#### Using the v1_symbols_exchange_id_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<FinFeedAPISymbolModel>>, Integer, Hash)> v1_symbols_exchange_id_get_with_http_info(exchange_id)

```ruby
begin
  # List of symbols for the exchange
  data, status_code, headers = api_instance.v1_symbols_exchange_id_get_with_http_info(exchange_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<FinFeedAPISymbolModel>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MetadataApi->v1_symbols_exchange_id_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **exchange_id** | **String** |  |  |

### Return type

[**Array&lt;FinFeedAPISymbolModel&gt;**](FinFeedAPISymbolModel.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

