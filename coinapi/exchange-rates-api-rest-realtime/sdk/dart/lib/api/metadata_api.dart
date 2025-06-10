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

  /// List all assets by asset ID
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] assetId (required):
  ///   The asset ID.
  Future<Response> v1AssetsAssetIdGetWithHttpInfo(String assetId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/assets/{asset_id}'
      .replaceAll('{asset_id}', assetId);

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

  /// List all assets by asset ID
  ///
  /// Parameters:
  ///
  /// * [String] assetId (required):
  ///   The asset ID.
  Future<List<V1Asset>?> v1AssetsAssetIdGet(String assetId,) async {
    final response = await v1AssetsAssetIdGetWithHttpInfo(assetId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<V1Asset>') as List)
        .cast<V1Asset>()
        .toList(growable: false);

    }
    return null;
  }

  /// List all assets
  ///
  /// Retrieves all assets.              :::info Our asset identifiers are aligned with the ISO 4217 currency codes standard only for fiat money (government or law regulated currency). :::              :::info Properties of the output are providing aggregated information from across all symbols related to the specific asset. If you need to calculate your aggregation (e.g., limiting only the particular type of symbols), you should use /v1/symbols endpoint as a data source. :::
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] filterAssetId:
  ///   Comma or semicolon delimited asset identifiers used to filter response. (optional, eg. `BTC;ETH`).
  Future<Response> v1AssetsGetWithHttpInfo({ String? filterAssetId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/assets';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (filterAssetId != null) {
      queryParams.addAll(_queryParams('', 'filter_asset_id', filterAssetId));
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

  /// List all assets
  ///
  /// Retrieves all assets.              :::info Our asset identifiers are aligned with the ISO 4217 currency codes standard only for fiat money (government or law regulated currency). :::              :::info Properties of the output are providing aggregated information from across all symbols related to the specific asset. If you need to calculate your aggregation (e.g., limiting only the particular type of symbols), you should use /v1/symbols endpoint as a data source. :::
  ///
  /// Parameters:
  ///
  /// * [String] filterAssetId:
  ///   Comma or semicolon delimited asset identifiers used to filter response. (optional, eg. `BTC;ETH`).
  Future<List<V1Asset>?> v1AssetsGet({ String? filterAssetId, }) async {
    final response = await v1AssetsGetWithHttpInfo( filterAssetId: filterAssetId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<V1Asset>') as List)
        .cast<V1Asset>()
        .toList(growable: false);

    }
    return null;
  }

  /// List all asset icons
  ///
  /// Gets the list of icons (of the given size) for all the assets.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] size (required):
  ///   The size of the icons.
  Future<Response> v1AssetsIconsSizeGetWithHttpInfo(int size,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/assets/icons/{size}'
      .replaceAll('{size}', size.toString());

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

  /// List all asset icons
  ///
  /// Gets the list of icons (of the given size) for all the assets.
  ///
  /// Parameters:
  ///
  /// * [int] size (required):
  ///   The size of the icons.
  Future<List<V1Icon>?> v1AssetsIconsSizeGet(int size,) async {
    final response = await v1AssetsIconsSizeGetWithHttpInfo(size,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<V1Icon>') as List)
        .cast<V1Icon>()
        .toList(growable: false);

    }
    return null;
  }
}
