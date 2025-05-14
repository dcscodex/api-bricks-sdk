package org.openapitools.api;

import org.openapitools.api.ApiUtils
import org.openapitools.model.AdminAdminMessageModel
import org.openapitools.model.AdminSystemEventModel
import org.openapitools.model.Level1QuoteUpdateModel
import org.openapitools.model.Level2PriceLevelUpdateModel
import org.openapitools.model.Level3OrderBookModel
import org.openapitools.model.TradeTradeModel

class NativeIexApi {
    String basePath = "https://api-historical.stock.finfeedapi.com"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def v1NativeIexAdminMessagesSymbolGet ( String symbol, Date date, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/v1/native/iex/admin/messages/${symbol}"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (symbol == null) {
            throw new RuntimeException("missing required params symbol")
        }
        // verify required params are set
        if (date == null) {
            throw new RuntimeException("missing required params date")
        }

        if (date != null) {
            queryParams.put("date", date)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    AdminAdminMessageModel.class )

    }

    def v1NativeIexAdminSystemEventGet ( Date date, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/v1/native/iex/admin/system-event"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (date == null) {
            throw new RuntimeException("missing required params date")
        }

        if (date != null) {
            queryParams.put("date", date)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    AdminSystemEventModel.class )

    }

    def v1NativeIexLevel1QuoteSymbolGet ( String symbol, Date date, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/v1/native/iex/level1-quote/${symbol}"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (symbol == null) {
            throw new RuntimeException("missing required params symbol")
        }
        // verify required params are set
        if (date == null) {
            throw new RuntimeException("missing required params date")
        }

        if (date != null) {
            queryParams.put("date", date)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    Level1QuoteUpdateModel.class )

    }

    def v1NativeIexLevel2PriceLevelUpdateSymbolGet ( String symbol, Date date, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/v1/native/iex/level2-price-level-update/${symbol}"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (symbol == null) {
            throw new RuntimeException("missing required params symbol")
        }
        // verify required params are set
        if (date == null) {
            throw new RuntimeException("missing required params date")
        }

        if (date != null) {
            queryParams.put("date", date)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    Level2PriceLevelUpdateModel.class )

    }

    def v1NativeIexLevel3OrderBookSymbolGet ( String symbol, Date date, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/v1/native/iex/level3-order-book/${symbol}"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (symbol == null) {
            throw new RuntimeException("missing required params symbol")
        }
        // verify required params are set
        if (date == null) {
            throw new RuntimeException("missing required params date")
        }

        if (date != null) {
            queryParams.put("date", date)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    Level3OrderBookModel.class )

    }

    def v1NativeIexTradeSymbolGet ( String symbol, Date date, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/v1/native/iex/trade/${symbol}"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (symbol == null) {
            throw new RuntimeException("missing required params symbol")
        }
        // verify required params are set
        if (date == null) {
            throw new RuntimeException("missing required params date")
        }

        if (date != null) {
            queryParams.put("date", date)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    TradeTradeModel.class )

    }

}
