package org.openapitools.api;

import org.openapitools.api.ApiUtils
import org.openapitools.model.ExchangeLoginRequire

class ExchangeApi {
    String basePath = "https://ems-mgmt-sandbox.coinapi.io"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def exchangeLoginRequire ( Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/v1/exchanges"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType






        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    ExchangeLoginRequire.class )

    }

}
