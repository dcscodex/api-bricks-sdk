# CONTENTEXTRACTION_API

All URIs are relative to *https://api-historical.sec.finfeedapi.com*

Feature | HTTP request | Description
------------- | ------------- | -------------
[**v1_extractor_get**](CONTENTEXTRACTION_API.md#v1_extractor_get) | **Get** /v1/extractor | Extract and classify SEC filing content
[**v1_extractor_item_get**](CONTENTEXTRACTION_API.md#v1_extractor_item_get) | **Get** /v1/extractor/item | Extract specific item content from SEC filing


# **v1_extractor_get**
> v1_extractor_get (accession_number: STRING_32 ; type:  detachable DTO_EXTRACTOR_TYPE ): detachable STRING_TABLE [ANY]


Extract and classify SEC filing content

Retrieves filing content from the EDGAR database and intelligently classifies it according to form type and item categories.    ### Supported Form Types    Form Type | Description  ----------|------------  8-K      | Current report filing  10-K     | Annual report filing  10-Q     | Quarterly report filing    ### Content Classification  - 8-K forms: Content classified by item numbers (e.g., 1.01, 2.01)  - 10-K/10-Q forms: Items categorized by their respective part and item structure    :::note  Both HTML and plain text documents are supported for content extraction.  :::


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accession_number** | **STRING_32**| The SEC filing accession number used to retrieve the filing from EDGAR database. | [default to null]
 **type** | [**DTO_EXTRACTOR_TYPE**](.md)| Result type (text or html, default: text) | [optional] [default to null]

### Return type

[**STRING_TABLE [ANY]**](ANY.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_extractor_item_get**
> v1_extractor_item_get (accession_number: STRING_32 ; item_number: STRING_32 ; type:  detachable DTO_EXTRACTOR_TYPE ): detachable STRING_32


Extract specific item content from SEC filing

Retrieves filing content from the EDGAR database and returns only the text content of the specified item number.    ### Item Number Format    Form Type | Item Format Examples  -----------|-------------------  8-K       | 1.01, 2.01, 7.01  10-K      | 1, 2, 3  10-K/10-Q | PartI 1, PartII 2    :::tip  For best results, ensure the item number matches exactly with the filing's structure.  :::


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accession_number** | **STRING_32**| The SEC filing accession number used to retrieve the filing from EDGAR database. | [default to null]
 **item_number** | **STRING_32**| The specific item number to extract (e.g., \&quot;1.01\&quot;, \&quot;2.01\&quot;, \&quot;7.01\&quot;). | [default to null]
 **type** | [**DTO_EXTRACTOR_TYPE**](.md)| Result type (text or html, default: text) | [optional] [default to null]

### Return type

[**STRING_32**](STRING_32.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

