# OpenAPI\Client\FullTextSearchApi

All URIs are relative to https://api.sec.finfeedapi.com, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**v1FullTextGet()**](FullTextSearchApi.md#v1FullTextGet) | **GET** /v1/full-text | Full-text search of SEC filing documents |


## `v1FullTextGet()`

```php
v1FullTextGet($form_type, $filling_date_start, $filling_date_end, $text_contains, $text_not_contain, $page_size, $page_number, $sort_by, $sort_order): \OpenAPI\Client\Model\DTOSecFilingResultDto[]
```

Full-text search of SEC filing documents

Search across SEC filing documents with advanced filtering and sorting capabilities.    ### Available Sort Fields    Field Name | Description  -----------|-------------  AccessionNumber | SEC filing accession number  FormType | Type of the filing document  FilingDate | Date when filing was submitted  CompanyName | Name of the company  CIK | Central Index Key  DocumentFilename | Name of the filing document  DocumentDescription | Description of the document    ### Search Options    Option | Description  --------|-------------  text_contains | Keywords that must appear in the document  text_not_contain | Keywords that must not appear in the document    ### Date Format  All dates must be provided in YYYY-MM-DD format    :::tip  Use text_contains and text_not_contain with multiple keywords separated by commas for more precise searches  :::    :::note  The search is case-insensitive and supports partial word matches  :::

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\FullTextSearchApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$form_type = 'form_type_example'; // string | Filter by form type (e.g., \"10-K\", \"8-K\"). Multiple values can be comma-separated
$filling_date_start = 'filling_date_start_example'; // string | Filter by filling date start (inclusive), format YYYY-MM-DD
$filling_date_end = 'filling_date_end_example'; // string | Filter by filling date end (inclusive), format YYYY-MM-DD
$text_contains = 'text_contains_example'; // string | Keywords that the text must contain. Multiple values can be comma-separated
$text_not_contain = 'text_not_contain_example'; // string | Keywords that the text must not contain. Multiple values can be comma-separated
$page_size = 56; // int | Number of results per page (default: 100)
$page_number = 56; // int | Page number to retrieve (default: 1)
$sort_by = 'AccessionNumber'; // string | Field to sort by (default: AccessionNumber)
$sort_order = 'asc'; // string | Sort order (asc or desc). Defaults to asc

try {
    $result = $apiInstance->v1FullTextGet($form_type, $filling_date_start, $filling_date_end, $text_contains, $text_not_contain, $page_size, $page_number, $sort_by, $sort_order);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling FullTextSearchApi->v1FullTextGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **form_type** | **string**| Filter by form type (e.g., \&quot;10-K\&quot;, \&quot;8-K\&quot;). Multiple values can be comma-separated | [optional] |
| **filling_date_start** | **string**| Filter by filling date start (inclusive), format YYYY-MM-DD | [optional] |
| **filling_date_end** | **string**| Filter by filling date end (inclusive), format YYYY-MM-DD | [optional] |
| **text_contains** | **string**| Keywords that the text must contain. Multiple values can be comma-separated | [optional] |
| **text_not_contain** | **string**| Keywords that the text must not contain. Multiple values can be comma-separated | [optional] |
| **page_size** | **int**| Number of results per page (default: 100) | [optional] |
| **page_number** | **int**| Page number to retrieve (default: 1) | [optional] |
| **sort_by** | **string**| Field to sort by (default: AccessionNumber) | [optional] [default to &#39;AccessionNumber&#39;] |
| **sort_order** | **string**| Sort order (asc or desc). Defaults to asc | [optional] [default to &#39;asc&#39;] |

### Return type

[**\OpenAPI\Client\Model\DTOSecFilingResultDto[]**](../Model/DTOSecFilingResultDto.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
