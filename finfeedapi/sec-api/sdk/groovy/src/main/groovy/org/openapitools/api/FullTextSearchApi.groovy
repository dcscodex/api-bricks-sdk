package org.openapitools.api;

import org.openapitools.api.ApiUtils
import org.openapitools.model.DTOSecFilingResultDto
import org.openapitools.model.MvcProblemDetails
import org.openapitools.model.MvcValidationProblemDetails

class FullTextSearchApi {
    String basePath = "https://api-historical.sec.finfeedapi.com"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def v1FullTextGet ( String formType, String fillingDateStart, String fillingDateEnd, String textContains, String textNotContain, Integer pageSize, Integer pageNumber, String sortBy, String sortOrder, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/v1/full-text"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType


        if (formType != null) {
            queryParams.put("form_type", formType)
        }
        if (fillingDateStart != null) {
            queryParams.put("filling_date_start", fillingDateStart)
        }
        if (fillingDateEnd != null) {
            queryParams.put("filling_date_end", fillingDateEnd)
        }
        if (textContains != null) {
            queryParams.put("text_contains", textContains)
        }
        if (textNotContain != null) {
            queryParams.put("text_not_contain", textNotContain)
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
                    DTOSecFilingResultDto.class )

    }

}
