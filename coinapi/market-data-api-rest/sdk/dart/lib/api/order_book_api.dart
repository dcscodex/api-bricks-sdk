//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class OrderBookApi {
  OrderBookApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Get current order book
  ///
  /// Retrieves the current order book for the specified symbol.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] symbolId (required):
  ///   The symbol ID (from the Metadata -> Symbols)
  ///
  /// * [int] limitLevels:
  ///   The maximum number of levels to include in the response.
  Future<Response> v1OrderbooksSymbolIdCurrentGetWithHttpInfo(String symbolId, { int? limitLevels, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/orderbooks/{symbol_id}/current'
      .replaceAll('{symbol_id}', symbolId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (limitLevels != null) {
      queryParams.addAll(_queryParams('', 'limit_levels', limitLevels));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get current order book
  ///
  /// Retrieves the current order book for the specified symbol.
  ///
  /// Parameters:
  ///
  /// * [String] symbolId (required):
  ///   The symbol ID (from the Metadata -> Symbols)
  ///
  /// * [int] limitLevels:
  ///   The maximum number of levels to include in the response.
  Future<V1OrderBookBase?> v1OrderbooksSymbolIdCurrentGet(String symbolId, { int? limitLevels, }) async {
    final response = await v1OrderbooksSymbolIdCurrentGetWithHttpInfo(symbolId,  limitLevels: limitLevels, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'V1OrderBookBase',) as V1OrderBookBase;
    
    }
    return null;
  }

  /// Current depth of the order book
  ///
  /// Retrieves the current depth of the order book for the specified symbol.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] symbolId (required):
  ///   The symbol ID (from the Metadata -> Symbols)
  ///
  /// * [int] limitLevels:
  ///   The maximum number of levels to include in the response.
  Future<Response> v1OrderbooksSymbolIdDepthCurrentGetWithHttpInfo(String symbolId, { int? limitLevels, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/orderbooks/{symbol_id}/depth/current'
      .replaceAll('{symbol_id}', symbolId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (limitLevels != null) {
      queryParams.addAll(_queryParams('', 'limit_levels', limitLevels));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Current depth of the order book
  ///
  /// Retrieves the current depth of the order book for the specified symbol.
  ///
  /// Parameters:
  ///
  /// * [String] symbolId (required):
  ///   The symbol ID (from the Metadata -> Symbols)
  ///
  /// * [int] limitLevels:
  ///   The maximum number of levels to include in the response.
  Future<V1OrderBookDepth?> v1OrderbooksSymbolIdDepthCurrentGet(String symbolId, { int? limitLevels, }) async {
    final response = await v1OrderbooksSymbolIdDepthCurrentGetWithHttpInfo(symbolId,  limitLevels: limitLevels, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'V1OrderBookDepth',) as V1OrderBookDepth;
    
    }
    return null;
  }

  /// Historical data
  ///
  /// Get historical order book snapshots for a specific symbol within time range, returned in time ascending order.              :::info The historical order book data via the REST API is currently limited by a number of updates and to the maximum number of 20 levels. :::  :::warning The 'time_start' and 'time_end' parameters must be from the same day as this endpoint provides intraday data only for specific day. Please use the 'date' parameter instead for querying data for a specific day without filter. :::
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] symbolId (required):
  ///   Symbol identifier for requested timeseries (from the Metadata -> Symbols)
  ///
  /// * [String] date:
  ///   Date in ISO 8601, returned data is for the whole given day (preferred method, required if 'time_start' is not provided)
  ///
  /// * [String] timeStart:
  ///   Starting time in ISO 8601 (deprecated, use 'date' instead)
  ///
  /// * [String] timeEnd:
  ///   Timeseries ending time in ISO 8601 (deprecated, use 'date' instead)
  ///
  /// * [int] limit:
  ///   Amount of items to return (optional, minimum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
  ///
  /// * [int] limitLevels:
  ///   Maximum amount of levels from each side of the book to include in response (optional)
  Future<Response> v1OrderbooksSymbolIdHistoryGetWithHttpInfo(String symbolId, { String? date, String? timeStart, String? timeEnd, int? limit, int? limitLevels, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/orderbooks/{symbol_id}/history'
      .replaceAll('{symbol_id}', symbolId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (date != null) {
      queryParams.addAll(_queryParams('', 'date', date));
    }
    if (timeStart != null) {
      queryParams.addAll(_queryParams('', 'time_start', timeStart));
    }
    if (timeEnd != null) {
      queryParams.addAll(_queryParams('', 'time_end', timeEnd));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }
    if (limitLevels != null) {
      queryParams.addAll(_queryParams('', 'limit_levels', limitLevels));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Historical data
  ///
  /// Get historical order book snapshots for a specific symbol within time range, returned in time ascending order.              :::info The historical order book data via the REST API is currently limited by a number of updates and to the maximum number of 20 levels. :::  :::warning The 'time_start' and 'time_end' parameters must be from the same day as this endpoint provides intraday data only for specific day. Please use the 'date' parameter instead for querying data for a specific day without filter. :::
  ///
  /// Parameters:
  ///
  /// * [String] symbolId (required):
  ///   Symbol identifier for requested timeseries (from the Metadata -> Symbols)
  ///
  /// * [String] date:
  ///   Date in ISO 8601, returned data is for the whole given day (preferred method, required if 'time_start' is not provided)
  ///
  /// * [String] timeStart:
  ///   Starting time in ISO 8601 (deprecated, use 'date' instead)
  ///
  /// * [String] timeEnd:
  ///   Timeseries ending time in ISO 8601 (deprecated, use 'date' instead)
  ///
  /// * [int] limit:
  ///   Amount of items to return (optional, minimum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
  ///
  /// * [int] limitLevels:
  ///   Maximum amount of levels from each side of the book to include in response (optional)
  Future<List<V1OrderBook>?> v1OrderbooksSymbolIdHistoryGet(String symbolId, { String? date, String? timeStart, String? timeEnd, int? limit, int? limitLevels, }) async {
    final response = await v1OrderbooksSymbolIdHistoryGetWithHttpInfo(symbolId,  date: date, timeStart: timeStart, timeEnd: timeEnd, limit: limit, limitLevels: limitLevels, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<V1OrderBook>') as List)
        .cast<V1OrderBook>()
        .toList(growable: false);

    }
    return null;
  }

  /// Latest data
  ///
  /// Get latest order book snapshots for a specific symbol, returned in time descending order.              :::info The historical order book data via the REST API is currently limited by a number of updates and to the maximum number of 20 levels. :::
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] symbolId (required):
  ///   Symbol identifier of requested timeseries (from the Metadata -> Symbols)
  ///
  /// * [int] limit:
  ///   Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
  ///
  /// * [int] limitLevels:
  ///   Maximum amount of levels from each side of the book to include in response (optional)
  Future<Response> v1OrderbooksSymbolIdLatestGetWithHttpInfo(String symbolId, { int? limit, int? limitLevels, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/orderbooks/{symbol_id}/latest'
      .replaceAll('{symbol_id}', symbolId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }
    if (limitLevels != null) {
      queryParams.addAll(_queryParams('', 'limit_levels', limitLevels));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Latest data
  ///
  /// Get latest order book snapshots for a specific symbol, returned in time descending order.              :::info The historical order book data via the REST API is currently limited by a number of updates and to the maximum number of 20 levels. :::
  ///
  /// Parameters:
  ///
  /// * [String] symbolId (required):
  ///   Symbol identifier of requested timeseries (from the Metadata -> Symbols)
  ///
  /// * [int] limit:
  ///   Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
  ///
  /// * [int] limitLevels:
  ///   Maximum amount of levels from each side of the book to include in response (optional)
  Future<List<V1OrderBook>?> v1OrderbooksSymbolIdLatestGet(String symbolId, { int? limit, int? limitLevels, }) async {
    final response = await v1OrderbooksSymbolIdLatestGetWithHttpInfo(symbolId,  limit: limit, limitLevels: limitLevels, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<V1OrderBook>') as List)
        .cast<V1OrderBook>()
        .toList(growable: false);

    }
    return null;
  }
}
