package org.openapitools.api;

import org.openapitools.api.ApiUtils
import org.openapitools.model.V1OrderBook
import org.openapitools.model.V1OrderBookBase
import org.openapitools.model.V1OrderBookDepth

class OrderBookApi {
    String basePath = "https://rest.coinapi.io"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def v1OrderbooksSymbolIdCurrentGet ( String symbolId, Integer limitLevels, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/v1/orderbooks/${symbol_id}/current"

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

    def v1OrderbooksSymbolIdDepthCurrentGet ( String symbolId, Integer limitLevels, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/v1/orderbooks/${symbol_id}/depth/current"

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
                    V1OrderBookDepth.class )

    }

    def v1OrderbooksSymbolIdHistoryGet ( String symbolId, String date, String timeStart, String timeEnd, Integer limit, Integer limitLevels, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/v1/orderbooks/${symbol_id}/history"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (symbolId == null) {
            throw new RuntimeException("missing required params symbolId")
        }

        if (date != null) {
            queryParams.put("date", date)
        }
        if (timeStart != null) {
            queryParams.put("time_start", timeStart)
        }
        if (timeEnd != null) {
            queryParams.put("time_end", timeEnd)
        }
        if (limit != null) {
            queryParams.put("limit", limit)
        }
        if (limitLevels != null) {
            queryParams.put("limit_levels", limitLevels)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    V1OrderBook.class )

    }

    def v1OrderbooksSymbolIdLatestGet ( String symbolId, Integer limit, Integer limitLevels, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/v1/orderbooks/${symbol_id}/latest"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (symbolId == null) {
            throw new RuntimeException("missing required params symbolId")
        }

        if (limit != null) {
            queryParams.put("limit", limit)
        }
        if (limitLevels != null) {
            queryParams.put("limit_levels", limitLevels)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    V1OrderBook.class )

    }

}
