# FileDownloadApi

All URIs are relative to *https://api.sec.finfeedapi.com*

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**v1DownloadGet**](FileDownloadApi.md#v1DownloadGet) | **GET** /v1/download | Download file from SEC EDGAR archive |


<a id="v1DownloadGet"></a>
# **v1DownloadGet**
> v1DownloadGet(accessionNo, fileName)

Download file from SEC EDGAR archive

Downloads a specific file from the SEC EDGAR archive using the accession number and filename. The file is streamed directly from the SEC servers to the client.  ### Accession Number Format Accession numbers must be in the format: 0000000000-00-000000 (10 digits, dash, 2 digits, dash, 6 digits)  ### File Name Examples - Primary documents: &#x60;d123456d10k.htm&#x60;, &#x60;d789012d8k.htm&#x60; - XBRL files: &#x60;d123456d10k_htm.xml&#x60;, &#x60;FilingSummary.xml&#x60; - Exhibits: &#x60;d123456dexhibit99.htm&#x60;, &#x60;d123456dex101.htm&#x60;  ### File Types The endpoint supports downloading various file types from SEC filings: - HTML documents (.htm, .html) - XBRL files (.xml, .xsd) - Text files (.txt) - PDF files (.pdf) - Other document formats as submitted to SEC  :::tip You can find available filenames for a specific filing using the &#x60;/v1/filings&#x60; endpoint first :::  :::warning This endpoint streams files directly from the SEC. Large files may take longer to download. :::

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = FileDownloadApi()
val accessionNo : kotlin.String = accessionNo_example // kotlin.String | SEC filing accession number in format: 0000000000-00-000000
val fileName : kotlin.String = fileName_example // kotlin.String | Name of the file to download from the filing
try {
    apiInstance.v1DownloadGet(accessionNo, fileName)
} catch (e: ClientException) {
    println("4xx response calling FileDownloadApi#v1DownloadGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling FileDownloadApi#v1DownloadGet")
    e.printStackTrace()
}
```

### Parameters
| **accessionNo** | **kotlin.String**| SEC filing accession number in format: 0000000000-00-000000 | |
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **fileName** | **kotlin.String**| Name of the file to download from the filing | |

### Return type

null (empty response body)

### Authorization


Configure APIKey:
    ApiClient.apiKey["Authorization"] = ""
    ApiClient.apiKeyPrefix["Authorization"] = ""
Configure JWT:
    ApiClient.accessToken = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream, text/plain, application/json

