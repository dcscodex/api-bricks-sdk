/*
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

import org.openapitools.client.ApiCallback;
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.ApiResponse;
import org.openapitools.client.Configuration;
import org.openapitools.client.Pair;
import org.openapitools.client.ProgressRequestBody;
import org.openapitools.client.ProgressResponseBody;

import com.google.gson.reflect.TypeToken;

import java.io.IOException;


import org.openapitools.client.model.MvcProblemDetails;
import org.openapitools.client.model.MvcValidationProblemDetails;

import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class FileDownloadApi {
    private ApiClient localVarApiClient;
    private int localHostIndex;
    private String localCustomBaseUrl;

    public FileDownloadApi() {
        this(Configuration.getDefaultApiClient());
    }

    public FileDownloadApi(ApiClient apiClient) {
        this.localVarApiClient = apiClient;
    }

    public ApiClient getApiClient() {
        return localVarApiClient;
    }

    public void setApiClient(ApiClient apiClient) {
        this.localVarApiClient = apiClient;
    }

    public int getHostIndex() {
        return localHostIndex;
    }

    public void setHostIndex(int hostIndex) {
        this.localHostIndex = hostIndex;
    }

    public String getCustomBaseUrl() {
        return localCustomBaseUrl;
    }

    public void setCustomBaseUrl(String customBaseUrl) {
        this.localCustomBaseUrl = customBaseUrl;
    }

    /**
     * Build call for v1DownloadGet
     * @param accessionNo SEC filing accession number in format: 0000000000-00-000000 (required)
     * @param fileName Name of the file to download from the filing (required)
     * @param _callback Callback for upload/download progress
     * @return Call to execute
     * @throws ApiException If fail to serialize the request body object
     * @http.response.details
     <table border="1">
       <caption>Response Details</caption>
        <tr><td> Status Code </td><td> Description </td><td> Response Headers </td></tr>
        <tr><td> 200 </td><td> File downloaded successfully </td><td>  -  </td></tr>
        <tr><td> 400 </td><td> Invalid request parameters </td><td>  -  </td></tr>
        <tr><td> 404 </td><td> Filing or file not found </td><td>  -  </td></tr>
        <tr><td> 500 </td><td> Server error </td><td>  -  </td></tr>
     </table>
     */
    public okhttp3.Call v1DownloadGetCall(@javax.annotation.Nonnull String accessionNo, @javax.annotation.Nonnull String fileName, final ApiCallback _callback) throws ApiException {
        String basePath = null;
        // Operation Servers
        String[] localBasePaths = new String[] {  };

        // Determine Base Path to Use
        if (localCustomBaseUrl != null){
            basePath = localCustomBaseUrl;
        } else if ( localBasePaths.length > 0 ) {
            basePath = localBasePaths[localHostIndex];
        } else {
            basePath = null;
        }

        Object localVarPostBody = null;

        // create path and map variables
        String localVarPath = "/v1/download";

        List<Pair> localVarQueryParams = new ArrayList<Pair>();
        List<Pair> localVarCollectionQueryParams = new ArrayList<Pair>();
        Map<String, String> localVarHeaderParams = new HashMap<String, String>();
        Map<String, String> localVarCookieParams = new HashMap<String, String>();
        Map<String, Object> localVarFormParams = new HashMap<String, Object>();

        if (accessionNo != null) {
            localVarQueryParams.addAll(localVarApiClient.parameterToPair("accession_no", accessionNo));
        }

        if (fileName != null) {
            localVarQueryParams.addAll(localVarApiClient.parameterToPair("file_name", fileName));
        }

        final String[] localVarAccepts = {
            "application/octet-stream",
            "text/html",
            "application/xml",
            "text/plain",
            "application/pdf",
            "application/json"
        };
        final String localVarAccept = localVarApiClient.selectHeaderAccept(localVarAccepts);
        if (localVarAccept != null) {
            localVarHeaderParams.put("Accept", localVarAccept);
        }

        final String[] localVarContentTypes = {
        };
        final String localVarContentType = localVarApiClient.selectHeaderContentType(localVarContentTypes);
        if (localVarContentType != null) {
            localVarHeaderParams.put("Content-Type", localVarContentType);
        }

        String[] localVarAuthNames = new String[] { "APIKey", "JWT" };
        return localVarApiClient.buildCall(basePath, localVarPath, "GET", localVarQueryParams, localVarCollectionQueryParams, localVarPostBody, localVarHeaderParams, localVarCookieParams, localVarFormParams, localVarAuthNames, _callback);
    }

    @SuppressWarnings("rawtypes")
    private okhttp3.Call v1DownloadGetValidateBeforeCall(@javax.annotation.Nonnull String accessionNo, @javax.annotation.Nonnull String fileName, final ApiCallback _callback) throws ApiException {
        // verify the required parameter 'accessionNo' is set
        if (accessionNo == null) {
            throw new ApiException("Missing the required parameter 'accessionNo' when calling v1DownloadGet(Async)");
        }

        // verify the required parameter 'fileName' is set
        if (fileName == null) {
            throw new ApiException("Missing the required parameter 'fileName' when calling v1DownloadGet(Async)");
        }

        return v1DownloadGetCall(accessionNo, fileName, _callback);

    }

    /**
     * Download file from SEC EDGAR archive
     * Downloads a specific file from the SEC EDGAR archive using the accession number and filename. The file is streamed directly from the SEC servers to the client.  ### Accession Number Format Accession numbers must be in the format: 0000000000-00-000000 (10 digits, dash, 2 digits, dash, 6 digits)  ### File Name Examples - Primary documents: &#x60;d123456d10k.htm&#x60;, &#x60;d789012d8k.htm&#x60; - XBRL files: &#x60;d123456d10k_htm.xml&#x60;, &#x60;FilingSummary.xml&#x60; - Exhibits: &#x60;d123456dexhibit99.htm&#x60;, &#x60;d123456dex101.htm&#x60;  ### File Types The endpoint supports downloading various file types from SEC filings: - HTML documents (.htm, .html) - XBRL files (.xml, .xsd) - Text files (.txt) - PDF files (.pdf) - Other document formats as submitted to SEC  :::tip You can find available filenames for a specific filing using the &#x60;/v1/filings&#x60; endpoint first :::  :::warning This endpoint streams files directly from the SEC. Large files may take longer to download. :::
     * @param accessionNo SEC filing accession number in format: 0000000000-00-000000 (required)
     * @param fileName Name of the file to download from the filing (required)
     * @throws ApiException If fail to call the API, e.g. server error or cannot deserialize the response body
     * @http.response.details
     <table border="1">
       <caption>Response Details</caption>
        <tr><td> Status Code </td><td> Description </td><td> Response Headers </td></tr>
        <tr><td> 200 </td><td> File downloaded successfully </td><td>  -  </td></tr>
        <tr><td> 400 </td><td> Invalid request parameters </td><td>  -  </td></tr>
        <tr><td> 404 </td><td> Filing or file not found </td><td>  -  </td></tr>
        <tr><td> 500 </td><td> Server error </td><td>  -  </td></tr>
     </table>
     */
    public void v1DownloadGet(@javax.annotation.Nonnull String accessionNo, @javax.annotation.Nonnull String fileName) throws ApiException {
        v1DownloadGetWithHttpInfo(accessionNo, fileName);
    }

    /**
     * Download file from SEC EDGAR archive
     * Downloads a specific file from the SEC EDGAR archive using the accession number and filename. The file is streamed directly from the SEC servers to the client.  ### Accession Number Format Accession numbers must be in the format: 0000000000-00-000000 (10 digits, dash, 2 digits, dash, 6 digits)  ### File Name Examples - Primary documents: &#x60;d123456d10k.htm&#x60;, &#x60;d789012d8k.htm&#x60; - XBRL files: &#x60;d123456d10k_htm.xml&#x60;, &#x60;FilingSummary.xml&#x60; - Exhibits: &#x60;d123456dexhibit99.htm&#x60;, &#x60;d123456dex101.htm&#x60;  ### File Types The endpoint supports downloading various file types from SEC filings: - HTML documents (.htm, .html) - XBRL files (.xml, .xsd) - Text files (.txt) - PDF files (.pdf) - Other document formats as submitted to SEC  :::tip You can find available filenames for a specific filing using the &#x60;/v1/filings&#x60; endpoint first :::  :::warning This endpoint streams files directly from the SEC. Large files may take longer to download. :::
     * @param accessionNo SEC filing accession number in format: 0000000000-00-000000 (required)
     * @param fileName Name of the file to download from the filing (required)
     * @return ApiResponse&lt;Void&gt;
     * @throws ApiException If fail to call the API, e.g. server error or cannot deserialize the response body
     * @http.response.details
     <table border="1">
       <caption>Response Details</caption>
        <tr><td> Status Code </td><td> Description </td><td> Response Headers </td></tr>
        <tr><td> 200 </td><td> File downloaded successfully </td><td>  -  </td></tr>
        <tr><td> 400 </td><td> Invalid request parameters </td><td>  -  </td></tr>
        <tr><td> 404 </td><td> Filing or file not found </td><td>  -  </td></tr>
        <tr><td> 500 </td><td> Server error </td><td>  -  </td></tr>
     </table>
     */
    public ApiResponse<Void> v1DownloadGetWithHttpInfo(@javax.annotation.Nonnull String accessionNo, @javax.annotation.Nonnull String fileName) throws ApiException {
        okhttp3.Call localVarCall = v1DownloadGetValidateBeforeCall(accessionNo, fileName, null);
        return localVarApiClient.execute(localVarCall);
    }

    /**
     * Download file from SEC EDGAR archive (asynchronously)
     * Downloads a specific file from the SEC EDGAR archive using the accession number and filename. The file is streamed directly from the SEC servers to the client.  ### Accession Number Format Accession numbers must be in the format: 0000000000-00-000000 (10 digits, dash, 2 digits, dash, 6 digits)  ### File Name Examples - Primary documents: &#x60;d123456d10k.htm&#x60;, &#x60;d789012d8k.htm&#x60; - XBRL files: &#x60;d123456d10k_htm.xml&#x60;, &#x60;FilingSummary.xml&#x60; - Exhibits: &#x60;d123456dexhibit99.htm&#x60;, &#x60;d123456dex101.htm&#x60;  ### File Types The endpoint supports downloading various file types from SEC filings: - HTML documents (.htm, .html) - XBRL files (.xml, .xsd) - Text files (.txt) - PDF files (.pdf) - Other document formats as submitted to SEC  :::tip You can find available filenames for a specific filing using the &#x60;/v1/filings&#x60; endpoint first :::  :::warning This endpoint streams files directly from the SEC. Large files may take longer to download. :::
     * @param accessionNo SEC filing accession number in format: 0000000000-00-000000 (required)
     * @param fileName Name of the file to download from the filing (required)
     * @param _callback The callback to be executed when the API call finishes
     * @return The request call
     * @throws ApiException If fail to process the API call, e.g. serializing the request body object
     * @http.response.details
     <table border="1">
       <caption>Response Details</caption>
        <tr><td> Status Code </td><td> Description </td><td> Response Headers </td></tr>
        <tr><td> 200 </td><td> File downloaded successfully </td><td>  -  </td></tr>
        <tr><td> 400 </td><td> Invalid request parameters </td><td>  -  </td></tr>
        <tr><td> 404 </td><td> Filing or file not found </td><td>  -  </td></tr>
        <tr><td> 500 </td><td> Server error </td><td>  -  </td></tr>
     </table>
     */
    public okhttp3.Call v1DownloadGetAsync(@javax.annotation.Nonnull String accessionNo, @javax.annotation.Nonnull String fileName, final ApiCallback<Void> _callback) throws ApiException {

        okhttp3.Call localVarCall = v1DownloadGetValidateBeforeCall(accessionNo, fileName, _callback);
        localVarApiClient.executeAsync(localVarCall, _callback);
        return localVarCall;
    }
}
