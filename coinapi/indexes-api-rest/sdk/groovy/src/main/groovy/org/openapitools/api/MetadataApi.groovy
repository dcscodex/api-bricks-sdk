package org.openapitools.api;

import org.openapitools.api.ApiUtils
import org.openapitools.model.MetadataExchange

class MetadataApi {
    String basePath = "https://rest-api.indexes.coinapi.io"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def apiMetadataExchangesExchangeIdGet ( String exchangeId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/metadata/exchanges/${exchange_id}"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (exchangeId == null) {
            throw new RuntimeException("missing required params exchangeId")
        }





        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    MetadataExchange.class )

    }

    def apiMetadataExchangesGet ( String filterExchangeId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/metadata/exchanges"

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
                    MetadataExchange.class )

    }

}
