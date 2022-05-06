# OpenapiClient::LocationApi

All URIs are relative to *https://ems-mgmt-sandbox.coinapi.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**locations**](LocationApi.md#locations) | **GET** /v1/locations | Get site locations |


## locations

> <Array<Locations>> locations

Get site locations

This endpoint providing information about the server site locations supported in the EMS API.

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

api_instance = OpenapiClient::LocationApi.new

begin
  # Get site locations
  result = api_instance.locations
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling LocationApi->locations: #{e}"
end
```

#### Using the locations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Locations>>, Integer, Hash)> locations_with_http_info

```ruby
begin
  # Get site locations
  data, status_code, headers = api_instance.locations_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Locations>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling LocationApi->locations_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;Locations&gt;**](Locations.md)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader), [APIKeyQueryParam](../README.md#APIKeyQueryParam)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

