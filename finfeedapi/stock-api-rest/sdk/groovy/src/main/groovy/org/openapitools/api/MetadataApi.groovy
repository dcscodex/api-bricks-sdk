package org.openapitools.api;

import org.openapitools.api.ApiUtils
import org.openapitools.model.FinFeedAPIExchangeModel
import org.openapitools.model.FinFeedAPISymbolModel

class MetadataApi {
    String basePath = "https://api-historical.stock.finfeedapi.com"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def v1ExchangesGet ( Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/v1/exchanges"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType






        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    FinFeedAPIExchangeModel.class )

    }

    def v1SymbolsExchangeIdGet ( String exchangeId, Closure onSuccess, Closure onFailure)  {
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





        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    FinFeedAPISymbolModel.class )

    }

}
