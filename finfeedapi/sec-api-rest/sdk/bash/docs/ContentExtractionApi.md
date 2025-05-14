# ContentExtractionApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1ExtractorGet**](ContentExtractionApi.md#v1ExtractorGet) | **GET** /v1/extractor | Extract and classify SEC filing content
[**v1ExtractorItemGet**](ContentExtractionApi.md#v1ExtractorItemGet) | **GET** /v1/extractor/item | Extract specific item content from SEC filing



## v1ExtractorGet

Extract and classify SEC filing content

Retrieves filing content from the EDGAR database and intelligently classifies it according to form type and item categories.

### Supported Form Types

Form Type | Description
----------|------------
8-K      | Current report filing
10-K     | Annual report filing
10-Q     | Quarterly report filing

### Content Classification
- 8-K forms: Content classified by item numbers (e.g., 1.01, 2.01)
- 10-K/10-Q forms: Items categorized by their respective part and item structure

:::note
Both HTML and plain text documents are supported for content extraction.
:::

### Example

```bash
 v1ExtractorGet  accession_number=value  type=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accessionNumber** | **string** | The SEC filing accession number used to retrieve the filing from EDGAR database. | [default to null]
 **type** | [**DTOExtractorType**](.md) | Result type (text or html, default: text) | [optional] [default to null]

### Return type

[**DTOFilingExtractResultDto**](DTOFilingExtractResultDto.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1ExtractorItemGet

Extract specific item content from SEC filing

Retrieves filing content from the EDGAR database and returns only the text content of the specified item number.

### Item Number Format

Form Type | Item Format Examples
-----------|-------------------
8-K       | 1.01, 2.01, 7.01
10-K      | 1, 2, 3
10-K/10-Q | PartI 1, PartII 2

:::tip
For best results, ensure the item number matches exactly with the filing's structure.
:::

### Example

```bash
 v1ExtractorItemGet  accession_number=value  item_number=value  type=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accessionNumber** | **string** | The SEC filing accession number used to retrieve the filing from EDGAR database. | [default to null]
 **itemNumber** | **string** | The specific item number to extract (e.g., \"1.01\", \"2.01\", \"7.01\"). | [default to null]
 **type** | [**DTOExtractorType**](.md) | Result type (text or html, default: text) | [optional] [default to null]

### Return type

**string**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

