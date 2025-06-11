# FilingMetadataApi

All URIs are relative to *https://api.sec.finfeedapi.com*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**v1FilingsGet**](FilingMetadataApi.md#v1FilingsGet) | **GET** /v1/filings | Query SEC filing metadata |


<a id="v1FilingsGet"></a>
# **v1FilingsGet**
> List&lt;DTOFilingMetadataDto&gt; v1FilingsGet(cik, ticker, formType, fillingDateStart, fillingDateEnd, reportDateStart, reportDateEnd, itemsContain, pageSize, pageNumber, sortBy, sortOrder)

Query SEC filing metadata

Retrieves metadata for SEC filings based on various filter criteria with pagination and sorting support.  ### Available Sort Fields  Field Name | Description -----------|------------- AccessionNumber | SEC filing accession number FilingDate | Date when filing was submitted AcceptanceDateTime | Date and time of filing acceptance ReportDate | Date of the report Size | Size of the filing document  ### Date Format All dates must be provided in YYYY-MM-DD format  ### Form Types Form types can be provided as comma-separated values, e.g.: \&quot;10-K,8-K,10-Q\&quot;  :::tip For optimal performance, use date ranges and form types to narrow down your search :::

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.FilingMetadataApi;

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

    FilingMetadataApi apiInstance = new FilingMetadataApi(defaultClient);
    Long cik = 56L; // Long | Filter by Central Index Key (CIK)
    String ticker = "ticker_example"; // String | Filter by stock ticker symbol
    String formType = "formType_example"; // String | Filter by form type(s) (e.g., \"10-K\", \"8-K\"). Multiple values can be comma-separated
    String fillingDateStart = "fillingDateStart_example"; // String | Filter by filling date start (inclusive), format YYYY-MM-DD
    String fillingDateEnd = "fillingDateEnd_example"; // String | Filter by filling date end (inclusive), format YYYY-MM-DD
    String reportDateStart = "reportDateStart_example"; // String | Filter by report date start (inclusive), format YYYY-MM-DD
    String reportDateEnd = "reportDateEnd_example"; // String | Filter by report date end (inclusive), format YYYY-MM-DD
    String itemsContain = "itemsContain_example"; // String | Filter filings where the 'Items' field contains the specified text
    Integer pageSize = 56; // Integer | Number of results per page (default: 50, max: 200)
    Integer pageNumber = 56; // Integer | Page number to retrieve (default: 1)
    DTOFilingSortBy sortBy = DTOFilingSortBy.fromValue("AccessionNumber"); // DTOFilingSortBy | Field to sort results by (default: AccessionNumber)
    String sortOrder = "desc"; // String | Sort order (asc or desc, default: desc)
    try {
      List<DTOFilingMetadataDto> result = apiInstance.v1FilingsGet(cik, ticker, formType, fillingDateStart, fillingDateEnd, reportDateStart, reportDateEnd, itemsContain, pageSize, pageNumber, sortBy, sortOrder);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling FilingMetadataApi#v1FilingsGet");
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
| **cik** | **Long**| Filter by Central Index Key (CIK) | [optional] |
| **ticker** | **String**| Filter by stock ticker symbol | [optional] |
| **formType** | **String**| Filter by form type(s) (e.g., \&quot;10-K\&quot;, \&quot;8-K\&quot;). Multiple values can be comma-separated | [optional] |
| **fillingDateStart** | **String**| Filter by filling date start (inclusive), format YYYY-MM-DD | [optional] |
| **fillingDateEnd** | **String**| Filter by filling date end (inclusive), format YYYY-MM-DD | [optional] |
| **reportDateStart** | **String**| Filter by report date start (inclusive), format YYYY-MM-DD | [optional] |
| **reportDateEnd** | **String**| Filter by report date end (inclusive), format YYYY-MM-DD | [optional] |
| **itemsContain** | **String**| Filter filings where the &#39;Items&#39; field contains the specified text | [optional] |
| **pageSize** | **Integer**| Number of results per page (default: 50, max: 200) | [optional] |
| **pageNumber** | **Integer**| Page number to retrieve (default: 1) | [optional] |
| **sortBy** | [**DTOFilingSortBy**](.md)| Field to sort results by (default: AccessionNumber) | [optional] [enum: AccessionNumber, FilingDate, ReportDate, AcceptanceDateTime, Size] |
| **sortOrder** | **String**| Sort order (asc or desc, default: desc) | [optional] [default to desc] |

### Return type

[**List&lt;DTOFilingMetadataDto&gt;**](DTOFilingMetadataDto.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful operation |  -  |
| **400** | Invalid request |  -  |
| **500** | Server error |  -  |

