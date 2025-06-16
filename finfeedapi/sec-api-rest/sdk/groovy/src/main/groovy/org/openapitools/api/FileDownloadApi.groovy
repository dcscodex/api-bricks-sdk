package org.openapitools.api;

import org.openapitools.api.ApiUtils
import org.openapitools.model.MvcProblemDetails
import org.openapitools.model.MvcValidationProblemDetails

class FileDownloadApi {
    String basePath = "https://api.sec.finfeedapi.com"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def v1DownloadGet ( String accessionNo, String fileName, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/v1/download"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (accessionNo == null) {
            throw new RuntimeException("missing required params accessionNo")
        }
        // verify required params are set
        if (fileName == null) {
            throw new RuntimeException("missing required params fileName")
        }

        if (accessionNo != null) {
            queryParams.put("accession_no", accessionNo)
        }
        if (fileName != null) {
            queryParams.put("file_name", fileName)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    null )

    }

}
