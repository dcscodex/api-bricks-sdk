/*
FinFeedAPI SEC REST API

No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

API version: v1
Contact: support@apibricks.io
*/

// Code generated by OpenAPI Generator (https://openapi-generator.tech); DO NOT EDIT.

package openapi

import (
	"bytes"
	"context"
	"io"
	"net/http"
	"net/url"
)


// FileDownloadAPIService FileDownloadAPI service
type FileDownloadAPIService service

type ApiV1DownloadGetRequest struct {
	ctx context.Context
	ApiService *FileDownloadAPIService
	accessionNo *string
	fileName *string
}

// SEC filing accession number in format: 0000000000-00-000000
func (r ApiV1DownloadGetRequest) AccessionNo(accessionNo string) ApiV1DownloadGetRequest {
	r.accessionNo = &accessionNo
	return r
}

// Name of the file to download from the filing
func (r ApiV1DownloadGetRequest) FileName(fileName string) ApiV1DownloadGetRequest {
	r.fileName = &fileName
	return r
}

func (r ApiV1DownloadGetRequest) Execute() (*http.Response, error) {
	return r.ApiService.V1DownloadGetExecute(r)
}

/*
V1DownloadGet Download file from SEC EDGAR archive

Downloads a specific file from the SEC EDGAR archive using the accession number and filename.
The file is streamed directly from the SEC servers to the client.

### Accession Number Format
Accession numbers must be in the format: 0000000000-00-000000 (10 digits, dash, 2 digits, dash, 6 digits)

### File Name Examples
- Primary documents: `d123456d10k.htm`, `d789012d8k.htm`
- XBRL files: `d123456d10k_htm.xml`, `FilingSummary.xml`
- Exhibits: `d123456dexhibit99.htm`, `d123456dex101.htm`

### File Types
The endpoint supports downloading various file types from SEC filings:
- HTML documents (.htm, .html)
- XBRL files (.xml, .xsd)
- Text files (.txt)
- PDF files (.pdf)
- Other document formats as submitted to SEC

:::tip
You can find available filenames for a specific filing using the `/v1/filings` endpoint first
:::

:::warning
This endpoint streams files directly from the SEC. Large files may take longer to download.
:::

 @param ctx context.Context - for authentication, logging, cancellation, deadlines, tracing, etc. Passed from http.Request or context.Background().
 @return ApiV1DownloadGetRequest
*/
func (a *FileDownloadAPIService) V1DownloadGet(ctx context.Context) ApiV1DownloadGetRequest {
	return ApiV1DownloadGetRequest{
		ApiService: a,
		ctx: ctx,
	}
}

// Execute executes the request
func (a *FileDownloadAPIService) V1DownloadGetExecute(r ApiV1DownloadGetRequest) (*http.Response, error) {
	var (
		localVarHTTPMethod   = http.MethodGet
		localVarPostBody     interface{}
		formFiles            []formFile
	)

	localBasePath, err := a.client.cfg.ServerURLWithContext(r.ctx, "FileDownloadAPIService.V1DownloadGet")
	if err != nil {
		return nil, &GenericOpenAPIError{error: err.Error()}
	}

	localVarPath := localBasePath + "/v1/download"

	localVarHeaderParams := make(map[string]string)
	localVarQueryParams := url.Values{}
	localVarFormParams := url.Values{}
	if r.accessionNo == nil {
		return nil, reportError("accessionNo is required and must be specified")
	}
	if r.fileName == nil {
		return nil, reportError("fileName is required and must be specified")
	}

	parameterAddToHeaderOrQuery(localVarQueryParams, "accession_no", r.accessionNo, "form", "")
	parameterAddToHeaderOrQuery(localVarQueryParams, "file_name", r.fileName, "form", "")
	// to determine the Content-Type header
	localVarHTTPContentTypes := []string{}

	// set Content-Type header
	localVarHTTPContentType := selectHeaderContentType(localVarHTTPContentTypes)
	if localVarHTTPContentType != "" {
		localVarHeaderParams["Content-Type"] = localVarHTTPContentType
	}

	// to determine the Accept header
	localVarHTTPHeaderAccepts := []string{"application/octet-stream", "text/html", "application/xml", "text/plain", "application/pdf", "application/json"}

	// set Accept header
	localVarHTTPHeaderAccept := selectHeaderAccept(localVarHTTPHeaderAccepts)
	if localVarHTTPHeaderAccept != "" {
		localVarHeaderParams["Accept"] = localVarHTTPHeaderAccept
	}
	if r.ctx != nil {
		// API Key Authentication
		if auth, ok := r.ctx.Value(ContextAPIKeys).(map[string]APIKey); ok {
			if apiKey, ok := auth["APIKey"]; ok {
				var key string
				if apiKey.Prefix != "" {
					key = apiKey.Prefix + " " + apiKey.Key
				} else {
					key = apiKey.Key
				}
				localVarHeaderParams["Authorization"] = key
			}
		}
	}
	req, err := a.client.prepareRequest(r.ctx, localVarPath, localVarHTTPMethod, localVarPostBody, localVarHeaderParams, localVarQueryParams, localVarFormParams, formFiles)
	if err != nil {
		return nil, err
	}

	localVarHTTPResponse, err := a.client.callAPI(req)
	if err != nil || localVarHTTPResponse == nil {
		return localVarHTTPResponse, err
	}

	localVarBody, err := io.ReadAll(localVarHTTPResponse.Body)
	localVarHTTPResponse.Body.Close()
	localVarHTTPResponse.Body = io.NopCloser(bytes.NewBuffer(localVarBody))
	if err != nil {
		return localVarHTTPResponse, err
	}

	if localVarHTTPResponse.StatusCode >= 300 {
		newErr := &GenericOpenAPIError{
			body:  localVarBody,
			error: localVarHTTPResponse.Status,
		}
		if localVarHTTPResponse.StatusCode == 400 {
			var v MvcValidationProblemDetails
			err = a.client.decode(&v, localVarBody, localVarHTTPResponse.Header.Get("Content-Type"))
			if err != nil {
				newErr.error = err.Error()
				return localVarHTTPResponse, newErr
			}
					newErr.error = formatErrorMessage(localVarHTTPResponse.Status, &v)
					newErr.model = v
			return localVarHTTPResponse, newErr
		}
		if localVarHTTPResponse.StatusCode == 404 {
			var v MvcProblemDetails
			err = a.client.decode(&v, localVarBody, localVarHTTPResponse.Header.Get("Content-Type"))
			if err != nil {
				newErr.error = err.Error()
				return localVarHTTPResponse, newErr
			}
					newErr.error = formatErrorMessage(localVarHTTPResponse.Status, &v)
					newErr.model = v
			return localVarHTTPResponse, newErr
		}
		if localVarHTTPResponse.StatusCode == 500 {
			var v MvcProblemDetails
			err = a.client.decode(&v, localVarBody, localVarHTTPResponse.Header.Get("Content-Type"))
			if err != nil {
				newErr.error = err.Error()
				return localVarHTTPResponse, newErr
			}
					newErr.error = formatErrorMessage(localVarHTTPResponse.Status, &v)
					newErr.model = v
		}
		return localVarHTTPResponse, newErr
	}

	return localVarHTTPResponse, nil
}
