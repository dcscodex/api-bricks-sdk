/**
 * FinFeedAPI SEC REST API
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * The version of the OpenAPI document: v1
 * Contact: support@apibricks.io
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

package org.openapitools.client.api;

import org.openapitools.client.ApiInvoker;
import org.openapitools.client.ApiException;
import org.openapitools.client.Pair;

import org.openapitools.client.model.*;

import java.util.*;

import com.android.volley.Response;
import com.android.volley.VolleyError;

import java.util.Map;
import org.openapitools.client.model.MvcProblemDetails;
import org.openapitools.client.model.MvcValidationProblemDetails;
import org.openapitools.client.model.OasAnyTypeNotMapped;

import org.apache.http.HttpEntity;
import org.apache.http.entity.mime.MultipartEntityBuilder;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeoutException;

public class XBRLConversionApi {
  String basePath = "https://api.sec.finfeedapi.com";
  ApiInvoker apiInvoker = ApiInvoker.getInstance();

  public void addHeader(String key, String value) {
    getInvoker().addDefaultHeader(key, value);
  }

  public ApiInvoker getInvoker() {
    return apiInvoker;
  }

  public void setBasePath(String basePath) {
    this.basePath = basePath;
  }

  public String getBasePath() {
    return basePath;
  }

  /**
  * Convert XBRL data to JSON format
  * Converts XBRL data to JSON format using one of three possible input methods.  ### Input Methods  1. HTML URL (htm-url)    - URL of the filing ending with .htm or .html    - Both filing URLs and index page URLs are accepted    - Example: https://www.sec.gov/Archives/edgar/data/1318605/000156459021004599/tsla-10k_20201231.htm  2. XBRL URL (xbrl-url)    - URL of the XBRL file ending with .xml    - Can be found in the dataFiles array from Query API    - Example: https://www.sec.gov/Archives/edgar/data/1318605/000156459021004599/tsla-10k_20201231_htm.xml  3. Accession Number (accession-no)    - The SEC filing accession number    - Example: 0001564590-21-004599  :::note Only one of the three parameters should be provided. If multiple parameters are provided, the priority order is: 1. htm-url 2. xbrl-url 3. accession-no :::  ### Supported Filing Types  - Annual Reports (10-K) - Quarterly Reports (10-Q) - Current Reports (8-K) - Registration Statements (S-1, S-3) - Foreign Private Issuer Reports (20-F, 40-F)  ### Response Format  The API returns a JSON object containing: - Financial statements (Income Statement, Balance Sheet, Cash Flow Statement) - Accounting policies and footnotes - Company information - Filing metadata  ### Example Response &#x60;&#x60;&#x60;json {   \&quot;StatementsOfIncome\&quot;: {     \&quot;RevenueFromContractWithCustomerExcludingAssessedTax\&quot;: [       {         \&quot;decimals\&quot;: \&quot;-6\&quot;,         \&quot;unitRef\&quot;: \&quot;U_USD\&quot;,         \&quot;period\&quot;: {           \&quot;startDate\&quot;: \&quot;2023-07-01\&quot;,           \&quot;endDate\&quot;: \&quot;2024-06-30\&quot;         },         \&quot;value\&quot;: \&quot;245122000000\&quot;       }     ]   } } &#x60;&#x60;&#x60;
   * @param htmUrl URL of the filing ending with .htm or .html
   * @param xbrlUrl URL of the XBRL file ending with .xml
   * @param accessionNo SEC filing accession number
   * @return Map<String, OasAnyTypeNotMapped>
  */
  public Map<String, OasAnyTypeNotMapped> v1XbrlConverterGet (String htmUrl, String xbrlUrl, String accessionNo) throws TimeoutException, ExecutionException, InterruptedException, ApiException {
    Object postBody = null;

    // create path and map variables
    String path = "/v1/xbrl-converter";

    // query params
    List<Pair> queryParams = new ArrayList<Pair>();
    // header params
    Map<String, String> headerParams = new HashMap<String, String>();
    // form params
    Map<String, String> formParams = new HashMap<String, String>();
    queryParams.addAll(ApiInvoker.parameterToPairs("", "htm-url", htmUrl));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "xbrl-url", xbrlUrl));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "accession-no", accessionNo));
    String[] contentTypes = {
    };
    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

    if (contentType.startsWith("multipart/form-data")) {
      // file uploading
      MultipartEntityBuilder localVarBuilder = MultipartEntityBuilder.create();
      HttpEntity httpEntity = localVarBuilder.build();
      postBody = httpEntity;
    } else {
      // normal form params
    }

    String[] authNames = new String[] { "APIKey", "JWT" };

    try {
      String localVarResponse = apiInvoker.invokeAPI (basePath, path, "GET", queryParams, postBody, headerParams, formParams, contentType, authNames);
      if (localVarResponse != null) {
         return (Map<String, OasAnyTypeNotMapped>) ApiInvoker.deserialize(localVarResponse, "map", OasAnyTypeNotMapped.class);
      } else {
         return null;
      }
    } catch (ApiException ex) {
       throw ex;
    } catch (InterruptedException ex) {
       throw ex;
    } catch (ExecutionException ex) {
      if (ex.getCause() instanceof VolleyError) {
        VolleyError volleyError = (VolleyError)ex.getCause();
        if (volleyError.networkResponse != null) {
          throw new ApiException(volleyError.networkResponse.statusCode, volleyError.getMessage());
        }
      }
      throw ex;
    } catch (TimeoutException ex) {
      throw ex;
    }
  }

      /**
   * Convert XBRL data to JSON format
   * Converts XBRL data to JSON format using one of three possible input methods.  ### Input Methods  1. HTML URL (htm-url)    - URL of the filing ending with .htm or .html    - Both filing URLs and index page URLs are accepted    - Example: https://www.sec.gov/Archives/edgar/data/1318605/000156459021004599/tsla-10k_20201231.htm  2. XBRL URL (xbrl-url)    - URL of the XBRL file ending with .xml    - Can be found in the dataFiles array from Query API    - Example: https://www.sec.gov/Archives/edgar/data/1318605/000156459021004599/tsla-10k_20201231_htm.xml  3. Accession Number (accession-no)    - The SEC filing accession number    - Example: 0001564590-21-004599  :::note Only one of the three parameters should be provided. If multiple parameters are provided, the priority order is: 1. htm-url 2. xbrl-url 3. accession-no :::  ### Supported Filing Types  - Annual Reports (10-K) - Quarterly Reports (10-Q) - Current Reports (8-K) - Registration Statements (S-1, S-3) - Foreign Private Issuer Reports (20-F, 40-F)  ### Response Format  The API returns a JSON object containing: - Financial statements (Income Statement, Balance Sheet, Cash Flow Statement) - Accounting policies and footnotes - Company information - Filing metadata  ### Example Response &#x60;&#x60;&#x60;json {   \&quot;StatementsOfIncome\&quot;: {     \&quot;RevenueFromContractWithCustomerExcludingAssessedTax\&quot;: [       {         \&quot;decimals\&quot;: \&quot;-6\&quot;,         \&quot;unitRef\&quot;: \&quot;U_USD\&quot;,         \&quot;period\&quot;: {           \&quot;startDate\&quot;: \&quot;2023-07-01\&quot;,           \&quot;endDate\&quot;: \&quot;2024-06-30\&quot;         },         \&quot;value\&quot;: \&quot;245122000000\&quot;       }     ]   } } &#x60;&#x60;&#x60;
   * @param htmUrl URL of the filing ending with .htm or .html   * @param xbrlUrl URL of the XBRL file ending with .xml   * @param accessionNo SEC filing accession number
  */
  public void v1XbrlConverterGet (String htmUrl, String xbrlUrl, String accessionNo, final Response.Listener<Map<String, OasAnyTypeNotMapped>> responseListener, final Response.ErrorListener errorListener) {
    Object postBody = null;


    // create path and map variables
    String path = "/v1/xbrl-converter".replaceAll("\\{format\\}","json");

    // query params
    List<Pair> queryParams = new ArrayList<Pair>();
    // header params
    Map<String, String> headerParams = new HashMap<String, String>();
    // form params
    Map<String, String> formParams = new HashMap<String, String>();

    queryParams.addAll(ApiInvoker.parameterToPairs("", "htm-url", htmUrl));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "xbrl-url", xbrlUrl));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "accession-no", accessionNo));


    String[] contentTypes = {
      
    };
    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

    if (contentType.startsWith("multipart/form-data")) {
      // file uploading
      MultipartEntityBuilder localVarBuilder = MultipartEntityBuilder.create();
      

      HttpEntity httpEntity = localVarBuilder.build();
      postBody = httpEntity;
    } else {
      // normal form params
          }

    String[] authNames = new String[] { "APIKey", "JWT" };

    try {
      apiInvoker.invokeAPI(basePath, path, "GET", queryParams, postBody, headerParams, formParams, contentType, authNames,
        new Response.Listener<String>() {
          @Override
          public void onResponse(String localVarResponse) {
            try {
              responseListener.onResponse((Map<String, OasAnyTypeNotMapped>) ApiInvoker.deserialize(localVarResponse,  "map", OasAnyTypeNotMapped.class));
            } catch (ApiException exception) {
               errorListener.onErrorResponse(new VolleyError(exception));
            }
          }
      }, new Response.ErrorListener() {
          @Override
          public void onErrorResponse(VolleyError error) {
            errorListener.onErrorResponse(error);
          }
      });
    } catch (ApiException ex) {
      errorListener.onErrorResponse(new VolleyError(ex));
    }
  }
}
