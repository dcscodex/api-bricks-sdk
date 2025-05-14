# RestApi.ContentExtractionApi

All URIs are relative to *https://api-historical.sec.finfeedapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1ExtractorGet**](ContentExtractionApi.md#v1ExtractorGet) | **GET** /v1/extractor | Extract and classify SEC filing content
[**v1ExtractorItemGet**](ContentExtractionApi.md#v1ExtractorItemGet) | **GET** /v1/extractor/item | Extract specific item content from SEC filing



## v1ExtractorGet

> DTOFilingExtractResultDto v1ExtractorGet(accessionNumber, opts)

Extract and classify SEC filing content

Retrieves filing content from the EDGAR database and intelligently classifies it according to form type and item categories.    ### Supported Form Types    Form Type | Description  ----------|------------  8-K      | Current report filing  10-K     | Annual report filing  10-Q     | Quarterly report filing    ### Content Classification  - 8-K forms: Content classified by item numbers (e.g., 1.01, 2.01)  - 10-K/10-Q forms: Items categorized by their respective part and item structure    :::note  Both HTML and plain text documents are supported for content extraction.  :::

### Example

```javascript
import RestApi from 'rest_api';

let apiInstance = new RestApi.ContentExtractionApi();
let accessionNumber = "accessionNumber_example"; // String | The SEC filing accession number used to retrieve the filing from EDGAR database.
let opts = {
  'type': new RestApi.DTOExtractorType() // DTOExtractorType | Result type (text or html, default: text)
};
apiInstance.v1ExtractorGet(accessionNumber, opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accessionNumber** | **String**| The SEC filing accession number used to retrieve the filing from EDGAR database. | 
 **type** | [**DTOExtractorType**](.md)| Result type (text or html, default: text) | [optional] 

### Return type

[**DTOFilingExtractResultDto**](DTOFilingExtractResultDto.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1ExtractorItemGet

> String v1ExtractorItemGet(accessionNumber, itemNumber, opts)

Extract specific item content from SEC filing

Retrieves filing content from the EDGAR database and returns only the text content of the specified item number.    ### Item Number Format    Form Type | Item Format Examples  -----------|-------------------  8-K       | 1.01, 2.01, 7.01  10-K      | 1, 2, 3  10-K/10-Q | PartI 1, PartII 2    :::tip  For best results, ensure the item number matches exactly with the filing&#39;s structure.  :::

### Example

```javascript
import RestApi from 'rest_api';

let apiInstance = new RestApi.ContentExtractionApi();
let accessionNumber = "accessionNumber_example"; // String | The SEC filing accession number used to retrieve the filing from EDGAR database.
let itemNumber = "itemNumber_example"; // String | The specific item number to extract (e.g., \"1.01\", \"2.01\", \"7.01\").
let opts = {
  'type': new RestApi.DTOExtractorType() // DTOExtractorType | Result type (text or html, default: text)
};
apiInstance.v1ExtractorItemGet(accessionNumber, itemNumber, opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accessionNumber** | **String**| The SEC filing accession number used to retrieve the filing from EDGAR database. | 
 **itemNumber** | **String**| The specific item number to extract (e.g., \&quot;1.01\&quot;, \&quot;2.01\&quot;, \&quot;7.01\&quot;). | 
 **type** | [**DTOExtractorType**](.md)| Result type (text or html, default: text) | [optional] 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

