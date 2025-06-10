//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class ExchangeRatesApi {
  ExchangeRatesApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Get specific rate
  ///
  /// Retrieves the exchange rate for a specific base and quote asset at a given time or the current rate.              :::info If you are using an exchange rate for mission-critical operations, then for best reliability, you should measure the difference between current time and the time returned from the response to ensure that value of the difference between those meets your internal requirements. :::
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] assetIdBase (required):
  ///   Requested exchange rate base asset identifier (from the Metadata -> Assets)
  ///
  /// * [String] assetIdQuote (required):
  ///   Requested exchange rate quote asset identifier (from the Metadata -> Assets)
  Future<Response> getSpecificRateWithHttpInfo(String assetIdBase, String assetIdQuote,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/exchangerate/{asset_id_base}/{asset_id_quote}'
      .replaceAll('{asset_id_base}', assetIdBase)
      .replaceAll('{asset_id_quote}', assetIdQuote);

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

  /// Get specific rate
  ///
  /// Retrieves the exchange rate for a specific base and quote asset at a given time or the current rate.              :::info If you are using an exchange rate for mission-critical operations, then for best reliability, you should measure the difference between current time and the time returned from the response to ensure that value of the difference between those meets your internal requirements. :::
  ///
  /// Parameters:
  ///
  /// * [String] assetIdBase (required):
  ///   Requested exchange rate base asset identifier (from the Metadata -> Assets)
  ///
  /// * [String] assetIdQuote (required):
  ///   Requested exchange rate quote asset identifier (from the Metadata -> Assets)
  Future<V1ExchangeRate?> getSpecificRate(String assetIdBase, String assetIdQuote,) async {
    final response = await getSpecificRateWithHttpInfo(assetIdBase, assetIdQuote,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'V1ExchangeRate',) as V1ExchangeRate;
    
    }
    return null;
  }

  /// Get all current rates
  ///
  /// Get the current exchange rate between requested asset and all other assets.              :::info If you are using an exchange rate for mission-critical operations, then for best reliability, you should measure the difference between current time and the time returned from the response to ensure that value of the difference between those meets your internal requirements. :::              :::info You can invert the rates by using Y = 1 / X equation, for example BTC/USD = 1 / (USD/BTC); :::
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] assetIdBase (required):
  ///   Requested exchange rates base asset identifier (from the Metadata -> Assets)
  ///
  /// * [String] filterAssetId:
  ///   Comma or semicolon delimited asset identifiers used to filter response (optional)
  ///
  /// * [bool] invert:
  ///   True will invert all the rates (optional, if true then rates will be calculated as `rate = 1 / actual_rate` eg. `USD/BTC` as `BTC/USD`)
  Future<Response> v1ExchangerateAssetIdBaseGetWithHttpInfo(String assetIdBase, { String? filterAssetId, bool? invert, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/exchangerate/{asset_id_base}'
      .replaceAll('{asset_id_base}', assetIdBase);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (filterAssetId != null) {
      queryParams.addAll(_queryParams('', 'filter_asset_id', filterAssetId));
    }
    if (invert != null) {
      queryParams.addAll(_queryParams('', 'invert', invert));
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

  /// Get all current rates
  ///
  /// Get the current exchange rate between requested asset and all other assets.              :::info If you are using an exchange rate for mission-critical operations, then for best reliability, you should measure the difference between current time and the time returned from the response to ensure that value of the difference between those meets your internal requirements. :::              :::info You can invert the rates by using Y = 1 / X equation, for example BTC/USD = 1 / (USD/BTC); :::
  ///
  /// Parameters:
  ///
  /// * [String] assetIdBase (required):
  ///   Requested exchange rates base asset identifier (from the Metadata -> Assets)
  ///
  /// * [String] filterAssetId:
  ///   Comma or semicolon delimited asset identifiers used to filter response (optional)
  ///
  /// * [bool] invert:
  ///   True will invert all the rates (optional, if true then rates will be calculated as `rate = 1 / actual_rate` eg. `USD/BTC` as `BTC/USD`)
  Future<V1ExchangeRates?> v1ExchangerateAssetIdBaseGet(String assetIdBase, { String? filterAssetId, bool? invert, }) async {
    final response = await v1ExchangerateAssetIdBaseGetWithHttpInfo(assetIdBase,  filterAssetId: filterAssetId, invert: invert, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'V1ExchangeRates',) as V1ExchangeRates;
    
    }
    return null;
  }
}
