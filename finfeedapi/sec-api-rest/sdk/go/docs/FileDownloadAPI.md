# \FileDownloadAPI

All URIs are relative to *https://api.sec.finfeedapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**V1DownloadGet**](FileDownloadAPI.md#V1DownloadGet) | **Get** /v1/download | Download file from SEC EDGAR archive



## V1DownloadGet

> V1DownloadGet(ctx).AccessionNo(accessionNo).FileName(fileName).Execute()

Download file from SEC EDGAR archive



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
	accessionNo := "accessionNo_example" // string | SEC filing accession number in format: 0000000000-00-000000
	fileName := "fileName_example" // string | Name of the file to download from the filing

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	r, err := apiClient.FileDownloadAPI.V1DownloadGet(context.Background()).AccessionNo(accessionNo).FileName(fileName).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `FileDownloadAPI.V1DownloadGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiV1DownloadGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accessionNo** | **string** | SEC filing accession number in format: 0000000000-00-000000 | 
 **fileName** | **string** | Name of the file to download from the filing | 

### Return type

 (empty response body)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/octet-stream, text/html, application/xml, text/plain, application/pdf, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

