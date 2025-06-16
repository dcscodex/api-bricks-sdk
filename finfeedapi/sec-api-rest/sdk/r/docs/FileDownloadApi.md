# FileDownloadApi

All URIs are relative to *https://api.sec.finfeedapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**V1DownloadGet**](FileDownloadApi.md#V1DownloadGet) | **GET** /v1/download | Download file from SEC EDGAR archive


# **V1DownloadGet**
> V1DownloadGet(accession_no, file_name)

Download file from SEC EDGAR archive

Downloads a specific file from the SEC EDGAR archive using the accession number and filename. The file is streamed directly from the SEC servers to the client.  ### Accession Number Format Accession numbers must be in the format: 0000000000-00-000000 (10 digits, dash, 2 digits, dash, 6 digits)  ### File Name Examples - Primary documents: `d123456d10k.htm`, `d789012d8k.htm` - XBRL files: `d123456d10k_htm.xml`, `FilingSummary.xml` - Exhibits: `d123456dexhibit99.htm`, `d123456dex101.htm`  ### File Types The endpoint supports downloading various file types from SEC filings: - HTML documents (.htm, .html) - XBRL files (.xml, .xsd) - Text files (.txt) - PDF files (.pdf) - Other document formats as submitted to SEC  :::tip You can find available filenames for a specific filing using the `/v1/filings` endpoint first :::  :::warning This endpoint streams files directly from the SEC. Large files may take longer to download. :::

### Example
```R
library(openapi)

# Download file from SEC EDGAR archive
#
# prepare function argument(s)
var_accession_no <- "accession_no_example" # character | SEC filing accession number in format: 0000000000-00-000000
var_file_name <- "file_name_example" # character | Name of the file to download from the filing

api_instance <- FileDownloadApi$new()
# Configure API key authorization: APIKey
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
# Configure HTTP bearer authorization: JWT
# api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$V1DownloadGet(var_accession_no, var_file_name)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accession_no** | **character**| SEC filing accession number in format: 0000000000-00-000000 | 
 **file_name** | **character**| Name of the file to download from the filing | 

### Return type

void (empty response body)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream, text/html, application/xml, text/plain, application/pdf, application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | File downloaded successfully |  -  |
| **400** | Invalid request parameters |  -  |
| **404** | Filing or file not found |  -  |
| **500** | Server error |  -  |

