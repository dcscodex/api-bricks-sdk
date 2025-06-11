# OpenAPI\Client\FilingMetadataApi

All URIs are relative to https://api.sec.finfeedapi.com, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**v1FilingsGet()**](FilingMetadataApi.md#v1FilingsGet) | **GET** /v1/filings | Query SEC filing metadata |


## `v1FilingsGet()`

```php
v1FilingsGet($cik, $ticker, $form_type, $filling_date_start, $filling_date_end, $report_date_start, $report_date_end, $items_contain, $page_size, $page_number, $sort_by, $sort_order): \OpenAPI\Client\Model\DTOFilingMetadataDto[]
```

Query SEC filing metadata

Retrieves metadata for SEC filings based on various filter criteria with pagination and sorting support.  ### Available Sort Fields  Field Name | Description -----------|------------- AccessionNumber | SEC filing accession number FilingDate | Date when filing was submitted AcceptanceDateTime | Date and time of filing acceptance ReportDate | Date of the report Size | Size of the filing document  ### Date Format All dates must be provided in YYYY-MM-DD format  ### Form Types Form types can be provided as comma-separated values, e.g.: \"10-K,8-K,10-Q\"  :::tip For optimal performance, use date ranges and form types to narrow down your search :::

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: APIKey
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('Authorization', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('Authorization', 'Bearer');

// Configure Bearer (JWT) authorization: JWT
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\FilingMetadataApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$cik = 56; // int | Filter by Central Index Key (CIK)
$ticker = 'ticker_example'; // string | Filter by stock ticker symbol
$form_type = 'form_type_example'; // string | Filter by form type(s) (e.g., \"10-K\", \"8-K\"). Multiple values can be comma-separated
$filling_date_start = 'filling_date_start_example'; // string | Filter by filling date start (inclusive), format YYYY-MM-DD
$filling_date_end = 'filling_date_end_example'; // string | Filter by filling date end (inclusive), format YYYY-MM-DD
$report_date_start = 'report_date_start_example'; // string | Filter by report date start (inclusive), format YYYY-MM-DD
$report_date_end = 'report_date_end_example'; // string | Filter by report date end (inclusive), format YYYY-MM-DD
$items_contain = 'items_contain_example'; // string | Filter filings where the 'Items' field contains the specified text
$page_size = 56; // int | Number of results per page (default: 50, max: 200)
$page_number = 56; // int | Page number to retrieve (default: 1)
$sort_by = new \OpenAPI\Client\Model\\OpenAPI\Client\Model\DTOFilingSortBy(); // \OpenAPI\Client\Model\DTOFilingSortBy | Field to sort results by (default: AccessionNumber)
$sort_order = 'desc'; // string | Sort order (asc or desc, default: desc)

try {
    $result = $apiInstance->v1FilingsGet($cik, $ticker, $form_type, $filling_date_start, $filling_date_end, $report_date_start, $report_date_end, $items_contain, $page_size, $page_number, $sort_by, $sort_order);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling FilingMetadataApi->v1FilingsGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **cik** | **int**| Filter by Central Index Key (CIK) | [optional] |
| **ticker** | **string**| Filter by stock ticker symbol | [optional] |
| **form_type** | **string**| Filter by form type(s) (e.g., \&quot;10-K\&quot;, \&quot;8-K\&quot;). Multiple values can be comma-separated | [optional] |
| **filling_date_start** | **string**| Filter by filling date start (inclusive), format YYYY-MM-DD | [optional] |
| **filling_date_end** | **string**| Filter by filling date end (inclusive), format YYYY-MM-DD | [optional] |
| **report_date_start** | **string**| Filter by report date start (inclusive), format YYYY-MM-DD | [optional] |
| **report_date_end** | **string**| Filter by report date end (inclusive), format YYYY-MM-DD | [optional] |
| **items_contain** | **string**| Filter filings where the &#39;Items&#39; field contains the specified text | [optional] |
| **page_size** | **int**| Number of results per page (default: 50, max: 200) | [optional] |
| **page_number** | **int**| Page number to retrieve (default: 1) | [optional] |
| **sort_by** | [**\OpenAPI\Client\Model\DTOFilingSortBy**](../Model/.md)| Field to sort results by (default: AccessionNumber) | [optional] |
| **sort_order** | **string**| Sort order (asc or desc, default: desc) | [optional] [default to &#39;desc&#39;] |

### Return type

[**\OpenAPI\Client\Model\DTOFilingMetadataDto[]**](../Model/DTOFilingMetadataDto.md)

### Authorization

[APIKey](../../README.md#APIKey), [JWT](../../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
