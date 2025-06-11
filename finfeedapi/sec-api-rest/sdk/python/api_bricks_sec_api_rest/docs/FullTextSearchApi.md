# api_bricks_sec_api_rest.FullTextSearchApi

All URIs are relative to *https://api.sec.finfeedapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1_full_text_get**](FullTextSearchApi.md#v1_full_text_get) | **GET** /v1/full-text | Full-text search of SEC filing documents


# **v1_full_text_get**
> List[DTOSecFilingResultDto] v1_full_text_get(form_type=form_type, filling_date_start=filling_date_start, filling_date_end=filling_date_end, text_contains=text_contains, text_not_contain=text_not_contain, page_size=page_size, page_number=page_number, sort_by=sort_by, sort_order=sort_order)

Full-text search of SEC filing documents

Search across SEC filing documents with advanced filtering and sorting capabilities.

### Available Sort Fields

Field Name | Description
-----------|-------------
AccessionNumber | SEC filing accession number
FormType | Type of the filing document
FilingDate | Date when filing was submitted
CompanyName | Name of the company
CIK | Central Index Key
DocumentFilename | Name of the filing document
DocumentDescription | Description of the document

### Search Options

Option | Description
--------|-------------
text_contains | Keywords that must appear in the document
text_not_contain | Keywords that must not appear in the document

### Date Format
All dates must be provided in YYYY-MM-DD format

:::tip
Use text_contains and text_not_contain with multiple keywords separated by commas for more precise searches
:::

:::note
The search is case-insensitive and supports partial word matches
:::

### Example

* Api Key Authentication (APIKey):
* Bearer (JWT) Authentication (JWT):

```python
import api_bricks_sec_api_rest
from api_bricks_sec_api_rest.models.dto_sec_filing_result_dto import DTOSecFilingResultDto
from api_bricks_sec_api_rest.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.sec.finfeedapi.com
# See configuration.py for a list of all supported configuration parameters.
configuration = api_bricks_sec_api_rest.Configuration(
    host = "https://api.sec.finfeedapi.com"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: APIKey
configuration.api_key['APIKey'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['APIKey'] = 'Bearer'

# Configure Bearer authorization (JWT): JWT
configuration = api_bricks_sec_api_rest.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with api_bricks_sec_api_rest.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = api_bricks_sec_api_rest.FullTextSearchApi(api_client)
    form_type = 'form_type_example' # str | Filter by form type (e.g., \"10-K\", \"8-K\"). Multiple values can be comma-separated (optional)
    filling_date_start = 'filling_date_start_example' # str | Filter by filling date start (inclusive), format YYYY-MM-DD (optional)
    filling_date_end = 'filling_date_end_example' # str | Filter by filling date end (inclusive), format YYYY-MM-DD (optional)
    text_contains = 'text_contains_example' # str | Keywords that the text must contain. Multiple values can be comma-separated (optional)
    text_not_contain = 'text_not_contain_example' # str | Keywords that the text must not contain. Multiple values can be comma-separated (optional)
    page_size = 56 # int | Number of results per page (default: 100) (optional)
    page_number = 56 # int | Page number to retrieve (default: 1) (optional)
    sort_by = 'AccessionNumber' # str | Field to sort by (default: AccessionNumber) (optional) (default to 'AccessionNumber')
    sort_order = 'asc' # str | Sort order (asc or desc). Defaults to asc (optional) (default to 'asc')

    try:
        # Full-text search of SEC filing documents
        api_response = api_instance.v1_full_text_get(form_type=form_type, filling_date_start=filling_date_start, filling_date_end=filling_date_end, text_contains=text_contains, text_not_contain=text_not_contain, page_size=page_size, page_number=page_number, sort_by=sort_by, sort_order=sort_order)
        print("The response of FullTextSearchApi->v1_full_text_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling FullTextSearchApi->v1_full_text_get: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **form_type** | **str**| Filter by form type (e.g., \&quot;10-K\&quot;, \&quot;8-K\&quot;). Multiple values can be comma-separated | [optional] 
 **filling_date_start** | **str**| Filter by filling date start (inclusive), format YYYY-MM-DD | [optional] 
 **filling_date_end** | **str**| Filter by filling date end (inclusive), format YYYY-MM-DD | [optional] 
 **text_contains** | **str**| Keywords that the text must contain. Multiple values can be comma-separated | [optional] 
 **text_not_contain** | **str**| Keywords that the text must not contain. Multiple values can be comma-separated | [optional] 
 **page_size** | **int**| Number of results per page (default: 100) | [optional] 
 **page_number** | **int**| Page number to retrieve (default: 1) | [optional] 
 **sort_by** | **str**| Field to sort by (default: AccessionNumber) | [optional] [default to &#39;AccessionNumber&#39;]
 **sort_order** | **str**| Sort order (asc or desc). Defaults to asc | [optional] [default to &#39;asc&#39;]

### Return type

[**List[DTOSecFilingResultDto]**](DTOSecFilingResultDto.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successful operation |  -  |
**400** | Invalid request |  -  |
**500** | Server error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

