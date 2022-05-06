//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class EndpointsApi {
  EndpointsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Get API endpoints
  ///
  /// Get all API endpoints that the EMS API expose for your subscription.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [List<String>] filterExchangeId:
  ///   Exchange id
  Future<Response> endpointsWithHttpInfo({ List<String> filterExchangeId, }) async {
    // Verify required params are set.

    // ignore: prefer_const_declarations
    final path = r'/v1/endpoints';

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (filterExchangeId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('multi', 'filter_exchange_id', filterExchangeId));
    }

    const authNames = <String>['APIKeyHeader', 'APIKeyQueryParam'];
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

  /// Get API endpoints
  ///
  /// Get all API endpoints that the EMS API expose for your subscription.
  ///
  /// Parameters:
  ///
  /// * [List<String>] filterExchangeId:
  ///   Exchange id
  Future<List<AccountEndpoint>> endpoints({ List<String> filterExchangeId, }) async {
    final response = await endpointsWithHttpInfo( filterExchangeId: filterExchangeId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<AccountEndpoint>') as List)
        .cast<AccountEndpoint>()
        .toList(growable: false);

    }
    return Future<List<AccountEndpoint>>.value();
  }
}
