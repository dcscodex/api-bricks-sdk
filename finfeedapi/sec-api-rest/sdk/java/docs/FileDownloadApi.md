# FileDownloadApi

All URIs are relative to *https://api.sec.finfeedapi.com*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**v1DownloadGet**](FileDownloadApi.md#v1DownloadGet) | **GET** /v1/download | Download file from SEC EDGAR archive |


<a id="v1DownloadGet"></a>
# **v1DownloadGet**
> v1DownloadGet(accessionNo, fileName)

Download file from SEC EDGAR archive

Downloads a specific file from the SEC EDGAR archive using the accession number and filename. The file is streamed directly from the SEC servers to the client.  ### Accession Number Format Accession numbers must be in the format: 0000000000-00-000000 (10 digits, dash, 2 digits, dash, 6 digits)  ### File Name Examples - Primary documents: &#x60;d123456d10k.htm&#x60;, &#x60;d789012d8k.htm&#x60; - XBRL files: &#x60;d123456d10k_htm.xml&#x60;, &#x60;FilingSummary.xml&#x60; - Exhibits: &#x60;d123456dexhibit99.htm&#x60;, &#x60;d123456dex101.htm&#x60;  ### File Types The endpoint supports downloading various file types from SEC filings: - HTML documents (.htm, .html) - XBRL files (.xml, .xsd) - Text files (.txt) - PDF files (.pdf) - Other document formats as submitted to SEC  :::tip You can find available filenames for a specific filing using the &#x60;/v1/filings&#x60; endpoint first :::  :::warning This endpoint streams files directly from the SEC. Large files may take longer to download. :::

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.FileDownloadApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.sec.finfeedapi.com");
    
    // Configure API key authorization: APIKey
    ApiKeyAuth APIKey = (ApiKeyAuth) defaultClient.getAuthentication("APIKey");
    APIKey.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //APIKey.setApiKeyPrefix("Token");

    // Configure HTTP bearer authorization: JWT
    HttpBearerAuth JWT = (HttpBearerAuth) defaultClient.getAuthentication("JWT");
    JWT.setBearerToken("BEARER TOKEN");

    FileDownloadApi apiInstance = new FileDownloadApi(defaultClient);
    String accessionNo = "accessionNo_example"; // String | SEC filing accession number in format: 0000000000-00-000000
    String fileName = "fileName_example"; // String | Name of the file to download from the filing
    try {
      apiInstance.v1DownloadGet(accessionNo, fileName);
    } catch (ApiException e) {
      System.err.println("Exception when calling FileDownloadApi#v1DownloadGet");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **accessionNo** | **String**| SEC filing accession number in format: 0000000000-00-000000 | |
| **fileName** | **String**| Name of the file to download from the filing | |

### Return type

null (empty response body)

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

