# OpenapiClient::ExchangeApi

All URIs are relative to *https://ems-mgmt-sandbox.coinapi.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**exchange_login_require**](ExchangeApi.md#exchange_login_require) | **GET** /v1/exchanges | Get exchange configuration |


## exchange_login_require

> <Array<ExchangeLoginRequire>> exchange_login_require

Get exchange configuration

Get information about the required parameters or server site location of the exchanges supported in the EMS API.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: APIKeyHeader
  config.api_key['APIKeyHeader'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['APIKeyHeader'] = 'Bearer'

  # Configure API key authorization: APIKeyQueryParam
  config.api_key['APIKeyQueryParam'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['APIKeyQueryParam'] = 'Bearer'
end

api_instance = OpenapiClient::ExchangeApi.new

begin
  # Get exchange configuration
  result = api_instance.exchange_login_require
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ExchangeApi->exchange_login_require: #{e}"
end
```

#### Using the exchange_login_require_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<ExchangeLoginRequire>>, Integer, Hash)> exchange_login_require_with_http_info

```ruby
begin
  # Get exchange configuration
  data, status_code, headers = api_instance.exchange_login_require_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<ExchangeLoginRequire>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ExchangeApi->exchange_login_require_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;ExchangeLoginRequire&gt;**](ExchangeLoginRequire.md)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader), [APIKeyQueryParam](../README.md#APIKeyQueryParam)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

