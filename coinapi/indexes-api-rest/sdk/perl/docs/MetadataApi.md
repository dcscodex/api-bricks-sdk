# WWW::OpenAPIClient::MetadataApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::MetadataApi;
```

All URIs are relative to *https://rest-api.indexes.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**api_metadata_exchanges_exchange_id_get**](MetadataApi.md#api_metadata_exchanges_exchange_id_get) | **GET** /api/metadata/exchanges/{exchange_id} | List all exchanges by exchange_id
[**api_metadata_exchanges_get**](MetadataApi.md#api_metadata_exchanges_get) | **GET** /api/metadata/exchanges | List all exchanges


# **api_metadata_exchanges_exchange_id_get**
> ARRAY[MetadataExchange] api_metadata_exchanges_exchange_id_get(exchange_id => $exchange_id)

List all exchanges by exchange_id

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::MetadataApi;
my $api_instance = WWW::OpenAPIClient::MetadataApi->new(

    # Configure API key authorization: ApiKey
    api_key => {'X-CoinAPI-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'X-CoinAPI-Key' => 'Bearer'},
);

my $exchange_id = "exchange_id_example"; # string | The ID of the exchange.

eval {
    my $result = $api_instance->api_metadata_exchanges_exchange_id_get(exchange_id => $exchange_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MetadataApi->api_metadata_exchanges_exchange_id_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchange_id** | **string**| The ID of the exchange. | 

### Return type

[**ARRAY[MetadataExchange]**](MetadataExchange.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **api_metadata_exchanges_get**
> ARRAY[MetadataExchange] api_metadata_exchanges_get(filter_exchange_id => $filter_exchange_id)

List all exchanges

Get a detailed list of exchanges provided by the system.                :::info  Properties of the output are providing aggregated information from across all symbols related to the specific exchange. If you need to calculate your aggregation (e.g., limiting only the particular type of symbols), you should use /v1/symbols endpoint as a data source.  :::

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::MetadataApi;
my $api_instance = WWW::OpenAPIClient::MetadataApi->new(

    # Configure API key authorization: ApiKey
    api_key => {'X-CoinAPI-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'X-CoinAPI-Key' => 'Bearer'},
);

my $filter_exchange_id = "filter_exchange_id_example"; # string | Comma or semicolon delimited exchange identifiers used to filter response. (optional, eg. `BITSTAMP;GEMINI`)

eval {
    my $result = $api_instance->api_metadata_exchanges_get(filter_exchange_id => $filter_exchange_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MetadataApi->api_metadata_exchanges_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_exchange_id** | **string**| Comma or semicolon delimited exchange identifiers used to filter response. (optional, eg. &#x60;BITSTAMP;GEMINI&#x60;) | [optional] 

### Return type

[**ARRAY[MetadataExchange]**](MetadataExchange.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

