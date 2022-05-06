# OpenapiClient::AccountApi

All URIs are relative to *https://ems-mgmt-sandbox.coinapi.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_account**](AccountApi.md#delete_account) | **DELETE** /v1/accounts | Delete account |
| [**delete_account_all**](AccountApi.md#delete_account_all) | **DELETE** /v1/accounts/all | Delete all accounts |
| [**get_account**](AccountApi.md#get_account) | **GET** /v1/accounts | Get accounts |
| [**persist_account**](AccountApi.md#persist_account) | **POST** /v1/accounts | Add or update account |


## delete_account

> delete_account(exchange_id)

Delete account

Delete specific exchange account maintained by the EMS API for your subscription.

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

api_instance = OpenapiClient::AccountApi.new
exchange_id = ['inner_example'] # Array<String> | Exchange identifier of the account to delete

begin
  # Delete account
  api_instance.delete_account(exchange_id)
rescue OpenapiClient::ApiError => e
  puts "Error when calling AccountApi->delete_account: #{e}"
end
```

#### Using the delete_account_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_account_with_http_info(exchange_id)

```ruby
begin
  # Delete account
  data, status_code, headers = api_instance.delete_account_with_http_info(exchange_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling AccountApi->delete_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **exchange_id** | [**Array&lt;String&gt;**](String.md) | Exchange identifier of the account to delete |  |

### Return type

nil (empty response body)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader), [APIKeyQueryParam](../README.md#APIKeyQueryParam)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## delete_account_all

> delete_account_all

Delete all accounts

Delete all exchange accounts maintained by the EMS API for your subscription.

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

api_instance = OpenapiClient::AccountApi.new

begin
  # Delete all accounts
  api_instance.delete_account_all
rescue OpenapiClient::ApiError => e
  puts "Error when calling AccountApi->delete_account_all: #{e}"
end
```

#### Using the delete_account_all_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_account_all_with_http_info

```ruby
begin
  # Delete all accounts
  data, status_code, headers = api_instance.delete_account_all_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling AccountApi->delete_account_all_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader), [APIKeyQueryParam](../README.md#APIKeyQueryParam)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_account

> <Array<GetAccount>> get_account(opts)

Get accounts

Get all accounts maintained for your subscription in the EMS API.

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

api_instance = OpenapiClient::AccountApi.new
opts = {
  filter_exchange_id: ['inner_example'] # Array<String> | Exchange id of the specific account to provide single account instead of the list of all accounts
}

begin
  # Get accounts
  result = api_instance.get_account(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling AccountApi->get_account: #{e}"
end
```

#### Using the get_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<GetAccount>>, Integer, Hash)> get_account_with_http_info(opts)

```ruby
begin
  # Get accounts
  data, status_code, headers = api_instance.get_account_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<GetAccount>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling AccountApi->get_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter_exchange_id** | [**Array&lt;String&gt;**](String.md) | Exchange id of the specific account to provide single account instead of the list of all accounts | [optional] |

### Return type

[**Array&lt;GetAccount&gt;**](GetAccount.md)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader), [APIKeyQueryParam](../README.md#APIKeyQueryParam)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## persist_account

> persist_account(body)

Add or update account

Add new or update existing exchange account for your subscription in the EMS API.

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

api_instance = OpenapiClient::AccountApi.new
body = OpenapiClient::AccountData.new # AccountData | Exchange account object that needs to be add/update to the EMS

begin
  # Add or update account
  api_instance.persist_account(body)
rescue OpenapiClient::ApiError => e
  puts "Error when calling AccountApi->persist_account: #{e}"
end
```

#### Using the persist_account_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> persist_account_with_http_info(body)

```ruby
begin
  # Add or update account
  data, status_code, headers = api_instance.persist_account_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling AccountApi->persist_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**AccountData**](AccountData.md) | Exchange account object that needs to be add/update to the EMS |  |

### Return type

nil (empty response body)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader), [APIKeyQueryParam](../README.md#APIKeyQueryParam)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

