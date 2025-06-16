package org.openapitools.api;

import org.openapitools.api.ApiUtils
import org.openapitools.model.V1Asset
import org.openapitools.model.V1Chain
import org.openapitools.model.V1Exchange
import org.openapitools.model.V1Icon
import org.openapitools.model.V1Symbol
import org.openapitools.model.V1SymbolMapping

class MetadataApi {
    String basePath = "https://rest.coinapi.io"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def v1AssetsAssetIdGet ( String assetId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/v1/assets/${asset_id}"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (assetId == null) {
            throw new RuntimeException("missing required params assetId")
        }





        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    V1Asset.class )

    }

    def v1AssetsGet ( String filterAssetId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/v1/assets"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType


        if (filterAssetId != null) {
            queryParams.put("filter_asset_id", filterAssetId)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    V1Asset.class )

    }

    def v1AssetsIconsSizeGet ( Integer size, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/v1/assets/icons/${size}"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (size == null) {
            throw new RuntimeException("missing required params size")
        }





        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    V1Icon.class )

    }

    def v1ChainsChainIdGet ( String chainId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/v1/chains/${chain_id}"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (chainId == null) {
            throw new RuntimeException("missing required params chainId")
        }





        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    V1Chain.class )

    }

    def v1ChainsGet ( String filterChainId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/v1/chains"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType


        if (filterChainId != null) {
            queryParams.put("filter_chain_id", filterChainId)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    V1Chain.class )

    }

    def v1ExchangesExchangeIdGet ( String exchangeId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/v1/exchanges/${exchange_id}"

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
                    V1Exchange.class )

    }

    def v1ExchangesGet ( String filterExchangeId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/v1/exchanges"

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
                    V1Exchange.class )

    }

    def v1ExchangesIconsSizeGet ( Integer size, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/v1/exchanges/icons/${size}"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (size == null) {
            throw new RuntimeException("missing required params size")
        }





        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    V1Icon.class )

    }

    def v1SymbolsExchangeIdGet ( String exchangeId, String filterSymbolId, String filterAssetId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/v1/symbols/${exchange_id}"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (exchangeId == null) {
            throw new RuntimeException("missing required params exchangeId")
        }

        if (filterSymbolId != null) {
            queryParams.put("filter_symbol_id", filterSymbolId)
        }
        if (filterAssetId != null) {
            queryParams.put("filter_asset_id", filterAssetId)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    V1Symbol.class )

    }

    def v1SymbolsGet ( String filterSymbolId, String filterExchangeId, String filterAssetId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/v1/symbols"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType


        if (filterSymbolId != null) {
            queryParams.put("filter_symbol_id", filterSymbolId)
        }
        if (filterExchangeId != null) {
            queryParams.put("filter_exchange_id", filterExchangeId)
        }
        if (filterAssetId != null) {
            queryParams.put("filter_asset_id", filterAssetId)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    V1Symbol.class )

    }

    def v1SymbolsMapExchangeIdGet ( String exchangeId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/v1/symbols/map/${exchange_id}"

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
                    V1SymbolMapping.class )

    }

}
