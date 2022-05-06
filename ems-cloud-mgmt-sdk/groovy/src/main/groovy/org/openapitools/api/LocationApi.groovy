package org.openapitools.api;

import org.openapitools.api.ApiUtils
import org.openapitools.model.Locations

class LocationApi {
    String basePath = "https://ems-mgmt-sandbox.coinapi.io"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def locations ( Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/v1/locations"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType






        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    Locations.class )

    }

}
