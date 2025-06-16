package org.openapitools.api;

import org.openapitools.api.ApiUtils
import org.openapitools.model.V1MetricInfo

class ExternalMetricsApi {
    String basePath = "https://rest.coinapi.io"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def v1ExternalmetricsAssetHistoryGet ( String metricId, String assetId, Date timeStart, Date timeEnd, String timeFormat, String periodId, Integer limit, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/v1/externalmetrics/asset/history"

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
        if (assetId == null) {
            throw new RuntimeException("missing required params assetId")
        }

        if (metricId != null) {
            queryParams.put("metric_id", metricId)
        }
        if (assetId != null) {
            queryParams.put("asset_id", assetId)
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
                    Object.class )

    }

    def v1ExternalmetricsAssetListingGet ( String assetId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/v1/externalmetrics/asset/listing"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (assetId == null) {
            throw new RuntimeException("missing required params assetId")
        }

        if (assetId != null) {
            queryParams.put("asset_id", assetId)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    V1MetricInfo.class )

    }

    def v1ExternalmetricsChainHistoryGet ( String metricId, String chainId, Date timeStart, Date timeEnd, String timeFormat, String periodId, Integer limit, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/v1/externalmetrics/chain/history"

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
        if (chainId == null) {
            throw new RuntimeException("missing required params chainId")
        }

        if (metricId != null) {
            queryParams.put("metric_id", metricId)
        }
        if (chainId != null) {
            queryParams.put("chain_id", chainId)
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
                    Object.class )

    }

    def v1ExternalmetricsChainListingGet ( String chainId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/v1/externalmetrics/chain/listing"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (chainId == null) {
            throw new RuntimeException("missing required params chainId")
        }

        if (chainId != null) {
            queryParams.put("chain_id", chainId)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    V1MetricInfo.class )

    }

    def v1ExternalmetricsExchangeHistoryGet ( String metricId, String exchangeId, Date timeStart, Date timeEnd, String timeFormat, String periodId, Integer limit, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/v1/externalmetrics/exchange/history"

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
                    Object.class )

    }

    def v1ExternalmetricsExchangeListingGet ( String exchangeId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/v1/externalmetrics/exchange/listing"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (exchangeId == null) {
            throw new RuntimeException("missing required params exchangeId")
        }

        if (exchangeId != null) {
            queryParams.put("exchange_id", exchangeId)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    V1MetricInfo.class )

    }

    def v1ExternalmetricsListingGet ( Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/v1/externalmetrics/listing"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType






        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    V1MetricInfo.class )

    }

}
