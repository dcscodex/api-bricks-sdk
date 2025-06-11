# \ContentExtractionAPI

All URIs are relative to *https://api.sec.finfeedapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**V1ExtractorGet**](ContentExtractionAPI.md#V1ExtractorGet) | **Get** /v1/extractor | Extract and classify SEC filing content
[**V1ExtractorItemGet**](ContentExtractionAPI.md#V1ExtractorItemGet) | **Get** /v1/extractor/item | Extract specific item content from SEC filing



## V1ExtractorGet

> map[string]interface{} V1ExtractorGet(ctx).AccessionNumber(accessionNumber).Type_(type_).Execute()

Extract and classify SEC filing content



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
	accessionNumber := "accessionNumber_example" // string | The SEC filing accession number used to retrieve the filing from EDGAR database.
	type_ := openapiclient.DTO.ExtractorType("text") // DTOExtractorType | Result type (text or html, default: text) (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.ContentExtractionAPI.V1ExtractorGet(context.Background()).AccessionNumber(accessionNumber).Type_(type_).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ContentExtractionAPI.V1ExtractorGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `V1ExtractorGet`: map[string]interface{}
	fmt.Fprintf(os.Stdout, "Response from `ContentExtractionAPI.V1ExtractorGet`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiV1ExtractorGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accessionNumber** | **string** | The SEC filing accession number used to retrieve the filing from EDGAR database. | 
 **type_** | [**DTOExtractorType**](DTOExtractorType.md) | Result type (text or html, default: text) | 

### Return type

**map[string]interface{}**

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## V1ExtractorItemGet

> string V1ExtractorItemGet(ctx).AccessionNumber(accessionNumber).ItemNumber(itemNumber).Type_(type_).Execute()

Extract specific item content from SEC filing



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
	accessionNumber := "accessionNumber_example" // string | The SEC filing accession number used to retrieve the filing from EDGAR database.
	itemNumber := "itemNumber_example" // string | The specific item number to extract (e.g., \"1.01\", \"2.01\", \"7.01\").
	type_ := openapiclient.DTO.ExtractorType("text") // DTOExtractorType | Result type (text or html, default: text) (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.ContentExtractionAPI.V1ExtractorItemGet(context.Background()).AccessionNumber(accessionNumber).ItemNumber(itemNumber).Type_(type_).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ContentExtractionAPI.V1ExtractorItemGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `V1ExtractorItemGet`: string
	fmt.Fprintf(os.Stdout, "Response from `ContentExtractionAPI.V1ExtractorItemGet`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiV1ExtractorItemGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accessionNumber** | **string** | The SEC filing accession number used to retrieve the filing from EDGAR database. | 
 **itemNumber** | **string** | The specific item number to extract (e.g., \&quot;1.01\&quot;, \&quot;2.01\&quot;, \&quot;7.01\&quot;). | 
 **type_** | [**DTOExtractorType**](DTOExtractorType.md) | Result type (text or html, default: text) | 

### Return type

**string**

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

