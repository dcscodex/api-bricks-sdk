# openapi.api.MetadataApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://api-realtime.fx.finfeedapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1AssetsAssetIdGet**](MetadataApi.md#v1assetsassetidget) | **GET** /v1/assets/{asset_id} | List all assets by asset ID
[**v1AssetsGet**](MetadataApi.md#v1assetsget) | **GET** /v1/assets | List all assets
[**v1AssetsIconsSizeGet**](MetadataApi.md#v1assetsiconssizeget) | **GET** /v1/assets/icons/{size} | List all asset icons


# **v1AssetsAssetIdGet**
> List<V1Asset> v1AssetsAssetIdGet(assetId)

List all assets by asset ID

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: APIKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIKey').apiKeyPrefix = 'Bearer';

final api_instance = MetadataApi();
final assetId = assetId_example; // String | The asset ID.

try {
    final result = api_instance.v1AssetsAssetIdGet(assetId);
    print(result);
} catch (e) {
    print('Exception when calling MetadataApi->v1AssetsAssetIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **assetId** | **String**| The asset ID. | 

### Return type

[**List<V1Asset>**](V1Asset.md)

### Authorization

[APIKey](../README.md#APIKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1AssetsGet**
> List<V1Asset> v1AssetsGet(filterAssetId)

List all assets

Retrieves all assets.                :::info  Our asset identifiers are aligned with the ISO 4217 currency codes standard only for fiat money (government or law regulated currency).  :::                :::info  Properties of the output are providing aggregated information from across all symbols related to the specific asset. If you need to calculate your aggregation (e.g., limiting only the particular type of symbols), you should use /v1/symbols endpoint as a data source.  :::

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: APIKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIKey').apiKeyPrefix = 'Bearer';

final api_instance = MetadataApi();
final filterAssetId = filterAssetId_example; // String | Comma or semicolon delimited asset identifiers used to filter response. (optional, eg. `BTC;ETH`).

try {
    final result = api_instance.v1AssetsGet(filterAssetId);
    print(result);
} catch (e) {
    print('Exception when calling MetadataApi->v1AssetsGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterAssetId** | **String**| Comma or semicolon delimited asset identifiers used to filter response. (optional, eg. `BTC;ETH`). | [optional] 

### Return type

[**List<V1Asset>**](V1Asset.md)

### Authorization

[APIKey](../README.md#APIKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1AssetsIconsSizeGet**
> List<V1Icon> v1AssetsIconsSizeGet(size)

List all asset icons

Gets the list of icons (of the given size) for all the assets.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: APIKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIKey').apiKeyPrefix = 'Bearer';

final api_instance = MetadataApi();
final size = 56; // int | The size of the icons.

try {
    final result = api_instance.v1AssetsIconsSizeGet(size);
    print(result);
} catch (e) {
    print('Exception when calling MetadataApi->v1AssetsIconsSizeGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **size** | **int**| The size of the icons. | 

### Return type

[**List<V1Icon>**](V1Icon.md)

### Authorization

[APIKey](../README.md#APIKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

