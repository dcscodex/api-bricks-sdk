# FxRealtimeRestApi.MetadataApi

All URIs are relative to *https://api-realtime.fx.finfeedapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1AssetsAssetIdGet**](MetadataApi.md#v1AssetsAssetIdGet) | **GET** /v1/assets/{asset_id} | List all assets by asset ID
[**v1AssetsGet**](MetadataApi.md#v1AssetsGet) | **GET** /v1/assets | List all assets
[**v1AssetsIconsSizeGet**](MetadataApi.md#v1AssetsIconsSizeGet) | **GET** /v1/assets/icons/{size} | List all asset icons



## v1AssetsAssetIdGet

> [V1Asset] v1AssetsAssetIdGet(assetId)

List all assets by asset ID

### Example

```javascript
import FxRealtimeRestApi from 'fx_realtime_rest_api';
let defaultClient = FxRealtimeRestApi.ApiClient.instance;
// Configure API key authorization: APIKey
let APIKey = defaultClient.authentications['APIKey'];
APIKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//APIKey.apiKeyPrefix = 'Token';

let apiInstance = new FxRealtimeRestApi.MetadataApi();
let assetId = "assetId_example"; // String | The asset ID.
apiInstance.v1AssetsAssetIdGet(assetId, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **assetId** | **String**| The asset ID. | 

### Return type

[**[V1Asset]**](V1Asset.md)

### Authorization

[APIKey](../README.md#APIKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack


## v1AssetsGet

> [V1Asset] v1AssetsGet(opts)

List all assets

Retrieves all assets.                :::info  Our asset identifiers are aligned with the ISO 4217 currency codes standard only for fiat money (government or law regulated currency).  :::                :::info  Properties of the output are providing aggregated information from across all symbols related to the specific asset. If you need to calculate your aggregation (e.g., limiting only the particular type of symbols), you should use /v1/symbols endpoint as a data source.  :::

### Example

```javascript
import FxRealtimeRestApi from 'fx_realtime_rest_api';
let defaultClient = FxRealtimeRestApi.ApiClient.instance;
// Configure API key authorization: APIKey
let APIKey = defaultClient.authentications['APIKey'];
APIKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//APIKey.apiKeyPrefix = 'Token';

let apiInstance = new FxRealtimeRestApi.MetadataApi();
let opts = {
  'filterAssetId': "filterAssetId_example" // String | Comma or semicolon delimited asset identifiers used to filter response. (optional, eg. `BTC;ETH`).
};
apiInstance.v1AssetsGet(opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterAssetId** | **String**| Comma or semicolon delimited asset identifiers used to filter response. (optional, eg. &#x60;BTC;ETH&#x60;). | [optional] 

### Return type

[**[V1Asset]**](V1Asset.md)

### Authorization

[APIKey](../README.md#APIKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack


## v1AssetsIconsSizeGet

> [V1Icon] v1AssetsIconsSizeGet(size)

List all asset icons

Gets the list of icons (of the given size) for all the assets.

### Example

```javascript
import FxRealtimeRestApi from 'fx_realtime_rest_api';
let defaultClient = FxRealtimeRestApi.ApiClient.instance;
// Configure API key authorization: APIKey
let APIKey = defaultClient.authentications['APIKey'];
APIKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//APIKey.apiKeyPrefix = 'Token';

let apiInstance = new FxRealtimeRestApi.MetadataApi();
let size = 56; // Number | The size of the icons.
apiInstance.v1AssetsIconsSizeGet(size, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **size** | **Number**| The size of the icons. | 

### Return type

[**[V1Icon]**](V1Icon.md)

### Authorization

[APIKey](../README.md#APIKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

