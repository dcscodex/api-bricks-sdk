# XBRLConversionApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1XbrlConverterGet**](XBRLConversionApi.md#v1XbrlConverterGet) | **GET** /v1/xbrl-converter | Convert XBRL data to JSON format



## v1XbrlConverterGet

Convert XBRL data to JSON format

Converts XBRL data to JSON format using one of three possible input methods.

### Input Methods

1. HTML URL (htm-url)
   - URL of the filing ending with .htm or .html
   - Both filing URLs and index page URLs are accepted
   - Example: https://www.sec.gov/Archives/edgar/data/1318605/000156459021004599/tsla-10k_20201231.htm

2. XBRL URL (xbrl-url)
   - URL of the XBRL file ending with .xml
   - Can be found in the dataFiles array from Query API
   - Example: https://www.sec.gov/Archives/edgar/data/1318605/000156459021004599/tsla-10k_20201231_htm.xml

3. Accession Number (accession-no)
   - The SEC filing accession number
   - Example: 0001564590-21-004599

:::note
Only one of the three parameters should be provided. If multiple parameters are provided, the priority order is:
1. htm-url
2. xbrl-url
3. accession-no
:::

### Supported Filing Types

- Annual Reports (10-K)
- Quarterly Reports (10-Q)
- Current Reports (8-K)
- Registration Statements (S-1, S-3)
- Foreign Private Issuer Reports (20-F, 40-F)

### Response Format

The API returns a JSON object containing:
- Financial statements (Income Statement, Balance Sheet, Cash Flow Statement)
- Accounting policies and footnotes
- Company information
- Filing metadata

### Example Response
'''json
{
  \"StatementsOfIncome\": {
    \"RevenueFromContractWithCustomerExcludingAssessedTax\": [
      {
        \"decimals\": \"-6\",
        \"unitRef\": \"U_USD\",
        \"period\": {
          \"startDate\": \"2023-07-01\",
          \"endDate\": \"2024-06-30\"
        },
        \"value\": \"245122000000\"
      }
    ]
  }
}
'''

### Example

```bash
 v1XbrlConverterGet  htm-url=value  xbrl-url=value  accession-no=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **htmUrl** | **string** | URL of the filing ending with .htm or .html | [optional] [default to null]
 **xbrlUrl** | **string** | URL of the XBRL file ending with .xml | [optional] [default to null]
 **accessionNo** | **string** | SEC filing accession number | [optional] [default to null]

### Return type

[**map[String, AnyType]**](AnyType.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

