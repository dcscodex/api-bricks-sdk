# \FilingMetadataAPI

All URIs are relative to *https://api-historical.sec.finfeedapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**V1FilingsGet**](FilingMetadataAPI.md#V1FilingsGet) | **Get** /v1/filings | Query SEC filing metadata



## V1FilingsGet

> []DTOFilingMetadataDto V1FilingsGet(ctx).Cik(cik).Ticker(ticker).FormType(formType).FillingDateStart(fillingDateStart).FillingDateEnd(fillingDateEnd).ReportDateStart(reportDateStart).ReportDateEnd(reportDateEnd).ItemsContain(itemsContain).PageSize(pageSize).PageNumber(pageNumber).SortBy(sortBy).SortOrder(sortOrder).Execute()

Query SEC filing metadata



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
	cik := int64(789) // int64 | Filter by Central Index Key (CIK) (optional)
	ticker := "ticker_example" // string | Filter by stock ticker symbol (optional)
	formType := "formType_example" // string | Filter by form type(s) (e.g., \"10-K\", \"8-K\"). Multiple values can be comma-separated (optional)
	fillingDateStart := "fillingDateStart_example" // string | Filter by filling date start (inclusive), format YYYY-MM-DD (optional)
	fillingDateEnd := "fillingDateEnd_example" // string | Filter by filling date end (inclusive), format YYYY-MM-DD (optional)
	reportDateStart := "reportDateStart_example" // string | Filter by report date start (inclusive), format YYYY-MM-DD (optional)
	reportDateEnd := "reportDateEnd_example" // string | Filter by report date end (inclusive), format YYYY-MM-DD (optional)
	itemsContain := "itemsContain_example" // string | Filter filings where the 'Items' field contains the specified text (optional)
	pageSize := int32(56) // int32 | Number of results per page (default: 50, max: 200) (optional)
	pageNumber := int32(56) // int32 | Page number to retrieve (default: 1) (optional)
	sortBy := openapiclient.DTO.FilingSortBy("AccessionNumber") // DTOFilingSortBy | Field to sort results by (default: AccessionNumber) (optional)
	sortOrder := "sortOrder_example" // string | Sort order (asc or desc, default: desc) (optional) (default to "desc")

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.FilingMetadataAPI.V1FilingsGet(context.Background()).Cik(cik).Ticker(ticker).FormType(formType).FillingDateStart(fillingDateStart).FillingDateEnd(fillingDateEnd).ReportDateStart(reportDateStart).ReportDateEnd(reportDateEnd).ItemsContain(itemsContain).PageSize(pageSize).PageNumber(pageNumber).SortBy(sortBy).SortOrder(sortOrder).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `FilingMetadataAPI.V1FilingsGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `V1FilingsGet`: []DTOFilingMetadataDto
	fmt.Fprintf(os.Stdout, "Response from `FilingMetadataAPI.V1FilingsGet`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiV1FilingsGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cik** | **int64** | Filter by Central Index Key (CIK) | 
 **ticker** | **string** | Filter by stock ticker symbol | 
 **formType** | **string** | Filter by form type(s) (e.g., \&quot;10-K\&quot;, \&quot;8-K\&quot;). Multiple values can be comma-separated | 
 **fillingDateStart** | **string** | Filter by filling date start (inclusive), format YYYY-MM-DD | 
 **fillingDateEnd** | **string** | Filter by filling date end (inclusive), format YYYY-MM-DD | 
 **reportDateStart** | **string** | Filter by report date start (inclusive), format YYYY-MM-DD | 
 **reportDateEnd** | **string** | Filter by report date end (inclusive), format YYYY-MM-DD | 
 **itemsContain** | **string** | Filter filings where the &#39;Items&#39; field contains the specified text | 
 **pageSize** | **int32** | Number of results per page (default: 50, max: 200) | 
 **pageNumber** | **int32** | Page number to retrieve (default: 1) | 
 **sortBy** | [**DTOFilingSortBy**](DTOFilingSortBy.md) | Field to sort results by (default: AccessionNumber) | 
 **sortOrder** | **string** | Sort order (asc or desc, default: desc) | [default to &quot;desc&quot;]

### Return type

[**[]DTOFilingMetadataDto**](DTOFilingMetadataDto.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

