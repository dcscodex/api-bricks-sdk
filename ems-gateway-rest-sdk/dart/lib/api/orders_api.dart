//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class OrdersApi {
  OrdersApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Cancel all orders request
  ///
  /// This request cancels all open orders on single specified exchange.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [OrderCancelAllRequest] orderCancelAllRequest (required):
  ///   OrderCancelAllRequest object.
  Future<Response> v1OrdersCancelAllPostWithHttpInfo(OrderCancelAllRequest orderCancelAllRequest,) async {
    // Verify required params are set.
    if (orderCancelAllRequest == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: orderCancelAllRequest');
    }

    // ignore: prefer_const_declarations
    final path = r'/v1/orders/cancel/all';

    // ignore: prefer_final_locals
    Object postBody = orderCancelAllRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>[];
    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Cancel all orders request
  ///
  /// This request cancels all open orders on single specified exchange.
  ///
  /// Parameters:
  ///
  /// * [OrderCancelAllRequest] orderCancelAllRequest (required):
  ///   OrderCancelAllRequest object.
  Future<MessageReject> v1OrdersCancelAllPost(OrderCancelAllRequest orderCancelAllRequest,) async {
    final response = await v1OrdersCancelAllPostWithHttpInfo(orderCancelAllRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MessageReject',) as MessageReject;
    
    }
    return Future<MessageReject>.value();
  }

  /// Cancel order request
  ///
  /// Request cancel for an existing order. The order can be canceled using the `client_order_id` or `exchange_order_id`.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [OrderCancelSingleRequest] orderCancelSingleRequest (required):
  ///   OrderCancelSingleRequest object.
  Future<Response> v1OrdersCancelPostWithHttpInfo(OrderCancelSingleRequest orderCancelSingleRequest,) async {
    // Verify required params are set.
    if (orderCancelSingleRequest == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: orderCancelSingleRequest');
    }

    // ignore: prefer_const_declarations
    final path = r'/v1/orders/cancel';

    // ignore: prefer_final_locals
    Object postBody = orderCancelSingleRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>[];
    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Cancel order request
  ///
  /// Request cancel for an existing order. The order can be canceled using the `client_order_id` or `exchange_order_id`.
  ///
  /// Parameters:
  ///
  /// * [OrderCancelSingleRequest] orderCancelSingleRequest (required):
  ///   OrderCancelSingleRequest object.
  Future<OrderExecutionReport> v1OrdersCancelPost(OrderCancelSingleRequest orderCancelSingleRequest,) async {
    final response = await v1OrdersCancelPostWithHttpInfo(orderCancelSingleRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'OrderExecutionReport',) as OrderExecutionReport;
    
    }
    return Future<OrderExecutionReport>.value();
  }

  /// Get open orders
  ///
  /// Get last execution reports for open orders across all or single exchange.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] exchangeId:
  ///   Filter the open orders to the specific exchange.
  Future<Response> v1OrdersGetWithHttpInfo({ String exchangeId, }) async {
    // Verify required params are set.

    // ignore: prefer_const_declarations
    final path = r'/v1/orders';

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (exchangeId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'exchange_id', exchangeId));
    }

    const authNames = <String>[];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Get open orders
  ///
  /// Get last execution reports for open orders across all or single exchange.
  ///
  /// Parameters:
  ///
  /// * [String] exchangeId:
  ///   Filter the open orders to the specific exchange.
  Future<List<OrderExecutionReport>> v1OrdersGet({ String exchangeId, }) async {
    final response = await v1OrdersGetWithHttpInfo( exchangeId: exchangeId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<OrderExecutionReport>') as List)
        .cast<OrderExecutionReport>()
        .toList(growable: false);

    }
    return Future<List<OrderExecutionReport>>.value();
  }

  /// Send new order
  ///
  /// This request creating new order for the specific exchange.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [OrderNewSingleRequest] orderNewSingleRequest (required):
  ///   OrderNewSingleRequest object.
  Future<Response> v1OrdersPostWithHttpInfo(OrderNewSingleRequest orderNewSingleRequest,) async {
    // Verify required params are set.
    if (orderNewSingleRequest == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: orderNewSingleRequest');
    }

    // ignore: prefer_const_declarations
    final path = r'/v1/orders';

    // ignore: prefer_final_locals
    Object postBody = orderNewSingleRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>[];
    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Send new order
  ///
  /// This request creating new order for the specific exchange.
  ///
  /// Parameters:
  ///
  /// * [OrderNewSingleRequest] orderNewSingleRequest (required):
  ///   OrderNewSingleRequest object.
  Future<OrderExecutionReport> v1OrdersPost(OrderNewSingleRequest orderNewSingleRequest,) async {
    final response = await v1OrdersPostWithHttpInfo(orderNewSingleRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'OrderExecutionReport',) as OrderExecutionReport;
    
    }
    return Future<OrderExecutionReport>.value();
  }

  /// Get order execution report
  ///
  /// Get the last order execution report for the specified order. The requested order does not need to be active or opened.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] clientOrderId (required):
  ///   The unique identifier of the order assigned by the client.
  Future<Response> v1OrdersStatusClientOrderIdGetWithHttpInfo(String clientOrderId,) async {
    // Verify required params are set.
    if (clientOrderId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: clientOrderId');
    }

    // ignore: prefer_const_declarations
    final path = r'/v1/orders/status/{client_order_id}'
      .replaceAll('{client_order_id}', clientOrderId);

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>[];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Get order execution report
  ///
  /// Get the last order execution report for the specified order. The requested order does not need to be active or opened.
  ///
  /// Parameters:
  ///
  /// * [String] clientOrderId (required):
  ///   The unique identifier of the order assigned by the client.
  Future<OrderExecutionReport> v1OrdersStatusClientOrderIdGet(String clientOrderId,) async {
    final response = await v1OrdersStatusClientOrderIdGetWithHttpInfo(clientOrderId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'OrderExecutionReport',) as OrderExecutionReport;
    
    }
    return Future<OrderExecutionReport>.value();
  }
}
