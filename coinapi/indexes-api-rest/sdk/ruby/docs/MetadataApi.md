# OpenapiClient::MetadataApi

All URIs are relative to *https://rest-api.indexes.coinapi.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**api_metadata_exchanges_exchange_id_get**](MetadataApi.md#api_metadata_exchanges_exchange_id_get) | **GET** /api/metadata/exchanges/{exchange_id} | List all exchanges by exchange_id |
| [**api_metadata_exchanges_get**](MetadataApi.md#api_metadata_exchanges_get) | **GET** /api/metadata/exchanges | List all exchanges |


## api_metadata_exchanges_exchange_id_get

> <Array<MetadataExchange>> api_metadata_exchanges_exchange_id_get(exchange_id)

List all exchanges by exchange_id

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

api_instance = OpenapiClient::MetadataApi.new
exchange_id = 'exchange_id_example' # String | The ID of the exchange.

begin
  # List all exchanges by exchange_id
  result = api_instance.api_metadata_exchanges_exchange_id_get(exchange_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MetadataApi->api_metadata_exchanges_exchange_id_get: #{e}"
end
```

#### Using the api_metadata_exchanges_exchange_id_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<MetadataExchange>>, Integer, Hash)> api_metadata_exchanges_exchange_id_get_with_http_info(exchange_id)

```ruby
begin
  # List all exchanges by exchange_id
  data, status_code, headers = api_instance.api_metadata_exchanges_exchange_id_get_with_http_info(exchange_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<MetadataExchange>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MetadataApi->api_metadata_exchanges_exchange_id_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **exchange_id** | **String** | The ID of the exchange. |  |

### Return type

[**Array&lt;MetadataExchange&gt;**](MetadataExchange.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack


## api_metadata_exchanges_get

> <Array<MetadataExchange>> api_metadata_exchanges_get(opts)

List all exchanges

Get a detailed list of exchanges provided by the system.                :::info  Properties of the output are providing aggregated information from across all symbols related to the specific exchange. If you need to calculate your aggregation (e.g., limiting only the particular type of symbols), you should use /v1/symbols endpoint as a data source.  :::

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

api_instance = OpenapiClient::MetadataApi.new
opts = {
  filter_exchange_id: 'filter_exchange_id_example' # String | Comma or semicolon delimited exchange identifiers used to filter response. (optional, eg. `BITSTAMP;GEMINI`)
}

begin
  # List all exchanges
  result = api_instance.api_metadata_exchanges_get(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MetadataApi->api_metadata_exchanges_get: #{e}"
end
```

#### Using the api_metadata_exchanges_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<MetadataExchange>>, Integer, Hash)> api_metadata_exchanges_get_with_http_info(opts)

```ruby
begin
  # List all exchanges
  data, status_code, headers = api_instance.api_metadata_exchanges_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<MetadataExchange>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MetadataApi->api_metadata_exchanges_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter_exchange_id** | **String** | Comma or semicolon delimited exchange identifiers used to filter response. (optional, eg. &#x60;BITSTAMP;GEMINI&#x60;) | [optional] |

### Return type

[**Array&lt;MetadataExchange&gt;**](MetadataExchange.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

