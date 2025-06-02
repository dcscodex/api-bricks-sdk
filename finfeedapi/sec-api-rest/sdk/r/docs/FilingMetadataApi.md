# FilingMetadataApi

All URIs are relative to *https://api-historical.sec.finfeedapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**V1FilingsGet**](FilingMetadataApi.md#V1FilingsGet) | **GET** /v1/filings | Query SEC filing metadata


# **V1FilingsGet**
> array[DTOFilingMetadataDto] V1FilingsGet(cik = var.cik, ticker = var.ticker, form_type = var.form_type, filling_date_start = var.filling_date_start, filling_date_end = var.filling_date_end, report_date_start = var.report_date_start, report_date_end = var.report_date_end, items_contain = var.items_contain, page_size = var.page_size, page_number = var.page_number, sort_by = var.sort_by, sort_order = "desc")

Query SEC filing metadata

Retrieves metadata for SEC filings based on various filter criteria with pagination and sorting support.    ### Available Sort Fields    Field Name | Description  -----------|-------------  AccessionNumber | SEC filing accession number  FilingDate | Date when filing was submitted  AcceptanceDateTime | Date and time of filing acceptance  ReportDate | Date of the report  Size | Size of the filing document    ### Date Format  All dates must be provided in YYYY-MM-DD format    ### Form Types  Form types can be provided as comma-separated values, e.g.: \"10-K,8-K,10-Q\"    :::tip  For optimal performance, use date ranges and form types to narrow down your search  :::

### Example
```R
library(openapi)

# Query SEC filing metadata
#
# prepare function argument(s)
var_cik <- 56 # integer | Filter by Central Index Key (CIK) (Optional)
var_ticker <- "ticker_example" # character | Filter by stock ticker symbol (Optional)
var_form_type <- "form_type_example" # character | Filter by form type(s) (e.g., \"10-K\", \"8-K\"). Multiple values can be comma-separated (Optional)
var_filling_date_start <- "filling_date_start_example" # character | Filter by filling date start (inclusive), format YYYY-MM-DD (Optional)
var_filling_date_end <- "filling_date_end_example" # character | Filter by filling date end (inclusive), format YYYY-MM-DD (Optional)
var_report_date_start <- "report_date_start_example" # character | Filter by report date start (inclusive), format YYYY-MM-DD (Optional)
var_report_date_end <- "report_date_end_example" # character | Filter by report date end (inclusive), format YYYY-MM-DD (Optional)
var_items_contain <- "items_contain_example" # character | Filter filings where the 'Items' field contains the specified text (Optional)
var_page_size <- 56 # integer | Number of results per page (default: 50, max: 200) (Optional)
var_page_number <- 56 # integer | Page number to retrieve (default: 1) (Optional)
var_sort_by <- DTO.FilingSortBy$new() # DTOFilingSortBy | Field to sort results by (default: AccessionNumber) (Optional)
var_sort_order <- "desc" # character | Sort order (asc or desc, default: desc) (Optional)

api_instance <- FilingMetadataApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$V1FilingsGet(cik = var_cik, ticker = var_ticker, form_type = var_form_type, filling_date_start = var_filling_date_start, filling_date_end = var_filling_date_end, report_date_start = var_report_date_start, report_date_end = var_report_date_end, items_contain = var_items_contain, page_size = var_page_size, page_number = var_page_number, sort_by = var_sort_by, sort_order = var_sort_orderdata_file = "result.txt")
result <- api_instance$V1FilingsGet(cik = var_cik, ticker = var_ticker, form_type = var_form_type, filling_date_start = var_filling_date_start, filling_date_end = var_filling_date_end, report_date_start = var_report_date_start, report_date_end = var_report_date_end, items_contain = var_items_contain, page_size = var_page_size, page_number = var_page_number, sort_by = var_sort_by, sort_order = var_sort_order)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cik** | **integer**| Filter by Central Index Key (CIK) | [optional] 
 **ticker** | **character**| Filter by stock ticker symbol | [optional] 
 **form_type** | **character**| Filter by form type(s) (e.g., \&quot;10-K\&quot;, \&quot;8-K\&quot;). Multiple values can be comma-separated | [optional] 
 **filling_date_start** | **character**| Filter by filling date start (inclusive), format YYYY-MM-DD | [optional] 
 **filling_date_end** | **character**| Filter by filling date end (inclusive), format YYYY-MM-DD | [optional] 
 **report_date_start** | **character**| Filter by report date start (inclusive), format YYYY-MM-DD | [optional] 
 **report_date_end** | **character**| Filter by report date end (inclusive), format YYYY-MM-DD | [optional] 
 **items_contain** | **character**| Filter filings where the &#39;Items&#39; field contains the specified text | [optional] 
 **page_size** | **integer**| Number of results per page (default: 50, max: 200) | [optional] 
 **page_number** | **integer**| Page number to retrieve (default: 1) | [optional] 
 **sort_by** | [**DTOFilingSortBy**](.md)| Field to sort results by (default: AccessionNumber) | [optional] 
 **sort_order** | **character**| Sort order (asc or desc, default: desc) | [optional] [default to &quot;desc&quot;]

### Return type

[**array[DTOFilingMetadataDto]**](DTO.FilingMetadataDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful operation |  -  |
| **400** | Invalid request |  -  |
| **500** | Server error |  -  |

