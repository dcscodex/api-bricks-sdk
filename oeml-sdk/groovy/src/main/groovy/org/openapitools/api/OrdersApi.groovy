package org.openapitools.api;

import org.openapitools.api.ApiUtils
import org.openapitools.model.CancelAllOrder
import org.openapitools.model.CancelOrder
import org.openapitools.model.CreateOrder400
import org.openapitools.model.Messages
import org.openapitools.model.MessagesOk
import org.openapitools.model.NewOrder
import org.openapitools.model.Order
import org.openapitools.model.OrderLive

class OrdersApi {
    String basePath = "http://localhost:3001"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def v1OrdersCancelAllPost ( CancelAllOrder cancelAllOrder, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/v1/orders/cancel/all"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (cancelAllOrder == null) {
            throw new RuntimeException("missing required params cancelAllOrder")
        }



        contentType = 'application/json';
        bodyParams = cancelAllOrder


        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    MessagesOk.class )

    }

    def v1OrdersCancelPost ( CancelOrder cancelOrder, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/v1/orders/cancel"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (cancelOrder == null) {
            throw new RuntimeException("missing required params cancelOrder")
        }



        contentType = 'application/json';
        bodyParams = cancelOrder


        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    OrderLive.class )

    }

    def v1OrdersGet ( String exchangeId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/v1/orders"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType


        if (exchangeId != null) {
            queryParams.put("exchange_id", exchangeId)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    Order.class )

    }

    def v1OrdersPost ( NewOrder newOrder, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/v1/orders"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (newOrder == null) {
            throw new RuntimeException("missing required params newOrder")
        }



        contentType = 'application/json';
        bodyParams = newOrder


        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    OrderLive.class )

    }

}
