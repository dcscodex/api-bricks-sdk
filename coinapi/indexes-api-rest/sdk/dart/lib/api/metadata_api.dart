//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class MetadataApi {
  MetadataApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// List all exchanges by exchange_id
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] exchangeId (required):
  ///   The ID of the exchange.
  Future<Response> apiMetadataExchangesExchangeIdGetWithHttpInfo(String exchangeId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/metadata/exchanges/{exchange_id}'
      .replaceAll('{exchange_id}', exchangeId);

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

  /// List all exchanges by exchange_id
  ///
  /// Parameters:
  ///
  /// * [String] exchangeId (required):
  ///   The ID of the exchange.
  Future<List<MetadataExchange>?> apiMetadataExchangesExchangeIdGet(String exchangeId,) async {
    final response = await apiMetadataExchangesExchangeIdGetWithHttpInfo(exchangeId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<MetadataExchange>') as List)
        .cast<MetadataExchange>()
        .toList(growable: false);

    }
    return null;
  }

  /// List all exchanges
  ///
  /// Get a detailed list of exchanges provided by the system.              :::info Properties of the output are providing aggregated information from across all symbols related to the specific exchange. If you need to calculate your aggregation (e.g., limiting only the particular type of symbols), you should use /v1/symbols endpoint as a data source. :::
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] filterExchangeId:
  ///   Comma or semicolon delimited exchange identifiers used to filter response. (optional, eg. `BITSTAMP;GEMINI`)
  Future<Response> apiMetadataExchangesGetWithHttpInfo({ String? filterExchangeId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/metadata/exchanges';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (filterExchangeId != null) {
      queryParams.addAll(_queryParams('', 'filter_exchange_id', filterExchangeId));
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

  /// List all exchanges
  ///
  /// Get a detailed list of exchanges provided by the system.              :::info Properties of the output are providing aggregated information from across all symbols related to the specific exchange. If you need to calculate your aggregation (e.g., limiting only the particular type of symbols), you should use /v1/symbols endpoint as a data source. :::
  ///
  /// Parameters:
  ///
  /// * [String] filterExchangeId:
  ///   Comma or semicolon delimited exchange identifiers used to filter response. (optional, eg. `BITSTAMP;GEMINI`)
  Future<List<MetadataExchange>?> apiMetadataExchangesGet({ String? filterExchangeId, }) async {
    final response = await apiMetadataExchangesGetWithHttpInfo( filterExchangeId: filterExchangeId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<MetadataExchange>') as List)
        .cast<MetadataExchange>()
        .toList(growable: false);

    }
    return null;
  }
}
