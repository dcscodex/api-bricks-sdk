package org.openapitools.api;

import org.openapitools.api.ApiUtils

class CertificateApi {
    String basePath = "https://ems-mgmt-sandbox.coinapi.io"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def certificate ( Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/v1/certificate/pem"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType






        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    String.class )

    }

}
