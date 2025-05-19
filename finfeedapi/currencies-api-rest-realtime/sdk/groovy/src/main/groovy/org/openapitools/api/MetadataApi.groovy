package org.openapitools.api;

import org.openapitools.api.ApiUtils
import org.openapitools.model.V1Asset
import org.openapitools.model.V1Icon

class MetadataApi {
    String basePath = "https://api-realtime.fx.finfeedapi.com"
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

}
