# WWW::OpenAPIClient::OptionsApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::OptionsApi;
```

All URIs are relative to *https://rest.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1_options_exchange_id_current_get**](OptionsApi.md#v1_options_exchange_id_current_get) | **GET** /v1/options/{exchange_id}/current | Current data by Exchange


# **v1_options_exchange_id_current_get**
> ARRAY[OptionsOptionExchangeGroup] v1_options_exchange_id_current_get(exchange_id => $exchange_id)

Current data by Exchange

Get current options data for a specific exchange.  Returns option data grouped by underlying asset, quote currency, and expiration time, with quotes for both calls and puts at each strike price.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::OptionsApi;
my $api_instance = WWW::OpenAPIClient::OptionsApi->new(

    # Configure API key authorization: APIKey
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
    # Configure bearer access token for authorization: JWT
    access_token => 'YOUR_BEARER_TOKEN',
    
);

my $exchange_id = "exchange_id_example"; # string | Exchange identifier (from the Metadata -> Exchanges)

eval {
    my $result = $api_instance->v1_options_exchange_id_current_get(exchange_id => $exchange_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling OptionsApi->v1_options_exchange_id_current_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchange_id** | **string**| Exchange identifier (from the Metadata -&gt; Exchanges) | 

### Return type

[**ARRAY[OptionsOptionExchangeGroup]**](OptionsOptionExchangeGroup.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

