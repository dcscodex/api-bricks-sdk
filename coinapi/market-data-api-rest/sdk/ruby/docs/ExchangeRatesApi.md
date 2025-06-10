# OpenapiClient::ExchangeRatesApi

All URIs are relative to *https://rest.coinapi.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_specific_rate**](ExchangeRatesApi.md#get_specific_rate) | **GET** /v1/exchangerate/{asset_id_base}/{asset_id_quote} | Get specific rate |
| [**v1_exchangerate_asset_id_base_asset_id_quote_history_get**](ExchangeRatesApi.md#v1_exchangerate_asset_id_base_asset_id_quote_history_get) | **GET** /v1/exchangerate/{asset_id_base}/{asset_id_quote}/history | Timeseries data |
| [**v1_exchangerate_asset_id_base_get**](ExchangeRatesApi.md#v1_exchangerate_asset_id_base_get) | **GET** /v1/exchangerate/{asset_id_base} | Get all current rates |
| [**v1_exchangerate_history_periods_get**](ExchangeRatesApi.md#v1_exchangerate_history_periods_get) | **GET** /v1/exchangerate/history/periods | Timeseries periods |


## get_specific_rate

> <V1ExchangeRate> get_specific_rate(asset_id_base, asset_id_quote, opts)

Get specific rate

Retrieves the exchange rate for a specific base and quote asset at a given time or the current rate.                :::info  If you are using an exchange rate for mission-critical operations, then for best reliability, you should measure the difference between current time and the time returned from the response to ensure that value of the difference between those meets your internal requirements.  :::

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

api_instance = OpenapiClient::ExchangeRatesApi.new
asset_id_base = 'asset_id_base_example' # String | Requested exchange rate base asset identifier (from the Metadata -> Assets)
asset_id_quote = 'asset_id_quote_example' # String | Requested exchange rate quote asset identifier (from the Metadata -> Assets)
opts = {
  time: 'time_example' # String | Time at which exchange rate is calculated (optional, if not supplied then current rate is returned)
}

begin
  # Get specific rate
  result = api_instance.get_specific_rate(asset_id_base, asset_id_quote, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ExchangeRatesApi->get_specific_rate: #{e}"
end
```

#### Using the get_specific_rate_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<V1ExchangeRate>, Integer, Hash)> get_specific_rate_with_http_info(asset_id_base, asset_id_quote, opts)

```ruby
begin
  # Get specific rate
  data, status_code, headers = api_instance.get_specific_rate_with_http_info(asset_id_base, asset_id_quote, opts)
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
| **time** | **String** | Time at which exchange rate is calculated (optional, if not supplied then current rate is returned) | [optional] |

### Return type

[**V1ExchangeRate**](V1ExchangeRate.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack


## v1_exchangerate_asset_id_base_asset_id_quote_history_get

> <Array<V1ExchangeRatesTimeseriesItem>> v1_exchangerate_asset_id_base_asset_id_quote_history_get(asset_id_base, asset_id_quote, opts)

Timeseries data

Get the historical exchange rates between two assets in the form of the timeseries.

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

api_instance = OpenapiClient::ExchangeRatesApi.new
asset_id_base = 'asset_id_base_example' # String | Requested exchange rates base asset identifier (from the Metadata -> Assets)
asset_id_quote = 'asset_id_quote_example' # String | Requested exchange rates base asset identifier (from the Metadata -> Assets)
opts = {
  period_id: 'period_id_example', # String | Identifier of requested timeseries period (required, e.g. `5SEC` or `1HRS`)
  time_start: 'time_start_example', # String | Timeseries starting time in ISO 8601 (required)
  time_end: 'time_end_example', # String | Timeseries ending time in ISO 8601 (required)
  limit: 56 # Integer | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
}

begin
  # Timeseries data
  result = api_instance.v1_exchangerate_asset_id_base_asset_id_quote_history_get(asset_id_base, asset_id_quote, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ExchangeRatesApi->v1_exchangerate_asset_id_base_asset_id_quote_history_get: #{e}"
end
```

#### Using the v1_exchangerate_asset_id_base_asset_id_quote_history_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<V1ExchangeRatesTimeseriesItem>>, Integer, Hash)> v1_exchangerate_asset_id_base_asset_id_quote_history_get_with_http_info(asset_id_base, asset_id_quote, opts)

```ruby
begin
  # Timeseries data
  data, status_code, headers = api_instance.v1_exchangerate_asset_id_base_asset_id_quote_history_get_with_http_info(asset_id_base, asset_id_quote, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<V1ExchangeRatesTimeseriesItem>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ExchangeRatesApi->v1_exchangerate_asset_id_base_asset_id_quote_history_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **asset_id_base** | **String** | Requested exchange rates base asset identifier (from the Metadata -&gt; Assets) |  |
| **asset_id_quote** | **String** | Requested exchange rates base asset identifier (from the Metadata -&gt; Assets) |  |
| **period_id** | **String** | Identifier of requested timeseries period (required, e.g. &#x60;5SEC&#x60; or &#x60;1HRS&#x60;) | [optional] |
| **time_start** | **String** | Timeseries starting time in ISO 8601 (required) | [optional] |
| **time_end** | **String** | Timeseries ending time in ISO 8601 (required) | [optional] |
| **limit** | **Integer** | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional][default to 100] |

### Return type

[**Array&lt;V1ExchangeRatesTimeseriesItem&gt;**](V1ExchangeRatesTimeseriesItem.md)

### Authorization

[ApiKey](../README.md#ApiKey)

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
  # Configure API key authorization: ApiKey
  config.api_key['X-CoinAPI-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-CoinAPI-Key'] = 'Bearer'
end

api_instance = OpenapiClient::ExchangeRatesApi.new
asset_id_base = 'asset_id_base_example' # String | Requested exchange rates base asset identifier (from the Metadata -> Assets)
opts = {
  filter_asset_id: 'filter_asset_id_example', # String | Comma or semicolon delimited asset identifiers used to filter response (optional)
  invert: true, # Boolean | True will invert all the rates (optional, if true then rates will be calculated as `rate = 1 / actual_rate` eg. `USD/BTC` as `BTC/USD`)
  time: 'time_example' # String | Time for historical rates (optional)
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
| **time** | **String** | Time for historical rates (optional) | [optional] |

### Return type

[**V1ExchangeRates**](V1ExchangeRates.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack


## v1_exchangerate_history_periods_get

> <Array<V1TimeseriesPeriod>> v1_exchangerate_history_periods_get

Timeseries periods

You can also obtain historical exchange rates of any asset pair, grouped into time periods.  Get full list of supported time periods available for requesting exchange rates historical timeseries data.                ## Timeseries periods  Time unit | Period identifiers  --- | ---  Second | 1SEC, 2SEC, 3SEC, 4SEC, 5SEC, 6SEC, 10SEC, 15SEC, 20SEC, 30SEC  Minute | 1MIN, 2MIN, 3MIN, 4MIN, 5MIN, 6MIN, 10MIN, 15MIN, 20MIN, 30MIN  Hour | 1HRS, 2HRS, 3HRS, 4HRS, 6HRS, 8HRS, 12HRS  Day | 1DAY, 2DAY, 3DAY, 5DAY, 7DAY, 10DAY

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

api_instance = OpenapiClient::ExchangeRatesApi.new

begin
  # Timeseries periods
  result = api_instance.v1_exchangerate_history_periods_get
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ExchangeRatesApi->v1_exchangerate_history_periods_get: #{e}"
end
```

#### Using the v1_exchangerate_history_periods_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<V1TimeseriesPeriod>>, Integer, Hash)> v1_exchangerate_history_periods_get_with_http_info

```ruby
begin
  # Timeseries periods
  data, status_code, headers = api_instance.v1_exchangerate_history_periods_get_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<V1TimeseriesPeriod>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ExchangeRatesApi->v1_exchangerate_history_periods_get_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;V1TimeseriesPeriod&gt;**](V1TimeseriesPeriod.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

