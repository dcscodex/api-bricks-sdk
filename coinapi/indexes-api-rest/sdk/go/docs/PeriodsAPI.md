# \PeriodsAPI

All URIs are relative to *https://rest-api.indexes.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**V1MetadataPeriodsGet**](PeriodsAPI.md#V1MetadataPeriodsGet) | **Get** /v1/metadata/periods | List all periods



## V1MetadataPeriodsGet

> []MetadataTimeseriesPeriod V1MetadataPeriodsGet(ctx).Execute()

List all periods



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

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.PeriodsAPI.V1MetadataPeriodsGet(context.Background()).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `PeriodsAPI.V1MetadataPeriodsGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `V1MetadataPeriodsGet`: []MetadataTimeseriesPeriod
	fmt.Fprintf(os.Stdout, "Response from `PeriodsAPI.V1MetadataPeriodsGet`: %v\n", resp)
}
```

### Path Parameters

This endpoint does not need any parameter.

### Other Parameters

Other parameters are passed through a pointer to a apiV1MetadataPeriodsGetRequest struct via the builder pattern


### Return type

[**[]MetadataTimeseriesPeriod**](MetadataTimeseriesPeriod.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

