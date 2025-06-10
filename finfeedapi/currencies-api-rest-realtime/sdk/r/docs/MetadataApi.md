# MetadataApi

All URIs are relative to *https://api-realtime.fx.finfeedapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**V1AssetsAssetIdGet**](MetadataApi.md#V1AssetsAssetIdGet) | **GET** /v1/assets/{asset_id} | List all assets by asset ID
[**V1AssetsGet**](MetadataApi.md#V1AssetsGet) | **GET** /v1/assets | List all assets
[**V1AssetsIconsSizeGet**](MetadataApi.md#V1AssetsIconsSizeGet) | **GET** /v1/assets/icons/{size} | List all asset icons


# **V1AssetsAssetIdGet**
> array[V1Asset] V1AssetsAssetIdGet(asset_id)

List all assets by asset ID

### Example
```R
library(openapi)

# List all assets by asset ID
#
# prepare function argument(s)
var_asset_id <- "asset_id_example" # character | The asset ID.

api_instance <- MetadataApi$new()
# Configure API key authorization: APIKey
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
# Configure API key authorization: JWT
# api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$V1AssetsAssetIdGet(var_asset_iddata_file = "result.txt")
result <- api_instance$V1AssetsAssetIdGet(var_asset_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **asset_id** | **character**| The asset ID. | 

### Return type

[**array[V1Asset]**](v1.Asset.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **V1AssetsGet**
> array[V1Asset] V1AssetsGet(filter_asset_id = var.filter_asset_id)

List all assets

Retrieves all assets.              :::info Our asset identifiers are aligned with the ISO 4217 currency codes standard only for fiat money (government or law regulated currency). :::              :::info Properties of the output are providing aggregated information from across all symbols related to the specific asset. If you need to calculate your aggregation (e.g., limiting only the particular type of symbols), you should use /v1/symbols endpoint as a data source. :::

### Example
```R
library(openapi)

# List all assets
#
# prepare function argument(s)
var_filter_asset_id <- "filter_asset_id_example" # character | Comma or semicolon delimited asset identifiers used to filter response. (optional, eg. `BTC;ETH`). (Optional)

api_instance <- MetadataApi$new()
# Configure API key authorization: APIKey
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
# Configure API key authorization: JWT
# api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$V1AssetsGet(filter_asset_id = var_filter_asset_iddata_file = "result.txt")
result <- api_instance$V1AssetsGet(filter_asset_id = var_filter_asset_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_asset_id** | **character**| Comma or semicolon delimited asset identifiers used to filter response. (optional, eg. &#x60;BTC;ETH&#x60;). | [optional] 

### Return type

[**array[V1Asset]**](v1.Asset.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **V1AssetsIconsSizeGet**
> array[V1Icon] V1AssetsIconsSizeGet(size)

List all asset icons

Gets the list of icons (of the given size) for all the assets.

### Example
```R
library(openapi)

# List all asset icons
#
# prepare function argument(s)
var_size <- 56 # integer | The size of the icons.

api_instance <- MetadataApi$new()
# Configure API key authorization: APIKey
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
# Configure API key authorization: JWT
# api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$V1AssetsIconsSizeGet(var_sizedata_file = "result.txt")
result <- api_instance$V1AssetsIconsSizeGet(var_size)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **size** | **integer**| The size of the icons. | 

### Return type

[**array[V1Icon]**](v1.Icon.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

