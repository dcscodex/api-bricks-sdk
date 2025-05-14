package org.openapitools.api;

import org.openapitools.api.ApiUtils
import org.openapitools.model.OHLCVExchangeTimeseriesItem
import org.openapitools.model.OHLCVTimeseriesItem
import org.openapitools.model.OHLCVTimeseriesPeriod

class OhlcvApi {
    String basePath = "https://api-historical.stock.finfeedapi.com"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def v1OhlcvExchangeExchangeIdHistoryGet ( String exchangeId, String periodId, String timeStart, String timeEnd, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/v1/ohlcv/exchange/${exchange_id}/history"

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
                    OHLCVExchangeTimeseriesItem.class )

    }

    def v1OhlcvExchangeSymbolExchangeIdSymbolIdHistoryGet ( String exchangeId, String symbolId, String periodId, String timeStart, String timeEnd, Integer limit, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/v1/ohlcv/exchange-symbol/${exchange_id}/${symbol_id}/history"

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




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    OHLCVTimeseriesItem.class )

    }

    def v1OhlcvExchangeSymbolExchangeIdSymbolIdLatestGet ( String exchangeId, String symbolId, String periodId, Integer limit, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/v1/ohlcv/exchange-symbol/${exchange_id}/${symbol_id}/latest"

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




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    OHLCVTimeseriesItem.class )

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
                    OHLCVTimeseriesPeriod.class )

    }

}
