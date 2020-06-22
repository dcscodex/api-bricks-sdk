part of openapi.api;



class PositionsApi {
  final ApiClient apiClient;

  PositionsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Get positions with HTTP info returned
  ///
  /// Returns all of your positions.
  Future<Response> v1PositionsGetWithHttpInfo({ String exchangeId }) async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/v1/positions".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(exchangeId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "exchange_id", exchangeId));
    }

    List<String> contentTypes = [];

    String nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    List<String> authNames = [];

    if(nullableContentType != null && nullableContentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             nullableContentType,
                                             authNames);
    return response;
  }

  /// Get positions
  ///
  /// Returns all of your positions.
  Future<List<Position>> v1PositionsGet({ String exchangeId }) async {
    Response response = await v1PositionsGetWithHttpInfo( exchangeId: exchangeId );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<Position>') as List).map((item) => item as Position).toList();
    } else {
      return null;
    }
  }

}
