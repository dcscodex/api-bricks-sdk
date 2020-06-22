part of openapi.api;



class OrdersApi {
  final ApiClient apiClient;

  OrdersApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Cancel all order with HTTP info returned
  ///
  /// Cancel all existing order.
  Future<Response> v1OrdersCancelAllPostWithHttpInfo(CancelAllOrder cancelAllOrder) async {
    Object postBody = cancelAllOrder;

    // verify required params are set
    if(cancelAllOrder == null) {
     throw ApiException(400, "Missing required param: cancelAllOrder");
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

  /// Cancel all order
  ///
  /// Cancel all existing order.
  Future<MessagesOk> v1OrdersCancelAllPost(CancelAllOrder cancelAllOrder) async {
    Response response = await v1OrdersCancelAllPostWithHttpInfo(cancelAllOrder);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'MessagesOk') as MessagesOk;
    } else {
      return null;
    }
  }

  /// Cancel order with HTTP info returned
  ///
  /// Cancel an existing order, can be used to cancel margin, exchange, and derivative orders. You can cancel the order by the internal order ID or exchange order ID.
  Future<Response> v1OrdersCancelPostWithHttpInfo(CancelOrder cancelOrder) async {
    Object postBody = cancelOrder;

    // verify required params are set
    if(cancelOrder == null) {
     throw ApiException(400, "Missing required param: cancelOrder");
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

  /// Cancel order
  ///
  /// Cancel an existing order, can be used to cancel margin, exchange, and derivative orders. You can cancel the order by the internal order ID or exchange order ID.
  Future<OrderLive> v1OrdersCancelPost(CancelOrder cancelOrder) async {
    Response response = await v1OrdersCancelPostWithHttpInfo(cancelOrder);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'OrderLive') as OrderLive;
    } else {
      return null;
    }
  }

  /// Get orders with HTTP info returned
  ///
  /// List your current open orders.
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

  /// Get orders
  ///
  /// List your current open orders.
  Future<List<Order>> v1OrdersGet({ String exchangeId }) async {
    Response response = await v1OrdersGetWithHttpInfo( exchangeId: exchangeId );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<Order>') as List).map((item) => item as Order).toList();
    } else {
      return null;
    }
  }

  /// Create new order with HTTP info returned
  ///
  /// You can place two types of orders: limit and market. Orders can only be placed if your account has sufficient funds.
  Future<Response> v1OrdersPostWithHttpInfo(NewOrder newOrder) async {
    Object postBody = newOrder;

    // verify required params are set
    if(newOrder == null) {
     throw ApiException(400, "Missing required param: newOrder");
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

  /// Create new order
  ///
  /// You can place two types of orders: limit and market. Orders can only be placed if your account has sufficient funds.
  Future<OrderLive> v1OrdersPost(NewOrder newOrder) async {
    Response response = await v1OrdersPostWithHttpInfo(newOrder);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'OrderLive') as OrderLive;
    } else {
      return null;
    }
  }

}
