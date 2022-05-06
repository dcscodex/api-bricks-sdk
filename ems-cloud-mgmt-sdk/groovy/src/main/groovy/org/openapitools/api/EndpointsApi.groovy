package org.openapitools.api;

import org.openapitools.api.ApiUtils
import org.openapitools.model.AccountEndpoint

class EndpointsApi {
    String basePath = "https://ems-mgmt-sandbox.coinapi.io"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def endpoints ( List<String> filterExchangeId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/v1/endpoints"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType


        if (filterExchangeId != null) {
            queryParams.put("filter_exchange_id", filterExchangeId)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    AccountEndpoint.class )

    }

}
