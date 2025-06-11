# WWW::OpenAPIClient::XBRLConversionApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::XBRLConversionApi;
```

All URIs are relative to *https://api.sec.finfeedapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1_xbrl_converter_get**](XBRLConversionApi.md#v1_xbrl_converter_get) | **GET** /v1/xbrl-converter | Convert XBRL data to JSON format


# **v1_xbrl_converter_get**
> HASH[string,object] v1_xbrl_converter_get(htm_url => $htm_url, xbrl_url => $xbrl_url, accession_no => $accession_no)

Convert XBRL data to JSON format

Converts XBRL data to JSON format using one of three possible input methods.  ### Input Methods  1. HTML URL (htm-url)    - URL of the filing ending with .htm or .html    - Both filing URLs and index page URLs are accepted    - Example: https://www.sec.gov/Archives/edgar/data/1318605/000156459021004599/tsla-10k_20201231.htm  2. XBRL URL (xbrl-url)    - URL of the XBRL file ending with .xml    - Can be found in the dataFiles array from Query API    - Example: https://www.sec.gov/Archives/edgar/data/1318605/000156459021004599/tsla-10k_20201231_htm.xml  3. Accession Number (accession-no)    - The SEC filing accession number    - Example: 0001564590-21-004599  :::note Only one of the three parameters should be provided. If multiple parameters are provided, the priority order is: 1. htm-url 2. xbrl-url 3. accession-no :::  ### Supported Filing Types  - Annual Reports (10-K) - Quarterly Reports (10-Q) - Current Reports (8-K) - Registration Statements (S-1, S-3) - Foreign Private Issuer Reports (20-F, 40-F)  ### Response Format  The API returns a JSON object containing: - Financial statements (Income Statement, Balance Sheet, Cash Flow Statement) - Accounting policies and footnotes - Company information - Filing metadata  ### Example Response ```json {   \"StatementsOfIncome\": {     \"RevenueFromContractWithCustomerExcludingAssessedTax\": [       {         \"decimals\": \"-6\",         \"unitRef\": \"U_USD\",         \"period\": {           \"startDate\": \"2023-07-01\",           \"endDate\": \"2024-06-30\"         },         \"value\": \"245122000000\"       }     ]   } } ```

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::XBRLConversionApi;
my $api_instance = WWW::OpenAPIClient::XBRLConversionApi->new(

    # Configure API key authorization: APIKey
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
    # Configure bearer access token for authorization: JWT
    access_token => 'YOUR_BEARER_TOKEN',
    
);

my $htm_url = "htm_url_example"; # string | URL of the filing ending with .htm or .html
my $xbrl_url = "xbrl_url_example"; # string | URL of the XBRL file ending with .xml
my $accession_no = "accession_no_example"; # string | SEC filing accession number

eval {
    my $result = $api_instance->v1_xbrl_converter_get(htm_url => $htm_url, xbrl_url => $xbrl_url, accession_no => $accession_no);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling XBRLConversionApi->v1_xbrl_converter_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **htm_url** | **string**| URL of the filing ending with .htm or .html | [optional] 
 **xbrl_url** | **string**| URL of the XBRL file ending with .xml | [optional] 
 **accession_no** | **string**| SEC filing accession number | [optional] 

### Return type

**HASH[string,object]**

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

