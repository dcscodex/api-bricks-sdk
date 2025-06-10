package org.openapitools.api;

import org.openapitools.api.ApiUtils
import org.openapitools.model.ModelsExchangeTimeseriesItem
import org.openapitools.model.V1TimeseriesItem
import org.openapitools.model.V1TimeseriesPeriod

class OhlcvApi {
    String basePath = "https://rest.coinapi.io"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def v1OhlcvExchangesExchangeIdHistoryGet ( String exchangeId, String periodId, String timeStart, String timeEnd, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/v1/ohlcv/exchanges/${exchange_id}/history"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (exchangeId == null) {
            throw new RuntimeException("missing required params exchangeId")
        }
        // verify required params are set
        if (periodId == null) {
            throw new RuntimeException("missing required params periodId")
        }
        // verify required params are set
        if (timeStart == null) {
            throw new RuntimeException("missing required params timeStart")
        }
        // verify required params are set
        if (timeEnd == null) {
            throw new RuntimeException("missing required params timeEnd")
        }

        if (periodId != null) {
            queryParams.put("period_id", periodId)
        }
        if (timeStart != null) {
            queryParams.put("time_start", timeStart)
        }
        if (timeEnd != null) {
            queryParams.put("time_end", timeEnd)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    ModelsExchangeTimeseriesItem.class )

    }

    def v1OhlcvPeriodsGet ( Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/v1/ohlcv/periods"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType






        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    V1TimeseriesPeriod.class )

    }

    def v1OhlcvSymbolIdHistoryGet ( String symbolId, String periodId, String timeStart, String timeEnd, Integer limit, Boolean includeEmptyItems, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/v1/ohlcv/${symbol_id}/history"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (symbolId == null) {
            throw new RuntimeException("missing required params symbolId")
        }
        // verify required params are set
        if (periodId == null) {
            throw new RuntimeException("missing required params periodId")
        }

        if (periodId != null) {
            queryParams.put("period_id", periodId)
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
        if (includeEmptyItems != null) {
            queryParams.put("include_empty_items", includeEmptyItems)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    V1TimeseriesItem.class )

    }

    def v1OhlcvSymbolIdLatestGet ( String symbolId, String periodId, Integer limit, Boolean includeEmptyItems, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/v1/ohlcv/${symbol_id}/latest"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (symbolId == null) {
            throw new RuntimeException("missing required params symbolId")
        }
        // verify required params are set
        if (periodId == null) {
            throw new RuntimeException("missing required params periodId")
        }

        if (periodId != null) {
            queryParams.put("period_id", periodId)
        }
        if (limit != null) {
            queryParams.put("limit", limit)
        }
        if (includeEmptyItems != null) {
            queryParams.put("include_empty_items", includeEmptyItems)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    V1TimeseriesItem.class )

    }

}
