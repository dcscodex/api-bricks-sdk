# api_bricks_sec_api_rest.ContentExtractionApi

All URIs are relative to *https://api.sec.finfeedapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1_extractor_get**](ContentExtractionApi.md#v1_extractor_get) | **GET** /v1/extractor | Extract and classify SEC filing content
[**v1_extractor_item_get**](ContentExtractionApi.md#v1_extractor_item_get) | **GET** /v1/extractor/item | Extract specific item content from SEC filing


# **v1_extractor_get**
> Dict[str, object] v1_extractor_get(accession_number, type=type)

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


```python
import api_bricks_sec_api_rest
from api_bricks_sec_api_rest.models.dto_extractor_type import DTOExtractorType
from api_bricks_sec_api_rest.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.sec.finfeedapi.com
# See configuration.py for a list of all supported configuration parameters.
configuration = api_bricks_sec_api_rest.Configuration(
    host = "https://api.sec.finfeedapi.com"
)


# Enter a context with an instance of the API client
with api_bricks_sec_api_rest.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = api_bricks_sec_api_rest.ContentExtractionApi(api_client)
    accession_number = 'accession_number_example' # str | The SEC filing accession number used to retrieve the filing from EDGAR database.
    type = api_bricks_sec_api_rest.DTOExtractorType() # DTOExtractorType | Result type (text or html, default: text) (optional)

    try:
        # Extract and classify SEC filing content
        api_response = api_instance.v1_extractor_get(accession_number, type=type)
        print("The response of ContentExtractionApi->v1_extractor_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ContentExtractionApi->v1_extractor_get: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accession_number** | **str**| The SEC filing accession number used to retrieve the filing from EDGAR database. | 
 **type** | [**DTOExtractorType**](.md)| Result type (text or html, default: text) | [optional] 

### Return type

**Dict[str, object]**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successful extraction |  -  |
**400** | Invalid request |  -  |
**404** | Filing not found |  -  |
**500** | Server error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_extractor_item_get**
> str v1_extractor_item_get(accession_number, item_number, type=type)

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


```python
import api_bricks_sec_api_rest
from api_bricks_sec_api_rest.models.dto_extractor_type import DTOExtractorType
from api_bricks_sec_api_rest.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.sec.finfeedapi.com
# See configuration.py for a list of all supported configuration parameters.
configuration = api_bricks_sec_api_rest.Configuration(
    host = "https://api.sec.finfeedapi.com"
)


# Enter a context with an instance of the API client
with api_bricks_sec_api_rest.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = api_bricks_sec_api_rest.ContentExtractionApi(api_client)
    accession_number = 'accession_number_example' # str | The SEC filing accession number used to retrieve the filing from EDGAR database.
    item_number = 'item_number_example' # str | The specific item number to extract (e.g., \"1.01\", \"2.01\", \"7.01\").
    type = api_bricks_sec_api_rest.DTOExtractorType() # DTOExtractorType | Result type (text or html, default: text) (optional)

    try:
        # Extract specific item content from SEC filing
        api_response = api_instance.v1_extractor_item_get(accession_number, item_number, type=type)
        print("The response of ContentExtractionApi->v1_extractor_item_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ContentExtractionApi->v1_extractor_item_get: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accession_number** | **str**| The SEC filing accession number used to retrieve the filing from EDGAR database. | 
 **item_number** | **str**| The specific item number to extract (e.g., \&quot;1.01\&quot;, \&quot;2.01\&quot;, \&quot;7.01\&quot;). | 
 **type** | [**DTOExtractorType**](.md)| Result type (text or html, default: text) | [optional] 

### Return type

**str**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successful extraction |  -  |
**400** | Invalid request |  -  |
**404** | Filing or item not found |  -  |
**500** | Server error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

