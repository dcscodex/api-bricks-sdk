part of openapi.api;



class BalancesApi {
  final ApiClient apiClient;

  BalancesApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Get balances with HTTP info returned
  ///
  /// Returns all of your balances, including available balance.
  Future<Response> v1BalancesGetWithHttpInfo({ String exchangeId }) async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/v1/balances".replaceAll("{format}","json");

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

  /// Get balances
  ///
  /// Returns all of your balances, including available balance.
  Future<List<Balance>> v1BalancesGet({ String exchangeId }) async {
    Response response = await v1BalancesGetWithHttpInfo( exchangeId: exchangeId );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<Balance>') as List).map((item) => item as Balance).toList();
    } else {
      return null;
    }
  }

}
