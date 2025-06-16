//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class OptionsApi {
  OptionsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Current data by Exchange
  ///
  /// Get current options data for a specific exchange.  Returns option data grouped by underlying asset, quote currency, and expiration time, with quotes for both calls and puts at each strike price.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] exchangeId (required):
  ///   Exchange identifier (from the Metadata -> Exchanges)
  Future<Response> v1OptionsExchangeIdCurrentGetWithHttpInfo(String exchangeId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/options/{exchange_id}/current'
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

  /// Current data by Exchange
  ///
  /// Get current options data for a specific exchange.  Returns option data grouped by underlying asset, quote currency, and expiration time, with quotes for both calls and puts at each strike price.
  ///
  /// Parameters:
  ///
  /// * [String] exchangeId (required):
  ///   Exchange identifier (from the Metadata -> Exchanges)
  Future<List<OptionsOptionExchangeGroup>?> v1OptionsExchangeIdCurrentGet(String exchangeId,) async {
    final response = await v1OptionsExchangeIdCurrentGetWithHttpInfo(exchangeId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<OptionsOptionExchangeGroup>') as List)
        .cast<OptionsOptionExchangeGroup>()
        .toList(growable: false);

    }
    return null;
  }
}
