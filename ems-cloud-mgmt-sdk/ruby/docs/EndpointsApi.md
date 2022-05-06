# OpenapiClient::EndpointsApi

All URIs are relative to *https://ems-mgmt-sandbox.coinapi.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**endpoints**](EndpointsApi.md#endpoints) | **GET** /v1/endpoints | Get API endpoints |


## endpoints

> <Array<AccountEndpoint>> endpoints(opts)

Get API endpoints

Get all API endpoints that the EMS API expose for your subscription.

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

api_instance = OpenapiClient::EndpointsApi.new
opts = {
  filter_exchange_id: ['inner_example'] # Array<String> | Exchange id
}

begin
  # Get API endpoints
  result = api_instance.endpoints(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling EndpointsApi->endpoints: #{e}"
end
```

#### Using the endpoints_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AccountEndpoint>>, Integer, Hash)> endpoints_with_http_info(opts)

```ruby
begin
  # Get API endpoints
  data, status_code, headers = api_instance.endpoints_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AccountEndpoint>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling EndpointsApi->endpoints_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter_exchange_id** | [**Array&lt;String&gt;**](String.md) | Exchange id | [optional] |

### Return type

[**Array&lt;AccountEndpoint&gt;**](AccountEndpoint.md)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader), [APIKeyQueryParam](../README.md#APIKeyQueryParam)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

