//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class TradesApi {
  TradesApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Latest data
  ///
  /// Get latest trades executed up to 1 minute ago. Latest data is always returned in time descending order.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] filterSymbolId:
  ///   Comma or semicolon delimited parts of symbol identifier used to filter response. (optional)
  ///
  /// * [bool] includeId:
  ///   Information that additional exchange trade identifier should be included in the `id_trade` parameter of the trade if exchange providing identifiers.
  ///
  /// * [int] limit:
  ///   Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
  Future<Response> v1TradesLatestGetWithHttpInfo({ String? filterSymbolId, bool? includeId, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/trades/latest';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (filterSymbolId != null) {
      queryParams.addAll(_queryParams('', 'filter_symbol_id', filterSymbolId));
    }
    if (includeId != null) {
      queryParams.addAll(_queryParams('', 'include_id', includeId));
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
  /// Get latest trades executed up to 1 minute ago. Latest data is always returned in time descending order.
  ///
  /// Parameters:
  ///
  /// * [String] filterSymbolId:
  ///   Comma or semicolon delimited parts of symbol identifier used to filter response. (optional)
  ///
  /// * [bool] includeId:
  ///   Information that additional exchange trade identifier should be included in the `id_trade` parameter of the trade if exchange providing identifiers.
  ///
  /// * [int] limit:
  ///   Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
  Future<List<V1Trade>?> v1TradesLatestGet({ String? filterSymbolId, bool? includeId, int? limit, }) async {
    final response = await v1TradesLatestGetWithHttpInfo( filterSymbolId: filterSymbolId, includeId: includeId, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<V1Trade>') as List)
        .cast<V1Trade>()
        .toList(growable: false);

    }
    return null;
  }

  /// Historical data
  ///
  /// Get history transactions from specific symbol, returned in time ascending order.  :::warning The 'time_start' and 'time_end' parameters must be from the same day as this endpoint provides intraday data only for specific day. Please use the 'date' parameter instead for querying data for a specific day without filter. :::
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] symbolId (required):
  ///   Symbol identifier for requested timeseries (from the Metadata -> Symbols)
  ///
  /// * [String] date:
  ///   Date in ISO 8601, returned data is for the whole given day (required if 'time_start' is not provided)
  ///
  /// * [String] timeStart:
  ///   Starting time in ISO 8601
  ///
  /// * [String] timeEnd:
  ///   Timeseries ending time in ISO 8601
  ///
  /// * [int] limit:
  ///   Amount of items to return (optional, minimum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
  ///
  /// * [bool] includeId:
  ///   Information that additional exchange trade identifier should be included in the `id_trade` parameter of the trade if exchange providing identifiers.
  Future<Response> v1TradesSymbolIdHistoryGetWithHttpInfo(String symbolId, { String? date, String? timeStart, String? timeEnd, int? limit, bool? includeId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/trades/{symbol_id}/history'
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
    if (includeId != null) {
      queryParams.addAll(_queryParams('', 'include_id', includeId));
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
  /// Get history transactions from specific symbol, returned in time ascending order.  :::warning The 'time_start' and 'time_end' parameters must be from the same day as this endpoint provides intraday data only for specific day. Please use the 'date' parameter instead for querying data for a specific day without filter. :::
  ///
  /// Parameters:
  ///
  /// * [String] symbolId (required):
  ///   Symbol identifier for requested timeseries (from the Metadata -> Symbols)
  ///
  /// * [String] date:
  ///   Date in ISO 8601, returned data is for the whole given day (required if 'time_start' is not provided)
  ///
  /// * [String] timeStart:
  ///   Starting time in ISO 8601
  ///
  /// * [String] timeEnd:
  ///   Timeseries ending time in ISO 8601
  ///
  /// * [int] limit:
  ///   Amount of items to return (optional, minimum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
  ///
  /// * [bool] includeId:
  ///   Information that additional exchange trade identifier should be included in the `id_trade` parameter of the trade if exchange providing identifiers.
  Future<List<V1Trade>?> v1TradesSymbolIdHistoryGet(String symbolId, { String? date, String? timeStart, String? timeEnd, int? limit, bool? includeId, }) async {
    final response = await v1TradesSymbolIdHistoryGetWithHttpInfo(symbolId,  date: date, timeStart: timeStart, timeEnd: timeEnd, limit: limit, includeId: includeId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<V1Trade>') as List)
        .cast<V1Trade>()
        .toList(growable: false);

    }
    return null;
  }

  /// Latest data by symbol_id
  ///
  /// Get latest trades executed up to 1 minute ago. Latest data is always returned in time descending order.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] symbolId (required):
  ///   Symbol identifier for requested timeseries (from the Metadata -> Symbols)
  ///
  /// * [int] limit:
  ///   Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
  ///
  /// * [bool] includeId:
  ///   Information that additional exchange trade identifier should be included in the `id_trade` parameter of the trade if exchange providing identifiers.
  Future<Response> v1TradesSymbolIdLatestGetWithHttpInfo(String symbolId, { int? limit, bool? includeId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/trades/{symbol_id}/latest'
      .replaceAll('{symbol_id}', symbolId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }
    if (includeId != null) {
      queryParams.addAll(_queryParams('', 'include_id', includeId));
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

  /// Latest data by symbol_id
  ///
  /// Get latest trades executed up to 1 minute ago. Latest data is always returned in time descending order.
  ///
  /// Parameters:
  ///
  /// * [String] symbolId (required):
  ///   Symbol identifier for requested timeseries (from the Metadata -> Symbols)
  ///
  /// * [int] limit:
  ///   Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
  ///
  /// * [bool] includeId:
  ///   Information that additional exchange trade identifier should be included in the `id_trade` parameter of the trade if exchange providing identifiers.
  Future<List<V1Trade>?> v1TradesSymbolIdLatestGet(String symbolId, { int? limit, bool? includeId, }) async {
    final response = await v1TradesSymbolIdLatestGetWithHttpInfo(symbolId,  limit: limit, includeId: includeId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<V1Trade>') as List)
        .cast<V1Trade>()
        .toList(growable: false);

    }
    return null;
  }
}
