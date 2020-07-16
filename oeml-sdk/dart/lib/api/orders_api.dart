part of openapi.api;



class OrdersApi {
  final ApiClient apiClient;

  OrdersApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Cancel all orders request with HTTP info returned
  ///
  /// This request cancels all open orders on single specified exchange.
  Future<Response> v1OrdersCancelAllPostWithHttpInfo(OrderCancelAllRequest orderCancelAllRequest) async {
    Object postBody = orderCancelAllRequest;

    // verify required params are set
    if(orderCancelAllRequest == null) {
     throw ApiException(400, "Missing required param: orderCancelAllRequest");
    }

    // create path and map variables
    String path = "/v1/orders/cancel/all".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = ["application/json"];

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
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             nullableContentType,
                                             authNames);
    return response;
  }

  /// Cancel all orders request
  ///
  /// This request cancels all open orders on single specified exchange.
  Future<Message> v1OrdersCancelAllPost(OrderCancelAllRequest orderCancelAllRequest) async {
    Response response = await v1OrdersCancelAllPostWithHttpInfo(orderCancelAllRequest);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'Message') as Message;
    } else {
      return null;
    }
  }

  /// Cancel order request with HTTP info returned
  ///
  /// Request cancel for an existing order. The order can be canceled using the &#x60;client_order_id&#x60; or &#x60;exchange_order_id&#x60;.
  Future<Response> v1OrdersCancelPostWithHttpInfo(OrderCancelSingleRequest orderCancelSingleRequest) async {
    Object postBody = orderCancelSingleRequest;

    // verify required params are set
    if(orderCancelSingleRequest == null) {
     throw ApiException(400, "Missing required param: orderCancelSingleRequest");
    }

    // create path and map variables
    String path = "/v1/orders/cancel".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = ["application/json"];

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
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             nullableContentType,
                                             authNames);
    return response;
  }

  /// Cancel order request
  ///
  /// Request cancel for an existing order. The order can be canceled using the &#x60;client_order_id&#x60; or &#x60;exchange_order_id&#x60;.
  Future<OrderExecutionReport> v1OrdersCancelPost(OrderCancelSingleRequest orderCancelSingleRequest) async {
    Response response = await v1OrdersCancelPostWithHttpInfo(orderCancelSingleRequest);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'OrderExecutionReport') as OrderExecutionReport;
    } else {
      return null;
    }
  }

  /// Get open orders with HTTP info returned
  ///
  /// Get last execution reports for open orders across all or single exchange.
  Future<Response> v1OrdersGetWithHttpInfo({ String exchangeId }) async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/v1/orders".replaceAll("{format}","json");

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

  /// Get open orders
  ///
  /// Get last execution reports for open orders across all or single exchange.
  Future<List<OrderExecutionReport>> v1OrdersGet({ String exchangeId }) async {
    Response response = await v1OrdersGetWithHttpInfo( exchangeId: exchangeId );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<OrderExecutionReport>') as List).map((item) => item as OrderExecutionReport).toList();
    } else {
      return null;
    }
  }

  /// Send new order with HTTP info returned
  ///
  /// This request creating new order for the specific exchange.
  Future<Response> v1OrdersPostWithHttpInfo(OrderNewSingleRequest orderNewSingleRequest) async {
    Object postBody = orderNewSingleRequest;

    // verify required params are set
    if(orderNewSingleRequest == null) {
     throw ApiException(400, "Missing required param: orderNewSingleRequest");
    }

    // create path and map variables
    String path = "/v1/orders".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = ["application/json"];

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
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             nullableContentType,
                                             authNames);
    return response;
  }

  /// Send new order
  ///
  /// This request creating new order for the specific exchange.
  Future<OrderExecutionReport> v1OrdersPost(OrderNewSingleRequest orderNewSingleRequest) async {
    Response response = await v1OrdersPostWithHttpInfo(orderNewSingleRequest);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'OrderExecutionReport') as OrderExecutionReport;
    } else {
      return null;
    }
  }

  /// Get order execution report with HTTP info returned
  ///
  /// Get the last order execution report for the specified order. The requested order does not need to be active or opened.
  Future<Response> v1OrdersStatusClientOrderIdGetWithHttpInfo(String clientOrderId) async {
    Object postBody;

    // verify required params are set
    if(clientOrderId == null) {
     throw ApiException(400, "Missing required param: clientOrderId");
    }

    // create path and map variables
    String path = "/v1/orders/status/{client_order_id}".replaceAll("{format}","json").replaceAll("{" + "client_order_id" + "}", clientOrderId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

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

  /// Get order execution report
  ///
  /// Get the last order execution report for the specified order. The requested order does not need to be active or opened.
  Future<OrderExecutionReport> v1OrdersStatusClientOrderIdGet(String clientOrderId) async {
    Response response = await v1OrdersStatusClientOrderIdGetWithHttpInfo(clientOrderId);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'OrderExecutionReport') as OrderExecutionReport;
    } else {
      return null;
    }
  }

}
