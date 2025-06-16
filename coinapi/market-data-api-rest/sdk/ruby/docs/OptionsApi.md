# OpenapiClient::OptionsApi

All URIs are relative to *https://rest.coinapi.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**v1_options_exchange_id_current_get**](OptionsApi.md#v1_options_exchange_id_current_get) | **GET** /v1/options/{exchange_id}/current | Current data by Exchange |


## v1_options_exchange_id_current_get

> <Array<OptionsOptionExchangeGroup>> v1_options_exchange_id_current_get(exchange_id)

Current data by Exchange

Get current options data for a specific exchange.  Returns option data grouped by underlying asset, quote currency, and expiration time, with quotes for both calls and puts at each strike price.

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

api_instance = OpenapiClient::OptionsApi.new
exchange_id = 'exchange_id_example' # String | Exchange identifier (from the Metadata -> Exchanges)

begin
  # Current data by Exchange
  result = api_instance.v1_options_exchange_id_current_get(exchange_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling OptionsApi->v1_options_exchange_id_current_get: #{e}"
end
```

#### Using the v1_options_exchange_id_current_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<OptionsOptionExchangeGroup>>, Integer, Hash)> v1_options_exchange_id_current_get_with_http_info(exchange_id)

```ruby
begin
  # Current data by Exchange
  data, status_code, headers = api_instance.v1_options_exchange_id_current_get_with_http_info(exchange_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<OptionsOptionExchangeGroup>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling OptionsApi->v1_options_exchange_id_current_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **exchange_id** | **String** | Exchange identifier (from the Metadata -&gt; Exchanges) |  |

### Return type

[**Array&lt;OptionsOptionExchangeGroup&gt;**](OptionsOptionExchangeGroup.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

