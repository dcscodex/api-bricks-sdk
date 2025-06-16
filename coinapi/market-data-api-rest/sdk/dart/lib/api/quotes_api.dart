//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class QuotesApi {
  QuotesApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Current data
  ///
  /// Get current quotes for all symbols or for a specific symbol.              :::info When requesting current data for a specific symbol, output is not encapsulated into JSON array as only one item is returned. :::
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] filterSymbolId:
  ///   Comma or semicolon delimited parts of symbol identifier used to filter response. (optional)
  Future<Response> v1QuotesCurrentGetWithHttpInfo({ String? filterSymbolId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/quotes/current';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (filterSymbolId != null) {
      queryParams.addAll(_queryParams('', 'filter_symbol_id', filterSymbolId));
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

  /// Current data
  ///
  /// Get current quotes for all symbols or for a specific symbol.              :::info When requesting current data for a specific symbol, output is not encapsulated into JSON array as only one item is returned. :::
  ///
  /// Parameters:
  ///
  /// * [String] filterSymbolId:
  ///   Comma or semicolon delimited parts of symbol identifier used to filter response. (optional)
  Future<List<V1QuoteTrade>?> v1QuotesCurrentGet({ String? filterSymbolId, }) async {
    final response = await v1QuotesCurrentGetWithHttpInfo( filterSymbolId: filterSymbolId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<V1QuoteTrade>') as List)
        .cast<V1QuoteTrade>()
        .toList(growable: false);

    }
    return null;
  }

  /// Latest data
  ///
  /// Get latest updates of the quotes up to 1 minute ago. Latest data is always returned in time descending order.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] filterSymbolId:
  ///   Comma or semicolon delimited parts of symbol identifier used to filter response. (optional)
  ///
  /// * [int] limit:
  ///   Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
  Future<Response> v1QuotesLatestGetWithHttpInfo({ String? filterSymbolId, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/quotes/latest';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (filterSymbolId != null) {
      queryParams.addAll(_queryParams('', 'filter_symbol_id', filterSymbolId));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
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
  /// Get latest updates of the quotes up to 1 minute ago. Latest data is always returned in time descending order.
  ///
  /// Parameters:
  ///
  /// * [String] filterSymbolId:
  ///   Comma or semicolon delimited parts of symbol identifier used to filter response. (optional)
  ///
  /// * [int] limit:
  ///   Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
  Future<List<V1Quote>?> v1QuotesLatestGet({ String? filterSymbolId, int? limit, }) async {
    final response = await v1QuotesLatestGetWithHttpInfo( filterSymbolId: filterSymbolId, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<V1Quote>') as List)
        .cast<V1Quote>()
        .toList(growable: false);

    }
    return null;
  }

  /// Current quotes for a specific symbol
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] symbolId (required):
  ///   The symbol identifier (from the Metadata -> Symbols)
  Future<Response> v1QuotesSymbolIdCurrentGetWithHttpInfo(String symbolId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/quotes/{symbol_id}/current'
      .replaceAll('{symbol_id}', symbolId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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

  /// Current quotes for a specific symbol
  ///
  /// Parameters:
  ///
  /// * [String] symbolId (required):
  ///   The symbol identifier (from the Metadata -> Symbols)
  Future<V1QuoteTrade?> v1QuotesSymbolIdCurrentGet(String symbolId,) async {
    final response = await v1QuotesSymbolIdCurrentGetWithHttpInfo(symbolId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'V1QuoteTrade',) as V1QuoteTrade;
    
    }
    return null;
  }

  /// Historical data
  ///
  /// Get historical quote updates within requested time range, returned in time ascending order.  :::warning The 'time_start' and 'time_end' parameters must be from the same day as this endpoint provides intraday data only for specific day. Please use the 'date' parameter instead for querying data for a specific day without filter. :::
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
  ///   Starting time in ISO 8601
  ///
  /// * [String] timeEnd:
  ///   Timeseries ending time in ISO 8601
  ///
  /// * [int] limit:
  ///   Amount of items to return (optional, minimum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
  Future<Response> v1QuotesSymbolIdHistoryGetWithHttpInfo(String symbolId, { String? date, String? timeStart, String? timeEnd, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/quotes/{symbol_id}/history'
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
  /// Get historical quote updates within requested time range, returned in time ascending order.  :::warning The 'time_start' and 'time_end' parameters must be from the same day as this endpoint provides intraday data only for specific day. Please use the 'date' parameter instead for querying data for a specific day without filter. :::
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
  ///   Starting time in ISO 8601
  ///
  /// * [String] timeEnd:
  ///   Timeseries ending time in ISO 8601
  ///
  /// * [int] limit:
  ///   Amount of items to return (optional, minimum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
  Future<List<V1Quote>?> v1QuotesSymbolIdHistoryGet(String symbolId, { String? date, String? timeStart, String? timeEnd, int? limit, }) async {
    final response = await v1QuotesSymbolIdHistoryGetWithHttpInfo(symbolId,  date: date, timeStart: timeStart, timeEnd: timeEnd, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<V1Quote>') as List)
        .cast<V1Quote>()
        .toList(growable: false);

    }
    return null;
  }

  /// Latest quote updates for a specific symbol
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
  Future<Response> v1QuotesSymbolIdLatestGetWithHttpInfo(String symbolId, { int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/quotes/{symbol_id}/latest'
      .replaceAll('{symbol_id}', symbolId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
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

  /// Latest quote updates for a specific symbol
  ///
  /// Parameters:
  ///
  /// * [String] symbolId (required):
  ///   Symbol identifier of requested timeseries (from the Metadata -> Symbols)
  ///
  /// * [int] limit:
  ///   Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
  Future<List<V1Quote>?> v1QuotesSymbolIdLatestGet(String symbolId, { int? limit, }) async {
    final response = await v1QuotesSymbolIdLatestGetWithHttpInfo(symbolId,  limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<V1Quote>') as List)
        .cast<V1Quote>()
        .toList(growable: false);

    }
    return null;
  }
}
