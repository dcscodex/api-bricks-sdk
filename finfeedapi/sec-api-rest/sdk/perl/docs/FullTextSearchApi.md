# WWW::OpenAPIClient::FullTextSearchApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::FullTextSearchApi;
```

All URIs are relative to *https://api-historical.sec.finfeedapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1_full_text_get**](FullTextSearchApi.md#v1_full_text_get) | **GET** /v1/full-text | Full-text search of SEC filing documents


# **v1_full_text_get**
> ARRAY[DTOSecFilingResultDto] v1_full_text_get(form_type => $form_type, filling_date_start => $filling_date_start, filling_date_end => $filling_date_end, text_contains => $text_contains, text_not_contain => $text_not_contain, page_size => $page_size, page_number => $page_number, sort_by => $sort_by, sort_order => $sort_order)

Full-text search of SEC filing documents

Search across SEC filing documents with advanced filtering and sorting capabilities.    ### Available Sort Fields    Field Name | Description  -----------|-------------  AccessionNumber | SEC filing accession number  FormType | Type of the filing document  FilingDate | Date when filing was submitted  CompanyName | Name of the company  CIK | Central Index Key  DocumentFilename | Name of the filing document  DocumentDescription | Description of the document    ### Search Options    Option | Description  --------|-------------  text_contains | Keywords that must appear in the document  text_not_contain | Keywords that must not appear in the document    ### Date Format  All dates must be provided in YYYY-MM-DD format    :::tip  Use text_contains and text_not_contain with multiple keywords separated by commas for more precise searches  :::    :::note  The search is case-insensitive and supports partial word matches  :::

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::FullTextSearchApi;
my $api_instance = WWW::OpenAPIClient::FullTextSearchApi->new(
);

my $form_type = "form_type_example"; # string | Filter by form type (e.g., \"10-K\", \"8-K\"). Multiple values can be comma-separated
my $filling_date_start = "filling_date_start_example"; # string | Filter by filling date start (inclusive), format YYYY-MM-DD
my $filling_date_end = "filling_date_end_example"; # string | Filter by filling date end (inclusive), format YYYY-MM-DD
my $text_contains = "text_contains_example"; # string | Keywords that the text must contain. Multiple values can be comma-separated
my $text_not_contain = "text_not_contain_example"; # string | Keywords that the text must not contain. Multiple values can be comma-separated
my $page_size = 56; # int | Number of results per page (default: 100)
my $page_number = 56; # int | Page number to retrieve (default: 1)
my $sort_by = 'AccessionNumber'; # string | Field to sort by (default: AccessionNumber)
my $sort_order = 'asc'; # string | Sort order (asc or desc). Defaults to asc

eval {
    my $result = $api_instance->v1_full_text_get(form_type => $form_type, filling_date_start => $filling_date_start, filling_date_end => $filling_date_end, text_contains => $text_contains, text_not_contain => $text_not_contain, page_size => $page_size, page_number => $page_number, sort_by => $sort_by, sort_order => $sort_order);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling FullTextSearchApi->v1_full_text_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **form_type** | **string**| Filter by form type (e.g., \&quot;10-K\&quot;, \&quot;8-K\&quot;). Multiple values can be comma-separated | [optional] 
 **filling_date_start** | **string**| Filter by filling date start (inclusive), format YYYY-MM-DD | [optional] 
 **filling_date_end** | **string**| Filter by filling date end (inclusive), format YYYY-MM-DD | [optional] 
 **text_contains** | **string**| Keywords that the text must contain. Multiple values can be comma-separated | [optional] 
 **text_not_contain** | **string**| Keywords that the text must not contain. Multiple values can be comma-separated | [optional] 
 **page_size** | **int**| Number of results per page (default: 100) | [optional] 
 **page_number** | **int**| Page number to retrieve (default: 1) | [optional] 
 **sort_by** | **string**| Field to sort by (default: AccessionNumber) | [optional] [default to &#39;AccessionNumber&#39;]
 **sort_order** | **string**| Sort order (asc or desc). Defaults to asc | [optional] [default to &#39;asc&#39;]

### Return type

[**ARRAY[DTOSecFilingResultDto]**](DTOSecFilingResultDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

