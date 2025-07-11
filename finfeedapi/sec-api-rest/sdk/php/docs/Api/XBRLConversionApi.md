# OpenAPI\Client\XBRLConversionApi

All URIs are relative to https://api.sec.finfeedapi.com, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**v1XbrlConverterGet()**](XBRLConversionApi.md#v1XbrlConverterGet) | **GET** /v1/xbrl-converter | Convert XBRL data to JSON format |


## `v1XbrlConverterGet()`

```php
v1XbrlConverterGet($htm_url, $xbrl_url, $accession_no): array<string,mixed>
```

Convert XBRL data to JSON format

Converts XBRL data to JSON format using one of three possible input methods.  ### Input Methods  1. HTML URL (htm-url)    - URL of the filing ending with .htm or .html    - Both filing URLs and index page URLs are accepted    - Example: https://www.sec.gov/Archives/edgar/data/1318605/000156459021004599/tsla-10k_20201231.htm  2. XBRL URL (xbrl-url)    - URL of the XBRL file ending with .xml    - Can be found in the dataFiles array from Query API    - Example: https://www.sec.gov/Archives/edgar/data/1318605/000156459021004599/tsla-10k_20201231_htm.xml  3. Accession Number (accession-no)    - The SEC filing accession number    - Example: 0001564590-21-004599  :::note Only one of the three parameters should be provided. If multiple parameters are provided, the priority order is: 1. htm-url 2. xbrl-url 3. accession-no :::  ### Supported Filing Types  - Annual Reports (10-K) - Quarterly Reports (10-Q) - Current Reports (8-K) - Registration Statements (S-1, S-3) - Foreign Private Issuer Reports (20-F, 40-F)  ### Response Format  The API returns a JSON object containing: - Financial statements (Income Statement, Balance Sheet, Cash Flow Statement) - Accounting policies and footnotes - Company information - Filing metadata  ### Example Response ```json {   \"StatementsOfIncome\": {     \"RevenueFromContractWithCustomerExcludingAssessedTax\": [       {         \"decimals\": \"-6\",         \"unitRef\": \"U_USD\",         \"period\": {           \"startDate\": \"2023-07-01\",           \"endDate\": \"2024-06-30\"         },         \"value\": \"245122000000\"       }     ]   } } ```

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


$apiInstance = new OpenAPI\Client\Api\XBRLConversionApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$htm_url = 'htm_url_example'; // string | URL of the filing ending with .htm or .html
$xbrl_url = 'xbrl_url_example'; // string | URL of the XBRL file ending with .xml
$accession_no = 'accession_no_example'; // string | SEC filing accession number

try {
    $result = $apiInstance->v1XbrlConverterGet($htm_url, $xbrl_url, $accession_no);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling XBRLConversionApi->v1XbrlConverterGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **htm_url** | **string**| URL of the filing ending with .htm or .html | [optional] |
| **xbrl_url** | **string**| URL of the XBRL file ending with .xml | [optional] |
| **accession_no** | **string**| SEC filing accession number | [optional] |

### Return type

**array<string,mixed>**

### Authorization

[APIKey](../../README.md#APIKey), [JWT](../../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
