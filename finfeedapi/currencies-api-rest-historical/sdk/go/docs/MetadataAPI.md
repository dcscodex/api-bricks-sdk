# \MetadataAPI

All URIs are relative to *https://api-historical.fx.finfeedapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**V1AssetsAssetIdGet**](MetadataAPI.md#V1AssetsAssetIdGet) | **Get** /v1/assets/{asset_id} | List all assets by asset ID
[**V1AssetsGet**](MetadataAPI.md#V1AssetsGet) | **Get** /v1/assets | List all assets
[**V1AssetsIconsSizeGet**](MetadataAPI.md#V1AssetsIconsSizeGet) | **Get** /v1/assets/icons/{size} | List all asset icons



## V1AssetsAssetIdGet

> []V1Asset V1AssetsAssetIdGet(ctx, assetId).Execute()

List all assets by asset ID

### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {
	assetId := "assetId_example" // string | The asset ID.

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.MetadataAPI.V1AssetsAssetIdGet(context.Background(), assetId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `MetadataAPI.V1AssetsAssetIdGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `V1AssetsAssetIdGet`: []V1Asset
	fmt.Fprintf(os.Stdout, "Response from `MetadataAPI.V1AssetsAssetIdGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**assetId** | **string** | The asset ID. | 

### Other Parameters

Other parameters are passed through a pointer to a apiV1AssetsAssetIdGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**[]V1Asset**](V1Asset.md)

### Authorization

[APIKey](../README.md#APIKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## V1AssetsGet

> []V1Asset V1AssetsGet(ctx).FilterAssetId(filterAssetId).Execute()

List all assets



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {
	filterAssetId := "filterAssetId_example" // string | Comma or semicolon delimited asset identifiers used to filter response. (optional, eg. `BTC;ETH`). (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.MetadataAPI.V1AssetsGet(context.Background()).FilterAssetId(filterAssetId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `MetadataAPI.V1AssetsGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `V1AssetsGet`: []V1Asset
	fmt.Fprintf(os.Stdout, "Response from `MetadataAPI.V1AssetsGet`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiV1AssetsGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterAssetId** | **string** | Comma or semicolon delimited asset identifiers used to filter response. (optional, eg. &#x60;BTC;ETH&#x60;). | 

### Return type

[**[]V1Asset**](V1Asset.md)

### Authorization

[APIKey](../README.md#APIKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## V1AssetsIconsSizeGet

> []V1Icon V1AssetsIconsSizeGet(ctx, size).Execute()

List all asset icons



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {
	size := int32(56) // int32 | The size of the icons.

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.MetadataAPI.V1AssetsIconsSizeGet(context.Background(), size).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `MetadataAPI.V1AssetsIconsSizeGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `V1AssetsIconsSizeGet`: []V1Icon
	fmt.Fprintf(os.Stdout, "Response from `MetadataAPI.V1AssetsIconsSizeGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**size** | **int32** | The size of the icons. | 

### Other Parameters

Other parameters are passed through a pointer to a apiV1AssetsIconsSizeGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**[]V1Icon**](V1Icon.md)

### Authorization

[APIKey](../README.md#APIKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

