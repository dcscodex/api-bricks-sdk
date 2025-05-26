package org.openapitools.api;

import org.openapitools.api.ApiUtils
import org.openapitools.model.DTOExtractorType
import org.openapitools.model.MvcProblemDetails
import org.openapitools.model.MvcValidationProblemDetails

class ContentExtractionApi {
    String basePath = "https://api-historical.sec.finfeedapi.com"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def v1ExtractorGet ( String accessionNumber, DTOExtractorType type, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/v1/extractor"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (accessionNumber == null) {
            throw new RuntimeException("missing required params accessionNumber")
        }

        if (accessionNumber != null) {
            queryParams.put("accession_number", accessionNumber)
        }
        if (type != null) {
            queryParams.put("type", type)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "map",
                    Object.class )

    }

    def v1ExtractorItemGet ( String accessionNumber, String itemNumber, DTOExtractorType type, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/v1/extractor/item"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (accessionNumber == null) {
            throw new RuntimeException("missing required params accessionNumber")
        }
        // verify required params are set
        if (itemNumber == null) {
            throw new RuntimeException("missing required params itemNumber")
        }

        if (accessionNumber != null) {
            queryParams.put("accession_number", accessionNumber)
        }
        if (itemNumber != null) {
            queryParams.put("item_number", itemNumber)
        }
        if (type != null) {
            queryParams.put("type", type)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    String.class )

    }

}
