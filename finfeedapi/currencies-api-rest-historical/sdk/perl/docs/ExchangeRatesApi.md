# WWW::OpenAPIClient::ExchangeRatesApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::ExchangeRatesApi;
```

All URIs are relative to *https://api-historical.fx.finfeedapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_specific_rate**](ExchangeRatesApi.md#get_specific_rate) | **GET** /v1/exchangerate/{asset_id_base}/{asset_id_quote} | Get specific rate
[**v1_exchangerate_asset_id_base_asset_id_quote_history_get**](ExchangeRatesApi.md#v1_exchangerate_asset_id_base_asset_id_quote_history_get) | **GET** /v1/exchangerate/{asset_id_base}/{asset_id_quote}/history | Timeseries data
[**v1_exchangerate_asset_id_base_get**](ExchangeRatesApi.md#v1_exchangerate_asset_id_base_get) | **GET** /v1/exchangerate/{asset_id_base} | Get all current rates
[**v1_exchangerate_history_periods_get**](ExchangeRatesApi.md#v1_exchangerate_history_periods_get) | **GET** /v1/exchangerate/history/periods | Timeseries periods


# **get_specific_rate**
> V1ExchangeRate get_specific_rate(asset_id_base => $asset_id_base, asset_id_quote => $asset_id_quote, time => $time)

Get specific rate

Retrieves the exchange rate for a specific base and quote asset at a given time or the current rate.                :::info  If you are using an exchange rate for mission-critical operations, then for best reliability, you should measure the difference between current time and the time returned from the response to ensure that value of the difference between those meets your internal requirements.  :::

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::ExchangeRatesApi;
my $api_instance = WWW::OpenAPIClient::ExchangeRatesApi->new(

    # Configure API key authorization: APIKey
    api_key => {'X-CoinAPI-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'X-CoinAPI-Key' => 'Bearer'},
);

my $asset_id_base = "asset_id_base_example"; # string | Requested exchange rate base asset identifier (from the Metadata -> Assets)
my $asset_id_quote = "asset_id_quote_example"; # string | Requested exchange rate quote asset identifier (from the Metadata -> Assets)
my $time = "time_example"; # string | Time at which exchange rate is calculated (optional, if not supplied then current rate is returned)

eval {
    my $result = $api_instance->get_specific_rate(asset_id_base => $asset_id_base, asset_id_quote => $asset_id_quote, time => $time);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ExchangeRatesApi->get_specific_rate: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **asset_id_base** | **string**| Requested exchange rate base asset identifier (from the Metadata -&gt; Assets) | 
 **asset_id_quote** | **string**| Requested exchange rate quote asset identifier (from the Metadata -&gt; Assets) | 
 **time** | **string**| Time at which exchange rate is calculated (optional, if not supplied then current rate is returned) | [optional] 

### Return type

[**V1ExchangeRate**](V1ExchangeRate.md)

### Authorization

[APIKey](../README.md#APIKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_exchangerate_asset_id_base_asset_id_quote_history_get**
> ARRAY[V1ExchangeRatesTimeseriesItem] v1_exchangerate_asset_id_base_asset_id_quote_history_get(asset_id_base => $asset_id_base, asset_id_quote => $asset_id_quote, period_id => $period_id, time_start => $time_start, time_end => $time_end, limit => $limit)

Timeseries data

Get the historical exchange rates between two assets in the form of the timeseries.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::ExchangeRatesApi;
my $api_instance = WWW::OpenAPIClient::ExchangeRatesApi->new(

    # Configure API key authorization: APIKey
    api_key => {'X-CoinAPI-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'X-CoinAPI-Key' => 'Bearer'},
);

my $asset_id_base = "asset_id_base_example"; # string | Requested exchange rates base asset identifier (from the Metadata -> Assets)
my $asset_id_quote = "asset_id_quote_example"; # string | Requested exchange rates base asset identifier (from the Metadata -> Assets)
my $period_id = "period_id_example"; # string | Identifier of requested timeseries period (required, e.g. `5SEC` or `1HRS`)
my $time_start = "time_start_example"; # string | Timeseries starting time in ISO 8601 (required)
my $time_end = "time_end_example"; # string | Timeseries ending time in ISO 8601 (required)
my $limit = 100; # int | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)

eval {
    my $result = $api_instance->v1_exchangerate_asset_id_base_asset_id_quote_history_get(asset_id_base => $asset_id_base, asset_id_quote => $asset_id_quote, period_id => $period_id, time_start => $time_start, time_end => $time_end, limit => $limit);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ExchangeRatesApi->v1_exchangerate_asset_id_base_asset_id_quote_history_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **asset_id_base** | **string**| Requested exchange rates base asset identifier (from the Metadata -&gt; Assets) | 
 **asset_id_quote** | **string**| Requested exchange rates base asset identifier (from the Metadata -&gt; Assets) | 
 **period_id** | **string**| Identifier of requested timeseries period (required, e.g. &#x60;5SEC&#x60; or &#x60;1HRS&#x60;) | [optional] 
 **time_start** | **string**| Timeseries starting time in ISO 8601 (required) | [optional] 
 **time_end** | **string**| Timeseries ending time in ISO 8601 (required) | [optional] 
 **limit** | **int**| Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]

### Return type

[**ARRAY[V1ExchangeRatesTimeseriesItem]**](V1ExchangeRatesTimeseriesItem.md)

### Authorization

[APIKey](../README.md#APIKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_exchangerate_asset_id_base_get**
> V1ExchangeRates v1_exchangerate_asset_id_base_get(asset_id_base => $asset_id_base, filter_asset_id => $filter_asset_id, invert => $invert, time => $time)

Get all current rates

Get the current exchange rate between requested asset and all other assets.                :::info  If you are using an exchange rate for mission-critical operations, then for best reliability, you should measure the difference between current time and the time returned from the response to ensure that value of the difference between those meets your internal requirements.  :::                :::info  You can invert the rates by using Y = 1 / X equation, for example BTC/USD = 1 / (USD/BTC);  :::

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::ExchangeRatesApi;
my $api_instance = WWW::OpenAPIClient::ExchangeRatesApi->new(

    # Configure API key authorization: APIKey
    api_key => {'X-CoinAPI-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'X-CoinAPI-Key' => 'Bearer'},
);

my $asset_id_base = "asset_id_base_example"; # string | Requested exchange rates base asset identifier (from the Metadata -> Assets)
my $filter_asset_id = "filter_asset_id_example"; # string | Comma or semicolon delimited asset identifiers used to filter response (optional)
my $invert = false; # boolean | True will invert all the rates (optional, if true then rates will be calculated as `rate = 1 / actual_rate` eg. `USD/BTC` as `BTC/USD`)
my $time = "time_example"; # string | Time for historical rates (optional)

eval {
    my $result = $api_instance->v1_exchangerate_asset_id_base_get(asset_id_base => $asset_id_base, filter_asset_id => $filter_asset_id, invert => $invert, time => $time);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ExchangeRatesApi->v1_exchangerate_asset_id_base_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **asset_id_base** | **string**| Requested exchange rates base asset identifier (from the Metadata -&gt; Assets) | 
 **filter_asset_id** | **string**| Comma or semicolon delimited asset identifiers used to filter response (optional) | [optional] 
 **invert** | **boolean**| True will invert all the rates (optional, if true then rates will be calculated as &#x60;rate &#x3D; 1 / actual_rate&#x60; eg. &#x60;USD/BTC&#x60; as &#x60;BTC/USD&#x60;) | [optional] [default to false]
 **time** | **string**| Time for historical rates (optional) | [optional] 

### Return type

[**V1ExchangeRates**](V1ExchangeRates.md)

### Authorization

[APIKey](../README.md#APIKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_exchangerate_history_periods_get**
> ARRAY[V1TimeseriesPeriod] v1_exchangerate_history_periods_get()

Timeseries periods

You can also obtain historical exchange rates of any asset pair, grouped into time periods.  Get full list of supported time periods available for requesting exchange rates historical timeseries data.                ## Timeseries periods  Time unit | Period identifiers  --- | ---  Second | 1SEC, 2SEC, 3SEC, 4SEC, 5SEC, 6SEC, 10SEC, 15SEC, 20SEC, 30SEC  Minute | 1MIN, 2MIN, 3MIN, 4MIN, 5MIN, 6MIN, 10MIN, 15MIN, 20MIN, 30MIN  Hour | 1HRS, 2HRS, 3HRS, 4HRS, 6HRS, 8HRS, 12HRS  Day | 1DAY, 2DAY, 3DAY, 5DAY, 7DAY, 10DAY

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::ExchangeRatesApi;
my $api_instance = WWW::OpenAPIClient::ExchangeRatesApi->new(

    # Configure API key authorization: APIKey
    api_key => {'X-CoinAPI-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'X-CoinAPI-Key' => 'Bearer'},
);


eval {
    my $result = $api_instance->v1_exchangerate_history_periods_get();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ExchangeRatesApi->v1_exchangerate_history_periods_get: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[V1TimeseriesPeriod]**](V1TimeseriesPeriod.md)

### Authorization

[APIKey](../README.md#APIKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

