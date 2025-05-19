package org.openapitools.api;

import org.openapitools.api.ApiUtils
import org.openapitools.model.V1ExchangeRate
import org.openapitools.model.V1ExchangeRates
import org.openapitools.model.V1ExchangeRatesTimeseriesItem
import org.openapitools.model.V1TimeseriesPeriod

class ExchangeRatesApi {
    String basePath = "https://api-historical.fx.finfeedapi.com"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def getSpecificRate ( String assetIdBase, String assetIdQuote, String time, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/v1/exchangerate/${asset_id_base}/${asset_id_quote}"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (assetIdBase == null) {
            throw new RuntimeException("missing required params assetIdBase")
        }
        // verify required params are set
        if (assetIdQuote == null) {
            throw new RuntimeException("missing required params assetIdQuote")
        }

        if (time != null) {
            queryParams.put("time", time)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    V1ExchangeRate.class )

    }

    def v1ExchangerateAssetIdBaseAssetIdQuoteHistoryGet ( String assetIdBase, String assetIdQuote, String periodId, String timeStart, String timeEnd, Integer limit, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/v1/exchangerate/${asset_id_base}/${asset_id_quote}/history"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (assetIdBase == null) {
            throw new RuntimeException("missing required params assetIdBase")
        }
        // verify required params are set
        if (assetIdQuote == null) {
            throw new RuntimeException("missing required params assetIdQuote")
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
                    V1ExchangeRatesTimeseriesItem.class )

    }

    def v1ExchangerateAssetIdBaseGet ( String assetIdBase, String filterAssetId, Boolean invert, String time, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/v1/exchangerate/${asset_id_base}"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (assetIdBase == null) {
            throw new RuntimeException("missing required params assetIdBase")
        }

        if (filterAssetId != null) {
            queryParams.put("filter_asset_id", filterAssetId)
        }
        if (invert != null) {
            queryParams.put("invert", invert)
        }
        if (time != null) {
            queryParams.put("time", time)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    V1ExchangeRates.class )

    }

    def v1ExchangerateHistoryPeriodsGet ( Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/v1/exchangerate/history/periods"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType






        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    V1TimeseriesPeriod.class )

    }

}
