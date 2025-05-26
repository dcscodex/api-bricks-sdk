# ContentExtractionAPI

All URIs are relative to *https://api-historical.sec.finfeedapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ContentExtractionAPI_v1ExtractorGet**](ContentExtractionAPI.md#ContentExtractionAPI_v1ExtractorGet) | **GET** /v1/extractor | Extract and classify SEC filing content
[**ContentExtractionAPI_v1ExtractorItemGet**](ContentExtractionAPI.md#ContentExtractionAPI_v1ExtractorItemGet) | **GET** /v1/extractor/item | Extract specific item content from SEC filing


# **ContentExtractionAPI_v1ExtractorGet**
```c
// Extract and classify SEC filing content
//
// Retrieves filing content from the EDGAR database and intelligently classifies it according to form type and item categories.    ### Supported Form Types    Form Type | Description  ----------|------------  8-K      | Current report filing  10-K     | Annual report filing  10-Q     | Quarterly report filing    ### Content Classification  - 8-K forms: Content classified by item numbers (e.g., 1.01, 2.01)  - 10-K/10-Q forms: Items categorized by their respective part and item structure    :::note  Both HTML and plain text documents are supported for content extraction.  :::
//
list_t*_t* ContentExtractionAPI_v1ExtractorGet(apiClient_t *apiClient, char *accession_number, dto_extractor_type_e type);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**accession_number** | **char \*** | The SEC filing accession number used to retrieve the filing from EDGAR database. | 
**type** | **dto_extractor_type_e** | Result type (text or html, default: text) | [optional] 

### Return type

[list_t*_t](any_type.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ContentExtractionAPI_v1ExtractorItemGet**
```c
// Extract specific item content from SEC filing
//
// Retrieves filing content from the EDGAR database and returns only the text content of the specified item number.    ### Item Number Format    Form Type | Item Format Examples  -----------|-------------------  8-K       | 1.01, 2.01, 7.01  10-K      | 1, 2, 3  10-K/10-Q | PartI 1, PartII 2    :::tip  For best results, ensure the item number matches exactly with the filing's structure.  :::
//
char* ContentExtractionAPI_v1ExtractorItemGet(apiClient_t *apiClient, char *accession_number, char *item_number, dto_extractor_type_e type);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**accession_number** | **char \*** | The SEC filing accession number used to retrieve the filing from EDGAR database. | 
**item_number** | **char \*** | The specific item number to extract (e.g., \&quot;1.01\&quot;, \&quot;2.01\&quot;, \&quot;7.01\&quot;). | 
**type** | **dto_extractor_type_e** | Result type (text or html, default: text) | [optional] 

### Return type

char*



### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

