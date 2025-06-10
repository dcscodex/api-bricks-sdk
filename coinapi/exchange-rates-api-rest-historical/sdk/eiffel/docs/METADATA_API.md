# METADATA_API

All URIs are relative to *https://api-historical.exrates.coinapi.io*

Feature | HTTP request | Description
------------- | ------------- | -------------
[**v1_assets_asset_id_get**](METADATA_API.md#v1_assets_asset_id_get) | **Get** /v1/assets/{asset_id} | List all assets by asset ID
[**v1_assets_get**](METADATA_API.md#v1_assets_get) | **Get** /v1/assets | List all assets
[**v1_assets_icons_size_get**](METADATA_API.md#v1_assets_icons_size_get) | **Get** /v1/assets/icons/{size} | List all asset icons


# **v1_assets_asset_id_get**
> v1_assets_asset_id_get (asset_id: STRING_32 ): detachable LIST [V1_ASSET]


List all assets by asset ID


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **asset_id** | **STRING_32**| The asset ID. | [default to null]

### Return type

[**LIST [V1_ASSET]**](v1.Asset.md)

### Authorization

[APIKey](../README.md#APIKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_assets_get**
> v1_assets_get (filter_asset_id:  detachable STRING_32 ): detachable LIST [V1_ASSET]


List all assets

Retrieves all assets.              :::info Our asset identifiers are aligned with the ISO 4217 currency codes standard only for fiat money (government or law regulated currency). :::              :::info Properties of the output are providing aggregated information from across all symbols related to the specific asset. If you need to calculate your aggregation (e.g., limiting only the particular type of symbols), you should use /v1/symbols endpoint as a data source. :::


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_asset_id** | **STRING_32**| Comma or semicolon delimited asset identifiers used to filter response. (optional, eg. &#x60;BTC;ETH&#x60;). | [optional] [default to null]

### Return type

[**LIST [V1_ASSET]**](v1.Asset.md)

### Authorization

[APIKey](../README.md#APIKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_assets_icons_size_get**
> v1_assets_icons_size_get (size: INTEGER_32 ): detachable LIST [V1_ICON]


List all asset icons

Gets the list of icons (of the given size) for all the assets.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **size** | **INTEGER_32**| The size of the icons. | [default to null]

### Return type

[**LIST [V1_ICON]**](v1.Icon.md)

### Authorization

[APIKey](../README.md#APIKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

