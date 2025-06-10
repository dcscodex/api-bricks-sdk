package org.openapitools.api;

import org.openapitools.api.ApiUtils
import org.openapitools.model.OptionsOptionExchangeGroup

class OptionsApi {
    String basePath = "https://rest.coinapi.io"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def v1OptionsExchangeIdCurrentGet ( String exchangeId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/v1/options/${exchange_id}/current"

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
                    OptionsOptionExchangeGroup.class )

    }

}
