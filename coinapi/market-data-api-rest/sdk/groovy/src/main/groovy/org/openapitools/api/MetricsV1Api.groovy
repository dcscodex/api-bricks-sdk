package org.openapitools.api;

import org.openapitools.api.ApiUtils
import org.openapitools.model.V1GeneralData
import org.openapitools.model.V1ListingItem
import org.openapitools.model.V1Metric
import org.openapitools.model.V1MetricData

class MetricsV1Api {
    String basePath = "https://rest.coinapi.io"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def v1MetricsAssetCurrentGet ( String metricId, String assetId, String assetIdExternal, String exchangeId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/v1/metrics/asset/current"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType


        if (metricId != null) {
            queryParams.put("metric_id", metricId)
        }
        if (assetId != null) {
            queryParams.put("asset_id", assetId)
        }
        if (assetIdExternal != null) {
            queryParams.put("asset_id_external", assetIdExternal)
        }
        if (exchangeId != null) {
            queryParams.put("exchange_id", exchangeId)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    V1GeneralData.class )

    }

    def v1MetricsAssetHistoryGet ( String metricId, String exchangeId, String assetId, String assetIdExternal, Date timeStart, Date timeEnd, String timeFormat, String periodId, Integer limit, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/v1/metrics/asset/history"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (metricId == null) {
            throw new RuntimeException("missing required params metricId")
        }
        // verify required params are set
        if (exchangeId == null) {
            throw new RuntimeException("missing required params exchangeId")
        }

        if (metricId != null) {
            queryParams.put("metric_id", metricId)
        }
        if (assetId != null) {
            queryParams.put("asset_id", assetId)
        }
        if (assetIdExternal != null) {
            queryParams.put("asset_id_external", assetIdExternal)
        }
        if (exchangeId != null) {
            queryParams.put("exchange_id", exchangeId)
        }
        if (timeStart != null) {
            queryParams.put("time_start", timeStart)
        }
        if (timeEnd != null) {
            queryParams.put("time_end", timeEnd)
        }
        if (timeFormat != null) {
            queryParams.put("time_format", timeFormat)
        }
        if (periodId != null) {
            queryParams.put("period_id", periodId)
        }
        if (limit != null) {
            queryParams.put("limit", limit)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    V1MetricData.class )

    }

    def v1MetricsAssetListingGet ( String metricId, String exchangeId, String chainId, String networkId, String assetId, String assetIdExternal, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/v1/metrics/asset/listing"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType


        if (metricId != null) {
            queryParams.put("metric_id", metricId)
        }
        if (exchangeId != null) {
            queryParams.put("exchange_id", exchangeId)
        }
        if (chainId != null) {
            queryParams.put("chain_id", chainId)
        }
        if (networkId != null) {
            queryParams.put("network_id", networkId)
        }
        if (assetId != null) {
            queryParams.put("asset_id", assetId)
        }
        if (assetIdExternal != null) {
            queryParams.put("asset_id_external", assetIdExternal)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    V1ListingItem.class )

    }

    def v1MetricsExchangeCurrentGet ( String exchangeId, String metricId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/v1/metrics/exchange/current"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (exchangeId == null) {
            throw new RuntimeException("missing required params exchangeId")
        }

        if (metricId != null) {
            queryParams.put("metric_id", metricId)
        }
        if (exchangeId != null) {
            queryParams.put("exchange_id", exchangeId)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    V1GeneralData.class )

    }

    def v1MetricsExchangeHistoryGet ( String metricId, String exchangeId, Date timeStart, Date timeEnd, String timeFormat, String periodId, Integer limit, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/v1/metrics/exchange/history"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (metricId == null) {
            throw new RuntimeException("missing required params metricId")
        }
        // verify required params are set
        if (exchangeId == null) {
            throw new RuntimeException("missing required params exchangeId")
        }

        if (metricId != null) {
            queryParams.put("metric_id", metricId)
        }
        if (exchangeId != null) {
            queryParams.put("exchange_id", exchangeId)
        }
        if (timeStart != null) {
            queryParams.put("time_start", timeStart)
        }
        if (timeEnd != null) {
            queryParams.put("time_end", timeEnd)
        }
        if (timeFormat != null) {
            queryParams.put("time_format", timeFormat)
        }
        if (periodId != null) {
            queryParams.put("period_id", periodId)
        }
        if (limit != null) {
            queryParams.put("limit", limit)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    V1MetricData.class )

    }

    def v1MetricsExchangeListingGet ( String exchangeId, String metricId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/v1/metrics/exchange/listing"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (exchangeId == null) {
            throw new RuntimeException("missing required params exchangeId")
        }

        if (metricId != null) {
            queryParams.put("metric_id", metricId)
        }
        if (exchangeId != null) {
            queryParams.put("exchange_id", exchangeId)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    V1ListingItem.class )

    }

    def v1MetricsListingGet ( Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/v1/metrics/listing"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType






        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    V1Metric.class )

    }

    def v1MetricsSymbolCurrentGet ( String metricId, String symbolId, String exchangeId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/v1/metrics/symbol/current"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType


        if (metricId != null) {
            queryParams.put("metric_id", metricId)
        }
        if (symbolId != null) {
            queryParams.put("symbol_id", symbolId)
        }
        if (exchangeId != null) {
            queryParams.put("exchange_id", exchangeId)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    V1GeneralData.class )

    }

    def v1MetricsSymbolHistoryGet ( String metricId, String symbolId, Date timeStart, Date timeEnd, String timeFormat, String periodId, Integer limit, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/v1/metrics/symbol/history"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (metricId == null) {
            throw new RuntimeException("missing required params metricId")
        }
        // verify required params are set
        if (symbolId == null) {
            throw new RuntimeException("missing required params symbolId")
        }

        if (metricId != null) {
            queryParams.put("metric_id", metricId)
        }
        if (symbolId != null) {
            queryParams.put("symbol_id", symbolId)
        }
        if (timeStart != null) {
            queryParams.put("time_start", timeStart)
        }
        if (timeEnd != null) {
            queryParams.put("time_end", timeEnd)
        }
        if (timeFormat != null) {
            queryParams.put("time_format", timeFormat)
        }
        if (periodId != null) {
            queryParams.put("period_id", periodId)
        }
        if (limit != null) {
            queryParams.put("limit", limit)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    V1MetricData.class )

    }

    def v1MetricsSymbolListingGet ( String metricId, String exchangeId, String symbolId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/v1/metrics/symbol/listing"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType


        if (metricId != null) {
            queryParams.put("metric_id", metricId)
        }
        if (exchangeId != null) {
            queryParams.put("exchange_id", exchangeId)
        }
        if (symbolId != null) {
            queryParams.put("symbol_id", symbolId)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    V1ListingItem.class )

    }

}
