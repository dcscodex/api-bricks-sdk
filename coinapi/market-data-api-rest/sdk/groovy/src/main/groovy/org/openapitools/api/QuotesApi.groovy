package org.openapitools.api;

import org.openapitools.api.ApiUtils
import org.openapitools.model.V1Quote
import org.openapitools.model.V1QuoteTrade

class QuotesApi {
    String basePath = "https://rest.coinapi.io"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def v1QuotesCurrentGet ( String filterSymbolId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/v1/quotes/current"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType


        if (filterSymbolId != null) {
            queryParams.put("filter_symbol_id", filterSymbolId)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    V1QuoteTrade.class )

    }

    def v1QuotesLatestGet ( String filterSymbolId, Integer limit, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/v1/quotes/latest"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType


        if (filterSymbolId != null) {
            queryParams.put("filter_symbol_id", filterSymbolId)
        }
        if (limit != null) {
            queryParams.put("limit", limit)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    V1Quote.class )

    }

    def v1QuotesSymbolIdCurrentGet ( String symbolId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/v1/quotes/${symbol_id}/current"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (symbolId == null) {
            throw new RuntimeException("missing required params symbolId")
        }





        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    V1QuoteTrade.class )

    }

    def v1QuotesSymbolIdHistoryGet ( String symbolId, String date, String timeStart, String timeEnd, Integer limit, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/v1/quotes/${symbol_id}/history"

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




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    V1Quote.class )

    }

    def v1QuotesSymbolIdLatestGet ( String symbolId, Integer limit, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/v1/quotes/${symbol_id}/latest"

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




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    V1Quote.class )

    }

}
