//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class IndexesApi {
  IndexesApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Returns all data inputs for a specific index definition
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] indexDefinitionId (required):
  Future<Response> v1IndexdefInputDataIndexDefinitionIdAllGetWithHttpInfo(String indexDefinitionId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/indexdef/input-data/{index_definition_id}/all'
      .replaceAll('{index_definition_id}', indexDefinitionId);

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

  /// Returns all data inputs for a specific index definition
  ///
  /// Parameters:
  ///
  /// * [String] indexDefinitionId (required):
  Future<List<IndexesIndexDefinitionInputData>?> v1IndexdefInputDataIndexDefinitionIdAllGet(String indexDefinitionId,) async {
    final response = await v1IndexdefInputDataIndexDefinitionIdAllGetWithHttpInfo(indexDefinitionId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<IndexesIndexDefinitionInputData>') as List)
        .cast<IndexesIndexDefinitionInputData>()
        .toList(growable: false);

    }
    return null;
  }

  /// Returns data inputs for certain index definition and time
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] indexDefinitionId (required):
  ///
  /// * [DateTime] time:
  ///
  /// * [bool] enabledOnly:
  ///
  /// * [bool] pendingOnly:
  ///
  /// * [String] filterAssetId:
  ///
  /// * [bool] withStatusInfo:
  Future<Response> v1IndexdefInputDataIndexDefinitionIdGetWithHttpInfo(String indexDefinitionId, { DateTime? time, bool? enabledOnly, bool? pendingOnly, String? filterAssetId, bool? withStatusInfo, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/indexdef/input-data/{index_definition_id}'
      .replaceAll('{index_definition_id}', indexDefinitionId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (time != null) {
      queryParams.addAll(_queryParams('', 'time', time));
    }
    if (enabledOnly != null) {
      queryParams.addAll(_queryParams('', 'enabled_only', enabledOnly));
    }
    if (pendingOnly != null) {
      queryParams.addAll(_queryParams('', 'pending_only', pendingOnly));
    }
    if (filterAssetId != null) {
      queryParams.addAll(_queryParams('', 'filter_asset_id', filterAssetId));
    }
    if (withStatusInfo != null) {
      queryParams.addAll(_queryParams('', 'with_status_info', withStatusInfo));
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

  /// Returns data inputs for certain index definition and time
  ///
  /// Parameters:
  ///
  /// * [String] indexDefinitionId (required):
  ///
  /// * [DateTime] time:
  ///
  /// * [bool] enabledOnly:
  ///
  /// * [bool] pendingOnly:
  ///
  /// * [String] filterAssetId:
  ///
  /// * [bool] withStatusInfo:
  Future<List<IndexesIndexDefinitionSnapshotEntry>?> v1IndexdefInputDataIndexDefinitionIdGet(String indexDefinitionId, { DateTime? time, bool? enabledOnly, bool? pendingOnly, String? filterAssetId, bool? withStatusInfo, }) async {
    final response = await v1IndexdefInputDataIndexDefinitionIdGetWithHttpInfo(indexDefinitionId,  time: time, enabledOnly: enabledOnly, pendingOnly: pendingOnly, filterAssetId: filterAssetId, withStatusInfo: withStatusInfo, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<IndexesIndexDefinitionSnapshotEntry>') as List)
        .cast<IndexesIndexDefinitionSnapshotEntry>()
        .toList(growable: false);

    }
    return null;
  }

  /// Get all multi-asset weights
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> v1IndexdefMultiassetGetWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/indexdef/multiasset';

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

  /// Get all multi-asset weights
  Future<List<IndexesIndexMultiAssetWeight>?> v1IndexdefMultiassetGet() async {
    final response = await v1IndexdefMultiassetGetWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<IndexesIndexMultiAssetWeight>') as List)
        .cast<IndexesIndexMultiAssetWeight>()
        .toList(growable: false);

    }
    return null;
  }

  /// Get multi-asset weights for specific index
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] indexId (required):
  Future<Response> v1IndexdefMultiassetIndexIdGetWithHttpInfo(String indexId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/indexdef/multiasset/{index_id}'
      .replaceAll('{index_id}', indexId);

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

  /// Get multi-asset weights for specific index
  ///
  /// Parameters:
  ///
  /// * [String] indexId (required):
  Future<List<IndexesIndexMultiAssetWeight>?> v1IndexdefMultiassetIndexIdGet(String indexId,) async {
    final response = await v1IndexdefMultiassetIndexIdGetWithHttpInfo(indexId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<IndexesIndexMultiAssetWeight>') as List)
        .cast<IndexesIndexMultiAssetWeight>()
        .toList(growable: false);

    }
    return null;
  }

  /// List indexes
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> v1IndexesGetWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/indexes';

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

  /// List indexes
  Future<List<IndexesIndexIdentifier>?> v1IndexesGet() async {
    final response = await v1IndexesGetWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<IndexesIndexIdentifier>') as List)
        .cast<IndexesIndexIdentifier>()
        .toList(growable: false);

    }
    return null;
  }

  /// Current Index Values for index definition
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] indexDefinitionId (required):
  Future<Response> v1IndexesIndexDefinitionIdCurrentSnapshotGetWithHttpInfo(String indexDefinitionId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/indexes/{index_definition_id}/currentSnapshot'
      .replaceAll('{index_definition_id}', indexDefinitionId);

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

  /// Current Index Values for index definition
  ///
  /// Parameters:
  ///
  /// * [String] indexDefinitionId (required):
  Future<List<IndexesIndexDefinitionSnapshotEntry>?> v1IndexesIndexDefinitionIdCurrentSnapshotGet(String indexDefinitionId,) async {
    final response = await v1IndexesIndexDefinitionIdCurrentSnapshotGetWithHttpInfo(indexDefinitionId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<IndexesIndexDefinitionSnapshotEntry>') as List)
        .cast<IndexesIndexDefinitionSnapshotEntry>()
        .toList(growable: false);

    }
    return null;
  }

  /// Historical Index Values for index definition
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] indexDefinitionId (required):
  ///
  /// * [DateTime] time:
  Future<Response> v1IndexesIndexDefinitionIdHistorySnapshotGetWithHttpInfo(String indexDefinitionId, { DateTime? time, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/indexes/{index_definition_id}/historySnapshot'
      .replaceAll('{index_definition_id}', indexDefinitionId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (time != null) {
      queryParams.addAll(_queryParams('', 'time', time));
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

  /// Historical Index Values for index definition
  ///
  /// Parameters:
  ///
  /// * [String] indexDefinitionId (required):
  ///
  /// * [DateTime] time:
  Future<List<IndexesIndexDefinitionSnapshotEntry>?> v1IndexesIndexDefinitionIdHistorySnapshotGet(String indexDefinitionId, { DateTime? time, }) async {
    final response = await v1IndexesIndexDefinitionIdHistorySnapshotGetWithHttpInfo(indexDefinitionId,  time: time, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<IndexesIndexDefinitionSnapshotEntry>') as List)
        .cast<IndexesIndexDefinitionSnapshotEntry>()
        .toList(growable: false);

    }
    return null;
  }

  /// Current Index Value
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] indexId (required):
  Future<Response> v1IndexesIndexIdCurrentGetWithHttpInfo(String indexId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/indexes/{index_id}/current'
      .replaceAll('{index_id}', indexId);

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

  /// Current Index Value
  ///
  /// Parameters:
  ///
  /// * [String] indexId (required):
  Future<IndexesIndexValue?> v1IndexesIndexIdCurrentGet(String indexId,) async {
    final response = await v1IndexesIndexIdCurrentGetWithHttpInfo(indexId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IndexesIndexValue',) as IndexesIndexValue;
    
    }
    return null;
  }

  /// Historical Index Value w/Composition
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] indexId (required):
  ///
  /// * [DateTime] timeStart:
  ///
  /// * [DateTime] timeEnd:
  ///
  /// * [int] limit:
  Future<Response> v1IndexesIndexIdHistoryGetWithHttpInfo(String indexId, { DateTime? timeStart, DateTime? timeEnd, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/indexes/{index_id}/history'
      .replaceAll('{index_id}', indexId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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

  /// Historical Index Value w/Composition
  ///
  /// Parameters:
  ///
  /// * [String] indexId (required):
  ///
  /// * [DateTime] timeStart:
  ///
  /// * [DateTime] timeEnd:
  ///
  /// * [int] limit:
  Future<List<IndexesIndexValue>?> v1IndexesIndexIdHistoryGet(String indexId, { DateTime? timeStart, DateTime? timeEnd, int? limit, }) async {
    final response = await v1IndexesIndexIdHistoryGetWithHttpInfo(indexId,  timeStart: timeStart, timeEnd: timeEnd, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<IndexesIndexValue>') as List)
        .cast<IndexesIndexValue>()
        .toList(growable: false);

    }
    return null;
  }

  /// Timeseries Index Value
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] indexId (required):
  ///   
  ///
  /// * [String] periodId (required):
  ///   Identifier of requested timeseries period (e.g. `5SEC` or `1DAY`)
  ///
  /// * [String] timeStart (required):
  ///   Timeseries starting time in ISO 8601
  ///
  /// * [String] timeEnd (required):
  ///   Timeseries ending time in ISO 8601
  ///
  /// * [int] limit:
  ///   Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
  Future<Response> v1IndexesIndexIdTimeseriesGetWithHttpInfo(String indexId, String periodId, String timeStart, String timeEnd, { int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/indexes/{index_id}/timeseries'
      .replaceAll('{index_id}', indexId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'period_id', periodId));
      queryParams.addAll(_queryParams('', 'time_start', timeStart));
      queryParams.addAll(_queryParams('', 'time_end', timeEnd));
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

  /// Timeseries Index Value
  ///
  /// Parameters:
  ///
  /// * [String] indexId (required):
  ///   
  ///
  /// * [String] periodId (required):
  ///   Identifier of requested timeseries period (e.g. `5SEC` or `1DAY`)
  ///
  /// * [String] timeStart (required):
  ///   Timeseries starting time in ISO 8601
  ///
  /// * [String] timeEnd (required):
  ///   Timeseries ending time in ISO 8601
  ///
  /// * [int] limit:
  ///   Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
  Future<List<IndexesIndexTimeseriesItem>?> v1IndexesIndexIdTimeseriesGet(String indexId, String periodId, String timeStart, String timeEnd, { int? limit, }) async {
    final response = await v1IndexesIndexIdTimeseriesGetWithHttpInfo(indexId, periodId, timeStart, timeEnd,  limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<IndexesIndexTimeseriesItem>') as List)
        .cast<IndexesIndexTimeseriesItem>()
        .toList(growable: false);

    }
    return null;
  }
}
