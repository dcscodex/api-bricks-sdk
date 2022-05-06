# OpenapiClient::CertificateApi

All URIs are relative to *https://ems-mgmt-sandbox.coinapi.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**certificate**](CertificateApi.md#certificate) | **GET** /v1/certificate/pem | Get authentication certificate |


## certificate

> String certificate

Get authentication certificate

Providing PEM file with the Private Key, Public Key and the Certificate to authenticate to the EMS API.

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

api_instance = OpenapiClient::CertificateApi.new

begin
  # Get authentication certificate
  result = api_instance.certificate
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CertificateApi->certificate: #{e}"
end
```

#### Using the certificate_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(String, Integer, Hash)> certificate_with_http_info

```ruby
begin
  # Get authentication certificate
  data, status_code, headers = api_instance.certificate_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => String
rescue OpenapiClient::ApiError => e
  puts "Error when calling CertificateApi->certificate_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**String**

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader), [APIKeyQueryParam](../README.md#APIKeyQueryParam)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain

