# openapi.api.FileDownloadApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://api.sec.finfeedapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1DownloadGet**](FileDownloadApi.md#v1downloadget) | **GET** /v1/download | Download file from SEC EDGAR archive


# **v1DownloadGet**
> v1DownloadGet(accessionNo, fileName)

Download file from SEC EDGAR archive

Downloads a specific file from the SEC EDGAR archive using the accession number and filename. The file is streamed directly from the SEC servers to the client.  ### Accession Number Format Accession numbers must be in the format: 0000000000-00-000000 (10 digits, dash, 2 digits, dash, 6 digits)  ### File Name Examples - Primary documents: `d123456d10k.htm`, `d789012d8k.htm` - XBRL files: `d123456d10k_htm.xml`, `FilingSummary.xml` - Exhibits: `d123456dexhibit99.htm`, `d123456dex101.htm`  ### File Types The endpoint supports downloading various file types from SEC filings: - HTML documents (.htm, .html) - XBRL files (.xml, .xsd) - Text files (.txt) - PDF files (.pdf) - Other document formats as submitted to SEC  :::tip You can find available filenames for a specific filing using the `/v1/filings` endpoint first :::  :::warning This endpoint streams files directly from the SEC. Large files may take longer to download. :::

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: APIKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIKey').apiKeyPrefix = 'Bearer';

final api = Openapi().getFileDownloadApi();
final String accessionNo = accessionNo_example; // String | SEC filing accession number in format: 0000000000-00-000000
final String fileName = fileName_example; // String | Name of the file to download from the filing

try {
    api.v1DownloadGet(accessionNo, fileName);
} catch on DioException (e) {
    print('Exception when calling FileDownloadApi->v1DownloadGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accessionNo** | **String**| SEC filing accession number in format: 0000000000-00-000000 | 
 **fileName** | **String**| Name of the file to download from the filing | 

### Return type

void (empty response body)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream, text/html, application/xml, text/plain, application/pdf, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

