# FILEDOWNLOAD_API

All URIs are relative to *https://api.sec.finfeedapi.com*

Feature | HTTP request | Description
------------- | ------------- | -------------
[**v1_download_get**](FILEDOWNLOAD_API.md#v1_download_get) | **Get** /v1/download | Download file from SEC EDGAR archive


# **v1_download_get**
> v1_download_get (accession_no: STRING_32 ; file_name: STRING_32 )


Download file from SEC EDGAR archive

Downloads a specific file from the SEC EDGAR archive using the accession number and filename. The file is streamed directly from the SEC servers to the client.  ### Accession Number Format Accession numbers must be in the format: 0000000000-00-000000 (10 digits, dash, 2 digits, dash, 6 digits)  ### File Name Examples - Primary documents: `d123456d10k.htm`, `d789012d8k.htm` - XBRL files: `d123456d10k_htm.xml`, `FilingSummary.xml` - Exhibits: `d123456dexhibit99.htm`, `d123456dex101.htm`  ### File Types The endpoint supports downloading various file types from SEC filings: - HTML documents (.htm, .html) - XBRL files (.xml, .xsd) - Text files (.txt) - PDF files (.pdf) - Other document formats as submitted to SEC  :::tip You can find available filenames for a specific filing using the `/v1/filings` endpoint first :::  :::warning This endpoint streams files directly from the SEC. Large files may take longer to download. :::


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accession_no** | **STRING_32**| SEC filing accession number in format: 0000000000-00-000000 | [default to null]
 **file_name** | **STRING_32**| Name of the file to download from the filing | [default to null]

### Return type

{empty response body)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream, text/html, application/xml, text/plain, application/pdf, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

