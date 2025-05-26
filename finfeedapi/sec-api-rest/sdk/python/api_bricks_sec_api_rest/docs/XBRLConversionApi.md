# api_bricks_sec_api_rest.XBRLConversionApi

All URIs are relative to *https://api-historical.sec.finfeedapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1_xbrl_converter_get**](XBRLConversionApi.md#v1_xbrl_converter_get) | **GET** /v1/xbrl-converter | Convert XBRL data to JSON format


# **v1_xbrl_converter_get**
> Dict[str, object] v1_xbrl_converter_get(htm_url=htm_url, xbrl_url=xbrl_url, accession_no=accession_no)

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
```json
{
  "StatementsOfIncome": {
    "RevenueFromContractWithCustomerExcludingAssessedTax": [
      {
        "decimals": "-6",
        "unitRef": "U_USD",
        "period": {
          "startDate": "2023-07-01",
          "endDate": "2024-06-30"
        },
        "value": "245122000000"
      }
    ]
  }
}
```

### Example


```python
import api_bricks_sec_api_rest
from api_bricks_sec_api_rest.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api-historical.sec.finfeedapi.com
# See configuration.py for a list of all supported configuration parameters.
configuration = api_bricks_sec_api_rest.Configuration(
    host = "https://api-historical.sec.finfeedapi.com"
)


# Enter a context with an instance of the API client
with api_bricks_sec_api_rest.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = api_bricks_sec_api_rest.XBRLConversionApi(api_client)
    htm_url = 'htm_url_example' # str | URL of the filing ending with .htm or .html (optional)
    xbrl_url = 'xbrl_url_example' # str | URL of the XBRL file ending with .xml (optional)
    accession_no = 'accession_no_example' # str | SEC filing accession number (optional)

    try:
        # Convert XBRL data to JSON format
        api_response = api_instance.v1_xbrl_converter_get(htm_url=htm_url, xbrl_url=xbrl_url, accession_no=accession_no)
        print("The response of XBRLConversionApi->v1_xbrl_converter_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling XBRLConversionApi->v1_xbrl_converter_get: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **htm_url** | **str**| URL of the filing ending with .htm or .html | [optional] 
 **xbrl_url** | **str**| URL of the XBRL file ending with .xml | [optional] 
 **accession_no** | **str**| SEC filing accession number | [optional] 

### Return type

**Dict[str, object]**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successful conversion |  -  |
**400** | Invalid request - check parameter format |  -  |
**404** | Filing or XBRL data not found |  -  |
**500** | Server error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

