# MetadataAPI

All URIs are relative to *https://api-historical.exrates.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**MetadataAPI_v1AssetsAssetIdGet**](MetadataAPI.md#MetadataAPI_v1AssetsAssetIdGet) | **GET** /v1/assets/{asset_id} | List all assets by asset ID
[**MetadataAPI_v1AssetsGet**](MetadataAPI.md#MetadataAPI_v1AssetsGet) | **GET** /v1/assets | List all assets
[**MetadataAPI_v1AssetsIconsSizeGet**](MetadataAPI.md#MetadataAPI_v1AssetsIconsSizeGet) | **GET** /v1/assets/icons/{size} | List all asset icons


# **MetadataAPI_v1AssetsAssetIdGet**
```c
// List all assets by asset ID
//
list_t* MetadataAPI_v1AssetsAssetIdGet(apiClient_t *apiClient, char *asset_id);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**asset_id** | **char \*** | The asset ID. | 

### Return type

[list_t](v1_asset.md) *


### Authorization

[APIKey](../README.md#APIKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **MetadataAPI_v1AssetsGet**
```c
// List all assets
//
// Retrieves all assets.              :::info Our asset identifiers are aligned with the ISO 4217 currency codes standard only for fiat money (government or law regulated currency). :::              :::info Properties of the output are providing aggregated information from across all symbols related to the specific asset. If you need to calculate your aggregation (e.g., limiting only the particular type of symbols), you should use /v1/symbols endpoint as a data source. :::
//
list_t* MetadataAPI_v1AssetsGet(apiClient_t *apiClient, char *filter_asset_id);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**filter_asset_id** | **char \*** | Comma or semicolon delimited asset identifiers used to filter response. (optional, eg. &#x60;BTC;ETH&#x60;). | [optional] 

### Return type

[list_t](v1_asset.md) *


### Authorization

[APIKey](../README.md#APIKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **MetadataAPI_v1AssetsIconsSizeGet**
```c
// List all asset icons
//
// Gets the list of icons (of the given size) for all the assets.
//
list_t* MetadataAPI_v1AssetsIconsSizeGet(apiClient_t *apiClient, int *size);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**size** | **int \*** | The size of the icons. | 

### Return type

[list_t](v1_icon.md) *


### Authorization

[APIKey](../README.md#APIKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

