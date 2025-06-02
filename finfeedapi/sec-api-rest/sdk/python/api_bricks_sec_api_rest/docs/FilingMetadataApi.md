# api_bricks_sec_api_rest.FilingMetadataApi

All URIs are relative to *https://api-historical.sec.finfeedapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1_filings_get**](FilingMetadataApi.md#v1_filings_get) | **GET** /v1/filings | Query SEC filing metadata


# **v1_filings_get**
> List[DTOFilingMetadataDto] v1_filings_get(cik=cik, ticker=ticker, form_type=form_type, filling_date_start=filling_date_start, filling_date_end=filling_date_end, report_date_start=report_date_start, report_date_end=report_date_end, items_contain=items_contain, page_size=page_size, page_number=page_number, sort_by=sort_by, sort_order=sort_order)

Query SEC filing metadata

Retrieves metadata for SEC filings based on various filter criteria with pagination and sorting support.

### Available Sort Fields

Field Name | Description
-----------|-------------
AccessionNumber | SEC filing accession number
FilingDate | Date when filing was submitted
AcceptanceDateTime | Date and time of filing acceptance
ReportDate | Date of the report
Size | Size of the filing document

### Date Format
All dates must be provided in YYYY-MM-DD format

### Form Types
Form types can be provided as comma-separated values, e.g.: "10-K,8-K,10-Q"

:::tip
For optimal performance, use date ranges and form types to narrow down your search
:::

### Example


```python
import api_bricks_sec_api_rest
from api_bricks_sec_api_rest.models.dto_filing_metadata_dto import DTOFilingMetadataDto
from api_bricks_sec_api_rest.models.dto_filing_sort_by import DTOFilingSortBy
from api_bricks_sec_api_rest.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api-historical.sec.finfeedapi.com
# See configuration.py for a list of all supported configuration parameters.
configuration = api_bricks_sec_api_rest.Configuration(
    host = "https://api-historical.sec.finfeedapi.com"
)


# Enter a context with an instance of the API client
with api_bricks_sec_api_rest.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = api_bricks_sec_api_rest.FilingMetadataApi(api_client)
    cik = 56 # int | Filter by Central Index Key (CIK) (optional)
    ticker = 'ticker_example' # str | Filter by stock ticker symbol (optional)
    form_type = 'form_type_example' # str | Filter by form type(s) (e.g., \"10-K\", \"8-K\"). Multiple values can be comma-separated (optional)
    filling_date_start = 'filling_date_start_example' # str | Filter by filling date start (inclusive), format YYYY-MM-DD (optional)
    filling_date_end = 'filling_date_end_example' # str | Filter by filling date end (inclusive), format YYYY-MM-DD (optional)
    report_date_start = 'report_date_start_example' # str | Filter by report date start (inclusive), format YYYY-MM-DD (optional)
    report_date_end = 'report_date_end_example' # str | Filter by report date end (inclusive), format YYYY-MM-DD (optional)
    items_contain = 'items_contain_example' # str | Filter filings where the 'Items' field contains the specified text (optional)
    page_size = 56 # int | Number of results per page (default: 50, max: 200) (optional)
    page_number = 56 # int | Page number to retrieve (default: 1) (optional)
    sort_by = api_bricks_sec_api_rest.DTOFilingSortBy() # DTOFilingSortBy | Field to sort results by (default: AccessionNumber) (optional)
    sort_order = 'desc' # str | Sort order (asc or desc, default: desc) (optional) (default to 'desc')

    try:
        # Query SEC filing metadata
        api_response = api_instance.v1_filings_get(cik=cik, ticker=ticker, form_type=form_type, filling_date_start=filling_date_start, filling_date_end=filling_date_end, report_date_start=report_date_start, report_date_end=report_date_end, items_contain=items_contain, page_size=page_size, page_number=page_number, sort_by=sort_by, sort_order=sort_order)
        print("The response of FilingMetadataApi->v1_filings_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling FilingMetadataApi->v1_filings_get: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cik** | **int**| Filter by Central Index Key (CIK) | [optional] 
 **ticker** | **str**| Filter by stock ticker symbol | [optional] 
 **form_type** | **str**| Filter by form type(s) (e.g., \&quot;10-K\&quot;, \&quot;8-K\&quot;). Multiple values can be comma-separated | [optional] 
 **filling_date_start** | **str**| Filter by filling date start (inclusive), format YYYY-MM-DD | [optional] 
 **filling_date_end** | **str**| Filter by filling date end (inclusive), format YYYY-MM-DD | [optional] 
 **report_date_start** | **str**| Filter by report date start (inclusive), format YYYY-MM-DD | [optional] 
 **report_date_end** | **str**| Filter by report date end (inclusive), format YYYY-MM-DD | [optional] 
 **items_contain** | **str**| Filter filings where the &#39;Items&#39; field contains the specified text | [optional] 
 **page_size** | **int**| Number of results per page (default: 50, max: 200) | [optional] 
 **page_number** | **int**| Page number to retrieve (default: 1) | [optional] 
 **sort_by** | [**DTOFilingSortBy**](.md)| Field to sort results by (default: AccessionNumber) | [optional] 
 **sort_order** | **str**| Sort order (asc or desc, default: desc) | [optional] [default to &#39;desc&#39;]

### Return type

[**List[DTOFilingMetadataDto]**](DTOFilingMetadataDto.md)

### Authorization

No authorization required

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

