package org.openapitools.api;

import org.openapitools.api.ApiUtils
import org.openapitools.model.Message
import org.openapitools.model.Position

class PositionsApi {
    String basePath = "http://localhost:8080"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def v1PositionsGet ( String exchangeId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/v1/positions"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType


        if (exchangeId != null) {
            queryParams.put("exchange_id", exchangeId)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    Position.class )

    }

}
