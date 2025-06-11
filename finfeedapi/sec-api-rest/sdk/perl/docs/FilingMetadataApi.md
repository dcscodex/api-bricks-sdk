# WWW::OpenAPIClient::FilingMetadataApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::FilingMetadataApi;
```

All URIs are relative to *https://api.sec.finfeedapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1_filings_get**](FilingMetadataApi.md#v1_filings_get) | **GET** /v1/filings | Query SEC filing metadata


# **v1_filings_get**
> ARRAY[DTOFilingMetadataDto] v1_filings_get(cik => $cik, ticker => $ticker, form_type => $form_type, filling_date_start => $filling_date_start, filling_date_end => $filling_date_end, report_date_start => $report_date_start, report_date_end => $report_date_end, items_contain => $items_contain, page_size => $page_size, page_number => $page_number, sort_by => $sort_by, sort_order => $sort_order)

Query SEC filing metadata

Retrieves metadata for SEC filings based on various filter criteria with pagination and sorting support.  ### Available Sort Fields  Field Name | Description -----------|------------- AccessionNumber | SEC filing accession number FilingDate | Date when filing was submitted AcceptanceDateTime | Date and time of filing acceptance ReportDate | Date of the report Size | Size of the filing document  ### Date Format All dates must be provided in YYYY-MM-DD format  ### Form Types Form types can be provided as comma-separated values, e.g.: \"10-K,8-K,10-Q\"  :::tip For optimal performance, use date ranges and form types to narrow down your search :::

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::FilingMetadataApi;
my $api_instance = WWW::OpenAPIClient::FilingMetadataApi->new(

    # Configure API key authorization: APIKey
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
    # Configure bearer access token for authorization: JWT
    access_token => 'YOUR_BEARER_TOKEN',
    
);

my $cik = 789; # int | Filter by Central Index Key (CIK)
my $ticker = "ticker_example"; # string | Filter by stock ticker symbol
my $form_type = "form_type_example"; # string | Filter by form type(s) (e.g., \"10-K\", \"8-K\"). Multiple values can be comma-separated
my $filling_date_start = "filling_date_start_example"; # string | Filter by filling date start (inclusive), format YYYY-MM-DD
my $filling_date_end = "filling_date_end_example"; # string | Filter by filling date end (inclusive), format YYYY-MM-DD
my $report_date_start = "report_date_start_example"; # string | Filter by report date start (inclusive), format YYYY-MM-DD
my $report_date_end = "report_date_end_example"; # string | Filter by report date end (inclusive), format YYYY-MM-DD
my $items_contain = "items_contain_example"; # string | Filter filings where the 'Items' field contains the specified text
my $page_size = 56; # int | Number of results per page (default: 50, max: 200)
my $page_number = 56; # int | Page number to retrieve (default: 1)
my $sort_by = new WWW::OpenAPIClient.DTOFilingSortBy(); # DTOFilingSortBy | Field to sort results by (default: AccessionNumber)
my $sort_order = 'desc'; # string | Sort order (asc or desc, default: desc)

eval {
    my $result = $api_instance->v1_filings_get(cik => $cik, ticker => $ticker, form_type => $form_type, filling_date_start => $filling_date_start, filling_date_end => $filling_date_end, report_date_start => $report_date_start, report_date_end => $report_date_end, items_contain => $items_contain, page_size => $page_size, page_number => $page_number, sort_by => $sort_by, sort_order => $sort_order);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling FilingMetadataApi->v1_filings_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cik** | **int**| Filter by Central Index Key (CIK) | [optional] 
 **ticker** | **string**| Filter by stock ticker symbol | [optional] 
 **form_type** | **string**| Filter by form type(s) (e.g., \&quot;10-K\&quot;, \&quot;8-K\&quot;). Multiple values can be comma-separated | [optional] 
 **filling_date_start** | **string**| Filter by filling date start (inclusive), format YYYY-MM-DD | [optional] 
 **filling_date_end** | **string**| Filter by filling date end (inclusive), format YYYY-MM-DD | [optional] 
 **report_date_start** | **string**| Filter by report date start (inclusive), format YYYY-MM-DD | [optional] 
 **report_date_end** | **string**| Filter by report date end (inclusive), format YYYY-MM-DD | [optional] 
 **items_contain** | **string**| Filter filings where the &#39;Items&#39; field contains the specified text | [optional] 
 **page_size** | **int**| Number of results per page (default: 50, max: 200) | [optional] 
 **page_number** | **int**| Page number to retrieve (default: 1) | [optional] 
 **sort_by** | [**DTOFilingSortBy**](.md)| Field to sort results by (default: AccessionNumber) | [optional] 
 **sort_order** | **string**| Sort order (asc or desc, default: desc) | [optional] [default to &#39;desc&#39;]

### Return type

[**ARRAY[DTOFilingMetadataDto]**](DTOFilingMetadataDto.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

