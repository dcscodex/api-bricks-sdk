# WWW::OpenAPIClient::MetadataApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::MetadataApi;
```

All URIs are relative to *https://api-historical.stock.finfeedapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1_exchanges_get**](MetadataApi.md#v1_exchanges_get) | **GET** /v1/exchanges | List of exchanges
[**v1_symbols_exchange_id_get**](MetadataApi.md#v1_symbols_exchange_id_get) | **GET** /v1/symbols/{exchange_id} | List of symbols for the exchange


# **v1_exchanges_get**
> ARRAY[FinFeedAPIExchangeModel] v1_exchanges_get()

List of exchanges

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::MetadataApi;
my $api_instance = WWW::OpenAPIClient::MetadataApi->new(
);


eval {
    my $result = $api_instance->v1_exchanges_get();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MetadataApi->v1_exchanges_get: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[FinFeedAPIExchangeModel]**](FinFeedAPIExchangeModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_symbols_exchange_id_get**
> ARRAY[FinFeedAPISymbolModel] v1_symbols_exchange_id_get(exchange_id => $exchange_id)

List of symbols for the exchange

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::MetadataApi;
my $api_instance = WWW::OpenAPIClient::MetadataApi->new(
);

my $exchange_id = "exchange_id_example"; # string | 

eval {
    my $result = $api_instance->v1_symbols_exchange_id_get(exchange_id => $exchange_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MetadataApi->v1_symbols_exchange_id_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchange_id** | **string**|  | 

### Return type

[**ARRAY[FinFeedAPISymbolModel]**](FinFeedAPISymbolModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

