# ContentExtractionApi

All URIs are relative to *https://api.sec.finfeedapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**V1ExtractorGet**](ContentExtractionApi.md#V1ExtractorGet) | **GET** /v1/extractor | Extract and classify SEC filing content
[**V1ExtractorItemGet**](ContentExtractionApi.md#V1ExtractorItemGet) | **GET** /v1/extractor/item | Extract specific item content from SEC filing


# **V1ExtractorGet**
> map(AnyType) V1ExtractorGet(accession_number, type = var.type)

Extract and classify SEC filing content

Retrieves filing content from the EDGAR database and intelligently classifies it according to form type and item categories.  ### Supported Form Types  Form Type | Description ----------|------------ 8-K      | Current report filing 10-K     | Annual report filing 10-Q     | Quarterly report filing  ### Content Classification - 8-K forms: Content classified by item numbers (e.g., 1.01, 2.01) - 10-K/10-Q forms: Items categorized by their respective part and item structure  :::note Both HTML and plain text documents are supported for content extraction. :::

### Example
```R
library(openapi)

# Extract and classify SEC filing content
#
# prepare function argument(s)
var_accession_number <- "accession_number_example" # character | The SEC filing accession number used to retrieve the filing from EDGAR database.
var_type <- DTO.ExtractorType$new() # DTOExtractorType | Result type (text or html, default: text) (Optional)

api_instance <- ContentExtractionApi$new()
# Configure API key authorization: APIKey
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
# Configure HTTP bearer authorization: JWT
# api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$V1ExtractorGet(var_accession_number, type = var_typedata_file = "result.txt")
result <- api_instance$V1ExtractorGet(var_accession_number, type = var_type)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accession_number** | **character**| The SEC filing accession number used to retrieve the filing from EDGAR database. | 
 **type** | [**DTOExtractorType**](.md)| Result type (text or html, default: text) | [optional] 

### Return type

[**map(AnyType)**](AnyType.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful extraction |  -  |
| **400** | Invalid request |  -  |
| **404** | Filing not found |  -  |
| **500** | Server error |  -  |

# **V1ExtractorItemGet**
> character V1ExtractorItemGet(accession_number, item_number, type = var.type)

Extract specific item content from SEC filing

Retrieves filing content from the EDGAR database and returns only the text content of the specified item number.  ### Item Number Format  Form Type | Item Format Examples -----------|------------------- 8-K       | 1.01, 2.01, 7.01 10-K      | 1, 2, 3 10-K/10-Q | PartI 1, PartII 2  :::tip For best results, ensure the item number matches exactly with the filing's structure. :::

### Example
```R
library(openapi)

# Extract specific item content from SEC filing
#
# prepare function argument(s)
var_accession_number <- "accession_number_example" # character | The SEC filing accession number used to retrieve the filing from EDGAR database.
var_item_number <- "item_number_example" # character | The specific item number to extract (e.g., \"1.01\", \"2.01\", \"7.01\").
var_type <- DTO.ExtractorType$new() # DTOExtractorType | Result type (text or html, default: text) (Optional)

api_instance <- ContentExtractionApi$new()
# Configure API key authorization: APIKey
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
# Configure HTTP bearer authorization: JWT
# api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$V1ExtractorItemGet(var_accession_number, var_item_number, type = var_typedata_file = "result.txt")
result <- api_instance$V1ExtractorItemGet(var_accession_number, var_item_number, type = var_type)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accession_number** | **character**| The SEC filing accession number used to retrieve the filing from EDGAR database. | 
 **item_number** | **character**| The specific item number to extract (e.g., \&quot;1.01\&quot;, \&quot;2.01\&quot;, \&quot;7.01\&quot;). | 
 **type** | [**DTOExtractorType**](.md)| Result type (text or html, default: text) | [optional] 

### Return type

**character**

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful extraction |  -  |
| **400** | Invalid request |  -  |
| **404** | Filing or item not found |  -  |
| **500** | Server error |  -  |

