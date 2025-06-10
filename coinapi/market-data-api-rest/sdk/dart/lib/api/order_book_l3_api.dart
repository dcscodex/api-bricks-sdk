//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class OrderBookL3Api {
  OrderBookL3Api([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Current order books
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] filterSymbolId:
  ///   Comma or semicolon delimited parts of symbol identifier used to filter the response.
  ///
  /// * [int] limitLevels:
  ///   The maximum number of levels to include in the response.
  Future<Response> v1Orderbooks3CurrentGetWithHttpInfo({ String? filterSymbolId, int? limitLevels, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/orderbooks3/current';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (filterSymbolId != null) {
      queryParams.addAll(_queryParams('', 'filter_symbol_id', filterSymbolId));
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

  /// Current order books
  ///
  /// Parameters:
  ///
  /// * [String] filterSymbolId:
  ///   Comma or semicolon delimited parts of symbol identifier used to filter the response.
  ///
  /// * [int] limitLevels:
  ///   The maximum number of levels to include in the response.
  Future<List<V1OrderBookBase>?> v1Orderbooks3CurrentGet({ String? filterSymbolId, int? limitLevels, }) async {
    final response = await v1Orderbooks3CurrentGetWithHttpInfo( filterSymbolId: filterSymbolId, limitLevels: limitLevels, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<V1OrderBookBase>') as List)
        .cast<V1OrderBookBase>()
        .toList(growable: false);

    }
    return null;
  }

  /// Current order book by symbol_id
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
  Future<Response> v1Orderbooks3SymbolIdCurrentGetWithHttpInfo(String symbolId, { int? limitLevels, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/orderbooks3/{symbol_id}/current'
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

  /// Current order book by symbol_id
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
  Future<V1OrderBookBase?> v1Orderbooks3SymbolIdCurrentGet(String symbolId, { int? limitLevels, }) async {
    final response = await v1Orderbooks3SymbolIdCurrentGetWithHttpInfo(symbolId,  limitLevels: limitLevels, );
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
}
