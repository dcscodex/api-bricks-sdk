# \XBRLConversionAPI

All URIs are relative to *https://api-historical.sec.finfeedapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**V1XbrlConverterGet**](XBRLConversionAPI.md#V1XbrlConverterGet) | **Get** /v1/xbrl-converter | Convert XBRL data to JSON format



## V1XbrlConverterGet

> map[string]interface{} V1XbrlConverterGet(ctx).HtmUrl(htmUrl).XbrlUrl(xbrlUrl).AccessionNo(accessionNo).Execute()

Convert XBRL data to JSON format



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
	htmUrl := "htmUrl_example" // string | URL of the filing ending with .htm or .html (optional)
	xbrlUrl := "xbrlUrl_example" // string | URL of the XBRL file ending with .xml (optional)
	accessionNo := "accessionNo_example" // string | SEC filing accession number (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.XBRLConversionAPI.V1XbrlConverterGet(context.Background()).HtmUrl(htmUrl).XbrlUrl(xbrlUrl).AccessionNo(accessionNo).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `XBRLConversionAPI.V1XbrlConverterGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `V1XbrlConverterGet`: map[string]interface{}
	fmt.Fprintf(os.Stdout, "Response from `XBRLConversionAPI.V1XbrlConverterGet`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiV1XbrlConverterGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **htmUrl** | **string** | URL of the filing ending with .htm or .html | 
 **xbrlUrl** | **string** | URL of the XBRL file ending with .xml | 
 **accessionNo** | **string** | SEC filing accession number | 

### Return type

**map[string]interface{}**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

