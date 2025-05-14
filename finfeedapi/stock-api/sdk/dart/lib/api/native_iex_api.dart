//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class NativeIEXApi {
  NativeIEXApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Get Admin Messages
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] symbol (required):
  ///   The symbol identifier
  ///
  /// * [DateTime] date (required):
  ///   Optional date in format YYYY-MM-DD (defaults to latest available data)
  Future<Response> v1NativeIexAdminMessagesSymbolGetWithHttpInfo(String symbol, DateTime date,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/native/iex/admin/messages/{symbol}'
      .replaceAll('{symbol}', symbol);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'date', date));

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

  /// Get Admin Messages
  ///
  /// Parameters:
  ///
  /// * [String] symbol (required):
  ///   The symbol identifier
  ///
  /// * [DateTime] date (required):
  ///   Optional date in format YYYY-MM-DD (defaults to latest available data)
  Future<List<AdminAdminMessageModel>?> v1NativeIexAdminMessagesSymbolGet(String symbol, DateTime date,) async {
    final response = await v1NativeIexAdminMessagesSymbolGetWithHttpInfo(symbol, date,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<AdminAdminMessageModel>') as List)
        .cast<AdminAdminMessageModel>()
        .toList(growable: false);

    }
    return null;
  }

  /// Get System Events
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [DateTime] date (required):
  ///   Date in format YYYY-MM-DD
  Future<Response> v1NativeIexAdminSystemEventGetWithHttpInfo(DateTime date,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/native/iex/admin/system-event';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'date', date));

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

  /// Get System Events
  ///
  /// Parameters:
  ///
  /// * [DateTime] date (required):
  ///   Date in format YYYY-MM-DD
  Future<List<AdminSystemEventModel>?> v1NativeIexAdminSystemEventGet(DateTime date,) async {
    final response = await v1NativeIexAdminSystemEventGetWithHttpInfo(date,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<AdminSystemEventModel>') as List)
        .cast<AdminSystemEventModel>()
        .toList(growable: false);

    }
    return null;
  }

  /// Get Level-1 Quotes
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] symbol (required):
  ///   The symbol identifier
  ///
  /// * [DateTime] date (required):
  ///   Optional date in format YYYY-MM-DD (defaults to latest available data)
  Future<Response> v1NativeIexLevel1QuoteSymbolGetWithHttpInfo(String symbol, DateTime date,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/native/iex/level1-quote/{symbol}'
      .replaceAll('{symbol}', symbol);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'date', date));

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

  /// Get Level-1 Quotes
  ///
  /// Parameters:
  ///
  /// * [String] symbol (required):
  ///   The symbol identifier
  ///
  /// * [DateTime] date (required):
  ///   Optional date in format YYYY-MM-DD (defaults to latest available data)
  Future<List<Level1QuoteUpdateModel>?> v1NativeIexLevel1QuoteSymbolGet(String symbol, DateTime date,) async {
    final response = await v1NativeIexLevel1QuoteSymbolGetWithHttpInfo(symbol, date,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<Level1QuoteUpdateModel>') as List)
        .cast<Level1QuoteUpdateModel>()
        .toList(growable: false);

    }
    return null;
  }

  /// Get Level-2 Price Level Book
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] symbol (required):
  ///   The symbol identifier
  ///
  /// * [DateTime] date (required):
  ///   Optional date in format YYYY-MM-DD (defaults to latest available data)
  Future<Response> v1NativeIexLevel2PriceLevelUpdateSymbolGetWithHttpInfo(String symbol, DateTime date,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/native/iex/level2-price-level-update/{symbol}'
      .replaceAll('{symbol}', symbol);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'date', date));

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

  /// Get Level-2 Price Level Book
  ///
  /// Parameters:
  ///
  /// * [String] symbol (required):
  ///   The symbol identifier
  ///
  /// * [DateTime] date (required):
  ///   Optional date in format YYYY-MM-DD (defaults to latest available data)
  Future<List<Level2PriceLevelUpdateModel>?> v1NativeIexLevel2PriceLevelUpdateSymbolGet(String symbol, DateTime date,) async {
    final response = await v1NativeIexLevel2PriceLevelUpdateSymbolGetWithHttpInfo(symbol, date,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<Level2PriceLevelUpdateModel>') as List)
        .cast<Level2PriceLevelUpdateModel>()
        .toList(growable: false);

    }
    return null;
  }

  /// Get Level-3 Order Book
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] symbol (required):
  ///   The symbol identifier
  ///
  /// * [DateTime] date (required):
  ///   Optional date in format YYYY-MM-DD (defaults to latest available data)
  Future<Response> v1NativeIexLevel3OrderBookSymbolGetWithHttpInfo(String symbol, DateTime date,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/native/iex/level3-order-book/{symbol}'
      .replaceAll('{symbol}', symbol);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'date', date));

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

  /// Get Level-3 Order Book
  ///
  /// Parameters:
  ///
  /// * [String] symbol (required):
  ///   The symbol identifier
  ///
  /// * [DateTime] date (required):
  ///   Optional date in format YYYY-MM-DD (defaults to latest available data)
  Future<List<Level3OrderBookModel>?> v1NativeIexLevel3OrderBookSymbolGet(String symbol, DateTime date,) async {
    final response = await v1NativeIexLevel3OrderBookSymbolGetWithHttpInfo(symbol, date,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<Level3OrderBookModel>') as List)
        .cast<Level3OrderBookModel>()
        .toList(growable: false);

    }
    return null;
  }

  /// Get Trades
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] symbol (required):
  ///   The symbol identifier
  ///
  /// * [DateTime] date (required):
  ///   Optional date in format YYYY-MM-DD (defaults to latest available data)
  Future<Response> v1NativeIexTradeSymbolGetWithHttpInfo(String symbol, DateTime date,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/native/iex/trade/{symbol}'
      .replaceAll('{symbol}', symbol);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'date', date));

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

  /// Get Trades
  ///
  /// Parameters:
  ///
  /// * [String] symbol (required):
  ///   The symbol identifier
  ///
  /// * [DateTime] date (required):
  ///   Optional date in format YYYY-MM-DD (defaults to latest available data)
  Future<List<TradeTradeModel>?> v1NativeIexTradeSymbolGet(String symbol, DateTime date,) async {
    final response = await v1NativeIexTradeSymbolGetWithHttpInfo(symbol, date,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<TradeTradeModel>') as List)
        .cast<TradeTradeModel>()
        .toList(growable: false);

    }
    return null;
  }
}
