package org.openapitools.api;

import org.openapitools.api.ApiUtils
import org.openapitools.model.Balance

class BalancesApi {
    String basePath = "http://localhost:3001"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def v1BalancesGet ( String exchangeId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/v1/balances"

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
                    Balance.class )

    }

}
