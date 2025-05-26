# RestApi.XBRLConversionApi

All URIs are relative to *https://api-historical.sec.finfeedapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1XbrlConverterGet**](XBRLConversionApi.md#v1XbrlConverterGet) | **GET** /v1/xbrl-converter | Convert XBRL data to JSON format



## v1XbrlConverterGet

> {String: Object} v1XbrlConverterGet(opts)

Convert XBRL data to JSON format

Converts XBRL data to JSON format using one of three possible input methods.    ### Input Methods    1. HTML URL (htm-url)     - URL of the filing ending with .htm or .html     - Both filing URLs and index page URLs are accepted     - Example: https://www.sec.gov/Archives/edgar/data/1318605/000156459021004599/tsla-10k_20201231.htm    2. XBRL URL (xbrl-url)     - URL of the XBRL file ending with .xml     - Can be found in the dataFiles array from Query API     - Example: https://www.sec.gov/Archives/edgar/data/1318605/000156459021004599/tsla-10k_20201231_htm.xml    3. Accession Number (accession-no)     - The SEC filing accession number     - Example: 0001564590-21-004599    :::note  Only one of the three parameters should be provided. If multiple parameters are provided, the priority order is:  1. htm-url  2. xbrl-url  3. accession-no  :::    ### Supported Filing Types    - Annual Reports (10-K)  - Quarterly Reports (10-Q)  - Current Reports (8-K)  - Registration Statements (S-1, S-3)  - Foreign Private Issuer Reports (20-F, 40-F)    ### Response Format    The API returns a JSON object containing:  - Financial statements (Income Statement, Balance Sheet, Cash Flow Statement)  - Accounting policies and footnotes  - Company information  - Filing metadata    ### Example Response  &#x60;&#x60;&#x60;json  {    \&quot;StatementsOfIncome\&quot;: {      \&quot;RevenueFromContractWithCustomerExcludingAssessedTax\&quot;: [        {          \&quot;decimals\&quot;: \&quot;-6\&quot;,          \&quot;unitRef\&quot;: \&quot;U_USD\&quot;,          \&quot;period\&quot;: {            \&quot;startDate\&quot;: \&quot;2023-07-01\&quot;,            \&quot;endDate\&quot;: \&quot;2024-06-30\&quot;          },          \&quot;value\&quot;: \&quot;245122000000\&quot;        }      ]    }  }  &#x60;&#x60;&#x60;

### Example

```javascript
import RestApi from 'rest_api';

let apiInstance = new RestApi.XBRLConversionApi();
let opts = {
  'htmUrl': "htmUrl_example", // String | URL of the filing ending with .htm or .html
  'xbrlUrl': "xbrlUrl_example", // String | URL of the XBRL file ending with .xml
  'accessionNo': "accessionNo_example" // String | SEC filing accession number
};
apiInstance.v1XbrlConverterGet(opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **htmUrl** | **String**| URL of the filing ending with .htm or .html | [optional] 
 **xbrlUrl** | **String**| URL of the XBRL file ending with .xml | [optional] 
 **accessionNo** | **String**| SEC filing accession number | [optional] 

### Return type

**{String: Object}**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

