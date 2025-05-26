# OpenAPI\Client\ContentExtractionApi

All URIs are relative to https://api-historical.sec.finfeedapi.com, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**v1ExtractorGet()**](ContentExtractionApi.md#v1ExtractorGet) | **GET** /v1/extractor | Extract and classify SEC filing content |
| [**v1ExtractorItemGet()**](ContentExtractionApi.md#v1ExtractorItemGet) | **GET** /v1/extractor/item | Extract specific item content from SEC filing |


## `v1ExtractorGet()`

```php
v1ExtractorGet($accession_number, $type): array<string,mixed>
```

Extract and classify SEC filing content

Retrieves filing content from the EDGAR database and intelligently classifies it according to form type and item categories.    ### Supported Form Types    Form Type | Description  ----------|------------  8-K      | Current report filing  10-K     | Annual report filing  10-Q     | Quarterly report filing    ### Content Classification  - 8-K forms: Content classified by item numbers (e.g., 1.01, 2.01)  - 10-K/10-Q forms: Items categorized by their respective part and item structure    :::note  Both HTML and plain text documents are supported for content extraction.  :::

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\ContentExtractionApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$accession_number = 'accession_number_example'; // string | The SEC filing accession number used to retrieve the filing from EDGAR database.
$type = new \OpenAPI\Client\Model\\OpenAPI\Client\Model\DTOExtractorType(); // \OpenAPI\Client\Model\DTOExtractorType | Result type (text or html, default: text)

try {
    $result = $apiInstance->v1ExtractorGet($accession_number, $type);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ContentExtractionApi->v1ExtractorGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **accession_number** | **string**| The SEC filing accession number used to retrieve the filing from EDGAR database. | |
| **type** | [**\OpenAPI\Client\Model\DTOExtractorType**](../Model/.md)| Result type (text or html, default: text) | [optional] |

### Return type

**array<string,mixed>**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v1ExtractorItemGet()`

```php
v1ExtractorItemGet($accession_number, $item_number, $type): string
```

Extract specific item content from SEC filing

Retrieves filing content from the EDGAR database and returns only the text content of the specified item number.    ### Item Number Format    Form Type | Item Format Examples  -----------|-------------------  8-K       | 1.01, 2.01, 7.01  10-K      | 1, 2, 3  10-K/10-Q | PartI 1, PartII 2    :::tip  For best results, ensure the item number matches exactly with the filing's structure.  :::

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\ContentExtractionApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$accession_number = 'accession_number_example'; // string | The SEC filing accession number used to retrieve the filing from EDGAR database.
$item_number = 'item_number_example'; // string | The specific item number to extract (e.g., \"1.01\", \"2.01\", \"7.01\").
$type = new \OpenAPI\Client\Model\\OpenAPI\Client\Model\DTOExtractorType(); // \OpenAPI\Client\Model\DTOExtractorType | Result type (text or html, default: text)

try {
    $result = $apiInstance->v1ExtractorItemGet($accession_number, $item_number, $type);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ContentExtractionApi->v1ExtractorItemGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **accession_number** | **string**| The SEC filing accession number used to retrieve the filing from EDGAR database. | |
| **item_number** | **string**| The specific item number to extract (e.g., \&quot;1.01\&quot;, \&quot;2.01\&quot;, \&quot;7.01\&quot;). | |
| **type** | [**\OpenAPI\Client\Model\DTOExtractorType**](../Model/.md)| Result type (text or html, default: text) | [optional] |

### Return type

**string**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
