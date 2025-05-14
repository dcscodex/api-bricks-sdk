# WWW::OpenAPIClient::ContentExtractionApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::ContentExtractionApi;
```

All URIs are relative to *https://api-historical.sec.finfeedapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1_extractor_get**](ContentExtractionApi.md#v1_extractor_get) | **GET** /v1/extractor | Extract and classify SEC filing content 
[**v1_extractor_item_get**](ContentExtractionApi.md#v1_extractor_item_get) | **GET** /v1/extractor/item | Extract specific item content from SEC filing


# **v1_extractor_get**
> DTOFilingExtractResultDto v1_extractor_get(accession_number => $accession_number, type => $type)

Extract and classify SEC filing content 

Retrieves filing content from the EDGAR database and intelligently classifies it according to form type and item categories.    ### Supported Form Types    Form Type | Description  ----------|------------  8-K      | Current report filing  10-K     | Annual report filing  10-Q     | Quarterly report filing    ### Content Classification  - 8-K forms: Content classified by item numbers (e.g., 1.01, 2.01)  - 10-K/10-Q forms: Items categorized by their respective part and item structure    :::note  Both HTML and plain text documents are supported for content extraction.  :::

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::ContentExtractionApi;
my $api_instance = WWW::OpenAPIClient::ContentExtractionApi->new(
);

my $accession_number = "accession_number_example"; # string | The SEC filing accession number used to retrieve the filing from EDGAR database.
my $type = new WWW::OpenAPIClient.DTOExtractorType(); # DTOExtractorType | Result type (text or html, default: text)

eval {
    my $result = $api_instance->v1_extractor_get(accession_number => $accession_number, type => $type);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ContentExtractionApi->v1_extractor_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accession_number** | **string**| The SEC filing accession number used to retrieve the filing from EDGAR database. | 
 **type** | [**DTOExtractorType**](.md)| Result type (text or html, default: text) | [optional] 

### Return type

[**DTOFilingExtractResultDto**](DTOFilingExtractResultDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_extractor_item_get**
> string v1_extractor_item_get(accession_number => $accession_number, item_number => $item_number, type => $type)

Extract specific item content from SEC filing

Retrieves filing content from the EDGAR database and returns only the text content of the specified item number.    ### Item Number Format    Form Type | Item Format Examples  -----------|-------------------  8-K       | 1.01, 2.01, 7.01  10-K      | 1, 2, 3  10-K/10-Q | PartI 1, PartII 2    :::tip  For best results, ensure the item number matches exactly with the filing's structure.  :::

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::ContentExtractionApi;
my $api_instance = WWW::OpenAPIClient::ContentExtractionApi->new(
);

my $accession_number = "accession_number_example"; # string | The SEC filing accession number used to retrieve the filing from EDGAR database.
my $item_number = "item_number_example"; # string | The specific item number to extract (e.g., \"1.01\", \"2.01\", \"7.01\").
my $type = new WWW::OpenAPIClient.DTOExtractorType(); # DTOExtractorType | Result type (text or html, default: text)

eval {
    my $result = $api_instance->v1_extractor_item_get(accession_number => $accession_number, item_number => $item_number, type => $type);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ContentExtractionApi->v1_extractor_item_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accession_number** | **string**| The SEC filing accession number used to retrieve the filing from EDGAR database. | 
 **item_number** | **string**| The specific item number to extract (e.g., \&quot;1.01\&quot;, \&quot;2.01\&quot;, \&quot;7.01\&quot;). | 
 **type** | [**DTOExtractorType**](.md)| Result type (text or html, default: text) | [optional] 

### Return type

**string**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

