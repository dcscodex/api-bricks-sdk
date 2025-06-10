# WWW::OpenAPIClient::MetadataApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::MetadataApi;
```

All URIs are relative to *https://api-realtime.exrates.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1_assets_asset_id_get**](MetadataApi.md#v1_assets_asset_id_get) | **GET** /v1/assets/{asset_id} | List all assets by asset ID
[**v1_assets_get**](MetadataApi.md#v1_assets_get) | **GET** /v1/assets | List all assets
[**v1_assets_icons_size_get**](MetadataApi.md#v1_assets_icons_size_get) | **GET** /v1/assets/icons/{size} | List all asset icons


# **v1_assets_asset_id_get**
> ARRAY[V1Asset] v1_assets_asset_id_get(asset_id => $asset_id)

List all assets by asset ID

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::MetadataApi;
my $api_instance = WWW::OpenAPIClient::MetadataApi->new(

    # Configure API key authorization: APIKey
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
    # Configure API key authorization: JWT
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $asset_id = "asset_id_example"; # string | The asset ID.

eval {
    my $result = $api_instance->v1_assets_asset_id_get(asset_id => $asset_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MetadataApi->v1_assets_asset_id_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **asset_id** | **string**| The asset ID. | 

### Return type

[**ARRAY[V1Asset]**](V1Asset.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_assets_get**
> ARRAY[V1Asset] v1_assets_get(filter_asset_id => $filter_asset_id)

List all assets

Retrieves all assets.              :::info Our asset identifiers are aligned with the ISO 4217 currency codes standard only for fiat money (government or law regulated currency). :::              :::info Properties of the output are providing aggregated information from across all symbols related to the specific asset. If you need to calculate your aggregation (e.g., limiting only the particular type of symbols), you should use /v1/symbols endpoint as a data source. :::

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::MetadataApi;
my $api_instance = WWW::OpenAPIClient::MetadataApi->new(

    # Configure API key authorization: APIKey
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
    # Configure API key authorization: JWT
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $filter_asset_id = "filter_asset_id_example"; # string | Comma or semicolon delimited asset identifiers used to filter response. (optional, eg. `BTC;ETH`).

eval {
    my $result = $api_instance->v1_assets_get(filter_asset_id => $filter_asset_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MetadataApi->v1_assets_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_asset_id** | **string**| Comma or semicolon delimited asset identifiers used to filter response. (optional, eg. &#x60;BTC;ETH&#x60;). | [optional] 

### Return type

[**ARRAY[V1Asset]**](V1Asset.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_assets_icons_size_get**
> ARRAY[V1Icon] v1_assets_icons_size_get(size => $size)

List all asset icons

Gets the list of icons (of the given size) for all the assets.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::MetadataApi;
my $api_instance = WWW::OpenAPIClient::MetadataApi->new(

    # Configure API key authorization: APIKey
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
    # Configure API key authorization: JWT
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $size = 56; # int | The size of the icons.

eval {
    my $result = $api_instance->v1_assets_icons_size_get(size => $size);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MetadataApi->v1_assets_icons_size_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **size** | **int**| The size of the icons. | 

### Return type

[**ARRAY[V1Icon]**](V1Icon.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

