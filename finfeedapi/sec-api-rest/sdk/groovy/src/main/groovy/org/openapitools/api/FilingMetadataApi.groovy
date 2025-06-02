package org.openapitools.api;

import org.openapitools.api.ApiUtils
import org.openapitools.model.DTOFilingMetadataDto
import org.openapitools.model.DTOFilingSortBy
import org.openapitools.model.MvcProblemDetails
import org.openapitools.model.MvcValidationProblemDetails

class FilingMetadataApi {
    String basePath = "https://api-historical.sec.finfeedapi.com"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def v1FilingsGet ( Long cik, String ticker, String formType, String fillingDateStart, String fillingDateEnd, String reportDateStart, String reportDateEnd, String itemsContain, Integer pageSize, Integer pageNumber, DTOFilingSortBy sortBy, String sortOrder, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/v1/filings"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType


        if (cik != null) {
            queryParams.put("cik", cik)
        }
        if (ticker != null) {
            queryParams.put("ticker", ticker)
        }
        if (formType != null) {
            queryParams.put("form_type", formType)
        }
        if (fillingDateStart != null) {
            queryParams.put("filling_date_start", fillingDateStart)
        }
        if (fillingDateEnd != null) {
            queryParams.put("filling_date_end", fillingDateEnd)
        }
        if (reportDateStart != null) {
            queryParams.put("report_date_start", reportDateStart)
        }
        if (reportDateEnd != null) {
            queryParams.put("report_date_end", reportDateEnd)
        }
        if (itemsContain != null) {
            queryParams.put("items_contain", itemsContain)
        }
        if (pageSize != null) {
            queryParams.put("page_size", pageSize)
        }
        if (pageNumber != null) {
            queryParams.put("page_number", pageNumber)
        }
        if (sortBy != null) {
            queryParams.put("sort_by", sortBy)
        }
        if (sortOrder != null) {
            queryParams.put("sort_order", sortOrder)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    DTOFilingMetadataDto.class )

    }

}
