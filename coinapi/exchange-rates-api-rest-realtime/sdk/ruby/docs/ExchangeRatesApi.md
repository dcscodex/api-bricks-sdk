# OpenapiClient::ExchangeRatesApi

All URIs are relative to *https://api-realtime.exrates.coinapi.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_specific_rate**](ExchangeRatesApi.md#get_specific_rate) | **GET** /v1/exchangerate/{asset_id_base}/{asset_id_quote} | Get specific rate |
| [**v1_exchangerate_asset_id_base_get**](ExchangeRatesApi.md#v1_exchangerate_asset_id_base_get) | **GET** /v1/exchangerate/{asset_id_base} | Get all current rates |


## get_specific_rate

> <V1ExchangeRate> get_specific_rate(asset_id_base, asset_id_quote)

Get specific rate

Retrieves the exchange rate for a specific base and quote asset at a given time or the current rate.                :::info  If you are using an exchange rate for mission-critical operations, then for best reliability, you should measure the difference between current time and the time returned from the response to ensure that value of the difference between those meets your internal requirements.  :::

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
end

api_instance = OpenapiClient::ExchangeRatesApi.new
asset_id_base = 'asset_id_base_example' # String | Requested exchange rate base asset identifier (from the Metadata -> Assets)
asset_id_quote = 'asset_id_quote_example' # String | Requested exchange rate quote asset identifier (from the Metadata -> Assets)

begin
  # Get specific rate
  result = api_instance.get_specific_rate(asset_id_base, asset_id_quote)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ExchangeRatesApi->get_specific_rate: #{e}"
end
```

#### Using the get_specific_rate_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<V1ExchangeRate>, Integer, Hash)> get_specific_rate_with_http_info(asset_id_base, asset_id_quote)

```ruby
begin
  # Get specific rate
  data, status_code, headers = api_instance.get_specific_rate_with_http_info(asset_id_base, asset_id_quote)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <V1ExchangeRate>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ExchangeRatesApi->get_specific_rate_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **asset_id_base** | **String** | Requested exchange rate base asset identifier (from the Metadata -&gt; Assets) |  |
| **asset_id_quote** | **String** | Requested exchange rate quote asset identifier (from the Metadata -&gt; Assets) |  |

### Return type

[**V1ExchangeRate**](V1ExchangeRate.md)

### Authorization

[APIKey](../README.md#APIKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack


## v1_exchangerate_asset_id_base_get

> <V1ExchangeRates> v1_exchangerate_asset_id_base_get(asset_id_base, opts)

Get all current rates

Get the current exchange rate between requested asset and all other assets.                :::info  If you are using an exchange rate for mission-critical operations, then for best reliability, you should measure the difference between current time and the time returned from the response to ensure that value of the difference between those meets your internal requirements.  :::                :::info  You can invert the rates by using Y = 1 / X equation, for example BTC/USD = 1 / (USD/BTC);  :::

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
end

api_instance = OpenapiClient::ExchangeRatesApi.new
asset_id_base = 'asset_id_base_example' # String | Requested exchange rates base asset identifier (from the Metadata -> Assets)
opts = {
  filter_asset_id: 'filter_asset_id_example', # String | Comma or semicolon delimited asset identifiers used to filter response (optional)
  invert: true # Boolean | True will invert all the rates (optional, if true then rates will be calculated as `rate = 1 / actual_rate` eg. `USD/BTC` as `BTC/USD`)
}

begin
  # Get all current rates
  result = api_instance.v1_exchangerate_asset_id_base_get(asset_id_base, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ExchangeRatesApi->v1_exchangerate_asset_id_base_get: #{e}"
end
```

#### Using the v1_exchangerate_asset_id_base_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<V1ExchangeRates>, Integer, Hash)> v1_exchangerate_asset_id_base_get_with_http_info(asset_id_base, opts)

```ruby
begin
  # Get all current rates
  data, status_code, headers = api_instance.v1_exchangerate_asset_id_base_get_with_http_info(asset_id_base, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <V1ExchangeRates>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ExchangeRatesApi->v1_exchangerate_asset_id_base_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **asset_id_base** | **String** | Requested exchange rates base asset identifier (from the Metadata -&gt; Assets) |  |
| **filter_asset_id** | **String** | Comma or semicolon delimited asset identifiers used to filter response (optional) | [optional] |
| **invert** | **Boolean** | True will invert all the rates (optional, if true then rates will be calculated as &#x60;rate &#x3D; 1 / actual_rate&#x60; eg. &#x60;USD/BTC&#x60; as &#x60;BTC/USD&#x60;) | [optional][default to false] |

### Return type

[**V1ExchangeRates**](V1ExchangeRates.md)

### Authorization

[APIKey](../README.md#APIKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

