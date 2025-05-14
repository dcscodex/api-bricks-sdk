# \FullTextSearchAPI

All URIs are relative to *https://api-historical.sec.finfeedapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**V1FullTextGet**](FullTextSearchAPI.md#V1FullTextGet) | **Get** /v1/full-text | Full-text search of SEC filing documents



## V1FullTextGet

> []DTOSecFilingResultDto V1FullTextGet(ctx).FormType(formType).FillingDateStart(fillingDateStart).FillingDateEnd(fillingDateEnd).TextContains(textContains).TextNotContain(textNotContain).PageSize(pageSize).PageNumber(pageNumber).SortBy(sortBy).SortOrder(sortOrder).Execute()

Full-text search of SEC filing documents



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
	formType := "formType_example" // string | Filter by form type (e.g., \"10-K\", \"8-K\"). Multiple values can be comma-separated (optional)
	fillingDateStart := "fillingDateStart_example" // string | Filter by filling date start (inclusive), format YYYY-MM-DD (optional)
	fillingDateEnd := "fillingDateEnd_example" // string | Filter by filling date end (inclusive), format YYYY-MM-DD (optional)
	textContains := "textContains_example" // string | Keywords that the text must contain. Multiple values can be comma-separated (optional)
	textNotContain := "textNotContain_example" // string | Keywords that the text must not contain. Multiple values can be comma-separated (optional)
	pageSize := int32(56) // int32 | Number of results per page (default: 100) (optional)
	pageNumber := int32(56) // int32 | Page number to retrieve (default: 1) (optional)
	sortBy := "sortBy_example" // string | Field to sort by (default: AccessionNumber) (optional) (default to "AccessionNumber")
	sortOrder := "sortOrder_example" // string | Sort order (asc or desc). Defaults to asc (optional) (default to "asc")

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.FullTextSearchAPI.V1FullTextGet(context.Background()).FormType(formType).FillingDateStart(fillingDateStart).FillingDateEnd(fillingDateEnd).TextContains(textContains).TextNotContain(textNotContain).PageSize(pageSize).PageNumber(pageNumber).SortBy(sortBy).SortOrder(sortOrder).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `FullTextSearchAPI.V1FullTextGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `V1FullTextGet`: []DTOSecFilingResultDto
	fmt.Fprintf(os.Stdout, "Response from `FullTextSearchAPI.V1FullTextGet`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiV1FullTextGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **formType** | **string** | Filter by form type (e.g., \&quot;10-K\&quot;, \&quot;8-K\&quot;). Multiple values can be comma-separated | 
 **fillingDateStart** | **string** | Filter by filling date start (inclusive), format YYYY-MM-DD | 
 **fillingDateEnd** | **string** | Filter by filling date end (inclusive), format YYYY-MM-DD | 
 **textContains** | **string** | Keywords that the text must contain. Multiple values can be comma-separated | 
 **textNotContain** | **string** | Keywords that the text must not contain. Multiple values can be comma-separated | 
 **pageSize** | **int32** | Number of results per page (default: 100) | 
 **pageNumber** | **int32** | Page number to retrieve (default: 1) | 
 **sortBy** | **string** | Field to sort by (default: AccessionNumber) | [default to &quot;AccessionNumber&quot;]
 **sortOrder** | **string** | Sort order (asc or desc). Defaults to asc | [default to &quot;asc&quot;]

### Return type

[**[]DTOSecFilingResultDto**](DTOSecFilingResultDto.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

