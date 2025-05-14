package org.openapitools.api;

import org.openapitools.api.ApiUtils
import org.openapitools.model.MetadataTimeseriesPeriod

class PeriodsApi {
    String basePath = "https://rest-api.indexes.coinapi.io"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def v1MetadataPeriodsGet ( Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/v1/metadata/periods"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType






        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    MetadataTimeseriesPeriod.class )

    }

}
