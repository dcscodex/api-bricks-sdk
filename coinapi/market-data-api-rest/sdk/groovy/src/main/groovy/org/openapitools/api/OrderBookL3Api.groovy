package org.openapitools.api;

import org.openapitools.api.ApiUtils
import org.openapitools.model.V1OrderBookBase

class OrderBookL3Api {
    String basePath = "https://rest.coinapi.io"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def v1Orderbooks3CurrentGet ( String filterSymbolId, Integer limitLevels, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/v1/orderbooks3/current"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType


        if (filterSymbolId != null) {
            queryParams.put("filter_symbol_id", filterSymbolId)
        }
        if (limitLevels != null) {
            queryParams.put("limit_levels", limitLevels)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    V1OrderBookBase.class )

    }

    def v1Orderbooks3SymbolIdCurrentGet ( String symbolId, Integer limitLevels, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/v1/orderbooks3/${symbol_id}/current"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (symbolId == null) {
            throw new RuntimeException("missing required params symbolId")
        }

        if (limitLevels != null) {
            queryParams.put("limit_levels", limitLevels)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    V1OrderBookBase.class )

    }

}
