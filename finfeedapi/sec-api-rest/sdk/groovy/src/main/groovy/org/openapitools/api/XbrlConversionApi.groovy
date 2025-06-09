package org.openapitools.api;

import org.openapitools.api.ApiUtils
import org.openapitools.model.MvcProblemDetails
import org.openapitools.model.MvcValidationProblemDetails

class XbrlConversionApi {
    String basePath = "https://api.sec.finfeedapi.com"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def v1XbrlConverterGet ( String htmUrl, String xbrlUrl, String accessionNo, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/v1/xbrl-converter"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType


        if (htmUrl != null) {
            queryParams.put("htm-url", htmUrl)
        }
        if (xbrlUrl != null) {
            queryParams.put("xbrl-url", xbrlUrl)
        }
        if (accessionNo != null) {
            queryParams.put("accession-no", accessionNo)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "map",
                    Object.class )

    }

}
