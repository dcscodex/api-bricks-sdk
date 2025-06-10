package org.openapitools.api;

import org.openapitools.api.ApiUtils
import org.openapitools.model.V1Trade

class TradesApi {
    String basePath = "https://rest.coinapi.io"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def v1TradesLatestGet ( String filterSymbolId, Boolean includeId, Integer limit, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/v1/trades/latest"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType


        if (filterSymbolId != null) {
            queryParams.put("filter_symbol_id", filterSymbolId)
        }
        if (includeId != null) {
            queryParams.put("include_id", includeId)
        }
        if (limit != null) {
            queryParams.put("limit", limit)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    V1Trade.class )

    }

    def v1TradesSymbolIdHistoryGet ( String symbolId, String date, String timeStart, String timeEnd, Integer limit, Boolean includeId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/v1/trades/${symbol_id}/history"

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
        if (includeId != null) {
            queryParams.put("include_id", includeId)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    V1Trade.class )

    }

    def v1TradesSymbolIdLatestGet ( String symbolId, Integer limit, Boolean includeId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/v1/trades/${symbol_id}/latest"

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
        if (includeId != null) {
            queryParams.put("include_id", includeId)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    V1Trade.class )

    }

}
