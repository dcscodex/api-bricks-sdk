package org.openapitools.api;

import org.openapitools.api.ApiUtils
import org.openapitools.model.AccountData
import org.openapitools.model.GetAccount

class AccountApi {
    String basePath = "https://ems-mgmt-sandbox.coinapi.io"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def deleteAccount ( List<String> exchangeId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/v1/accounts"

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
                    "DELETE", "",
                    null )

    }

    def deleteAccountAll ( Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/v1/accounts/all"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType






        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "DELETE", "",
                    null )

    }

    def getAccount ( List<String> filterExchangeId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/v1/accounts"

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
                    GetAccount.class )

    }

    def persistAccount ( AccountData body, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/v1/accounts"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (body == null) {
            throw new RuntimeException("missing required params body")
        }



        contentType = 'application/json';
        bodyParams = body


        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    null )

    }

}
