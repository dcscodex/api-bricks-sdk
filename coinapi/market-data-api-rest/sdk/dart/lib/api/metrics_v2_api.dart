//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class MetricsV2Api {
  MetricsV2Api([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Historical metrics for the asset
  ///
  /// Get asset metrics history.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] metricId (required):
  ///   Metric identifier (e.g., `TVL`, `STABLES_BRIDGED_USD`)
  ///
  /// * [String] assetId (required):
  ///   Asset identifier (e.g., `USDC`, `USDT`)
  ///
  /// * [DateTime] timeStart:
  ///   Starting time in ISO 8601
  ///
  /// * [DateTime] timeEnd:
  ///   Ending time in ISO 8601
  ///
  /// * [String] timeFormat:
  ///   If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec)
  ///
  /// * [String] periodId:
  ///   Identifier of requested timeseries period (e.g. `1MIN` or `2MTH`), default value is `1MIN`
  ///
  /// * [int] limit:
  ///   Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
  Future<Response> v2MetricsAssetHistoryGetWithHttpInfo(String metricId, String assetId, { DateTime? timeStart, DateTime? timeEnd, String? timeFormat, String? periodId, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v2/metrics/asset/history';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'metric_id', metricId));
      queryParams.addAll(_queryParams('', 'asset_id', assetId));
    if (timeStart != null) {
      queryParams.addAll(_queryParams('', 'time_start', timeStart));
    }
    if (timeEnd != null) {
      queryParams.addAll(_queryParams('', 'time_end', timeEnd));
    }
    if (timeFormat != null) {
      queryParams.addAll(_queryParams('', 'time_format', timeFormat));
    }
    if (periodId != null) {
      queryParams.addAll(_queryParams('', 'period_id', periodId));
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

  /// Historical metrics for the asset
  ///
  /// Get asset metrics history.
  ///
  /// Parameters:
  ///
  /// * [String] metricId (required):
  ///   Metric identifier (e.g., `TVL`, `STABLES_BRIDGED_USD`)
  ///
  /// * [String] assetId (required):
  ///   Asset identifier (e.g., `USDC`, `USDT`)
  ///
  /// * [DateTime] timeStart:
  ///   Starting time in ISO 8601
  ///
  /// * [DateTime] timeEnd:
  ///   Ending time in ISO 8601
  ///
  /// * [String] timeFormat:
  ///   If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec)
  ///
  /// * [String] periodId:
  ///   Identifier of requested timeseries period (e.g. `1MIN` or `2MTH`), default value is `1MIN`
  ///
  /// * [int] limit:
  ///   Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
  Future<List<Object>?> v2MetricsAssetHistoryGet(String metricId, String assetId, { DateTime? timeStart, DateTime? timeEnd, String? timeFormat, String? periodId, int? limit, }) async {
    final response = await v2MetricsAssetHistoryGetWithHttpInfo(metricId, assetId,  timeStart: timeStart, timeEnd: timeEnd, timeFormat: timeFormat, periodId: periodId, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<Object>') as List)
        .cast<Object>()
        .toList(growable: false);

    }
    return null;
  }

  /// Listing of metrics available for specific asset
  ///
  /// Get all metrics that are actually available for the specified asset.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] assetId (required):
  ///   Asset identifier (e.g., USDC, USDT)
  Future<Response> v2MetricsAssetListingGetWithHttpInfo(String assetId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v2/metrics/asset/listing';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'asset_id', assetId));

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

  /// Listing of metrics available for specific asset
  ///
  /// Get all metrics that are actually available for the specified asset.
  ///
  /// Parameters:
  ///
  /// * [String] assetId (required):
  ///   Asset identifier (e.g., USDC, USDT)
  Future<List<V1MetricInfo>?> v2MetricsAssetListingGet(String assetId,) async {
    final response = await v2MetricsAssetListingGetWithHttpInfo(assetId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<V1MetricInfo>') as List)
        .cast<V1MetricInfo>()
        .toList(growable: false);

    }
    return null;
  }

  /// Historical metrics for the chain
  ///
  /// Get chain metrics history.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] metricId (required):
  ///   Metric identifier (e.g., `TVL`, `STABLES_BRIDGED_USD`)
  ///
  /// * [String] chainId (required):
  ///   Chain identifier (e.g., `Ethereum`, `Arbitrum`)
  ///
  /// * [DateTime] timeStart:
  ///   Starting time in ISO 8601
  ///
  /// * [DateTime] timeEnd:
  ///   Ending time in ISO 8601
  ///
  /// * [String] timeFormat:
  ///   If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec)
  ///
  /// * [String] periodId:
  ///   Identifier of requested timeseries period (e.g. `1MIN` or `2MTH`), default value is `1MIN`
  ///
  /// * [int] limit:
  ///   Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
  Future<Response> v2MetricsChainHistoryGetWithHttpInfo(String metricId, String chainId, { DateTime? timeStart, DateTime? timeEnd, String? timeFormat, String? periodId, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v2/metrics/chain/history';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'metric_id', metricId));
      queryParams.addAll(_queryParams('', 'chain_id', chainId));
    if (timeStart != null) {
      queryParams.addAll(_queryParams('', 'time_start', timeStart));
    }
    if (timeEnd != null) {
      queryParams.addAll(_queryParams('', 'time_end', timeEnd));
    }
    if (timeFormat != null) {
      queryParams.addAll(_queryParams('', 'time_format', timeFormat));
    }
    if (periodId != null) {
      queryParams.addAll(_queryParams('', 'period_id', periodId));
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

  /// Historical metrics for the chain
  ///
  /// Get chain metrics history.
  ///
  /// Parameters:
  ///
  /// * [String] metricId (required):
  ///   Metric identifier (e.g., `TVL`, `STABLES_BRIDGED_USD`)
  ///
  /// * [String] chainId (required):
  ///   Chain identifier (e.g., `Ethereum`, `Arbitrum`)
  ///
  /// * [DateTime] timeStart:
  ///   Starting time in ISO 8601
  ///
  /// * [DateTime] timeEnd:
  ///   Ending time in ISO 8601
  ///
  /// * [String] timeFormat:
  ///   If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec)
  ///
  /// * [String] periodId:
  ///   Identifier of requested timeseries period (e.g. `1MIN` or `2MTH`), default value is `1MIN`
  ///
  /// * [int] limit:
  ///   Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
  Future<List<Object>?> v2MetricsChainHistoryGet(String metricId, String chainId, { DateTime? timeStart, DateTime? timeEnd, String? timeFormat, String? periodId, int? limit, }) async {
    final response = await v2MetricsChainHistoryGetWithHttpInfo(metricId, chainId,  timeStart: timeStart, timeEnd: timeEnd, timeFormat: timeFormat, periodId: periodId, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<Object>') as List)
        .cast<Object>()
        .toList(growable: false);

    }
    return null;
  }

  /// Listing of metrics available for specific chain
  ///
  /// Get all metrics that are actually available for the specified blockchain chain.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] chainId (required):
  ///   Chain identifier (e.g., ETHEREUM, ARBITRUM)
  Future<Response> v2MetricsChainListingGetWithHttpInfo(String chainId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v2/metrics/chain/listing';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'chain_id', chainId));

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

  /// Listing of metrics available for specific chain
  ///
  /// Get all metrics that are actually available for the specified blockchain chain.
  ///
  /// Parameters:
  ///
  /// * [String] chainId (required):
  ///   Chain identifier (e.g., ETHEREUM, ARBITRUM)
  Future<List<V1MetricInfo>?> v2MetricsChainListingGet(String chainId,) async {
    final response = await v2MetricsChainListingGetWithHttpInfo(chainId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<V1MetricInfo>') as List)
        .cast<V1MetricInfo>()
        .toList(growable: false);

    }
    return null;
  }

  /// Historical metrics for the exchange
  ///
  /// Get exchange metrics history.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] metricId (required):
  ///   Metric identifier (e.g., `TVL`, `STABLES_BRIDGED_USD`)
  ///
  /// * [String] exchangeId (required):
  ///   Exchange identifier (e.g., `BINANCE`, `UNISWAP-V3-ETHEREUM`)
  ///
  /// * [DateTime] timeStart:
  ///   Starting time in ISO 8601
  ///
  /// * [DateTime] timeEnd:
  ///   Ending time in ISO 8601
  ///
  /// * [String] timeFormat:
  ///   If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec)
  ///
  /// * [String] periodId:
  ///   Identifier of requested timeseries period (e.g. `1MIN` or `2MTH`), default value is `1MIN`
  ///
  /// * [int] limit:
  ///   Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
  Future<Response> v2MetricsExchangeHistoryGetWithHttpInfo(String metricId, String exchangeId, { DateTime? timeStart, DateTime? timeEnd, String? timeFormat, String? periodId, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v2/metrics/exchange/history';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'metric_id', metricId));
      queryParams.addAll(_queryParams('', 'exchange_id', exchangeId));
    if (timeStart != null) {
      queryParams.addAll(_queryParams('', 'time_start', timeStart));
    }
    if (timeEnd != null) {
      queryParams.addAll(_queryParams('', 'time_end', timeEnd));
    }
    if (timeFormat != null) {
      queryParams.addAll(_queryParams('', 'time_format', timeFormat));
    }
    if (periodId != null) {
      queryParams.addAll(_queryParams('', 'period_id', periodId));
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

  /// Historical metrics for the exchange
  ///
  /// Get exchange metrics history.
  ///
  /// Parameters:
  ///
  /// * [String] metricId (required):
  ///   Metric identifier (e.g., `TVL`, `STABLES_BRIDGED_USD`)
  ///
  /// * [String] exchangeId (required):
  ///   Exchange identifier (e.g., `BINANCE`, `UNISWAP-V3-ETHEREUM`)
  ///
  /// * [DateTime] timeStart:
  ///   Starting time in ISO 8601
  ///
  /// * [DateTime] timeEnd:
  ///   Ending time in ISO 8601
  ///
  /// * [String] timeFormat:
  ///   If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec)
  ///
  /// * [String] periodId:
  ///   Identifier of requested timeseries period (e.g. `1MIN` or `2MTH`), default value is `1MIN`
  ///
  /// * [int] limit:
  ///   Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
  Future<List<Object>?> v2MetricsExchangeHistoryGet(String metricId, String exchangeId, { DateTime? timeStart, DateTime? timeEnd, String? timeFormat, String? periodId, int? limit, }) async {
    final response = await v2MetricsExchangeHistoryGetWithHttpInfo(metricId, exchangeId,  timeStart: timeStart, timeEnd: timeEnd, timeFormat: timeFormat, periodId: periodId, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<Object>') as List)
        .cast<Object>()
        .toList(growable: false);

    }
    return null;
  }

  /// Listing of metrics available for specific exchange
  ///
  /// Get all metrics that are actually available for the specified exchange.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] exchangeId (required):
  ///   Exchange identifier (e.g., BINANCE, UNISWAP-V3-ETHEREUM)
  Future<Response> v2MetricsExchangeListingGetWithHttpInfo(String exchangeId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v2/metrics/exchange/listing';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'exchange_id', exchangeId));

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

  /// Listing of metrics available for specific exchange
  ///
  /// Get all metrics that are actually available for the specified exchange.
  ///
  /// Parameters:
  ///
  /// * [String] exchangeId (required):
  ///   Exchange identifier (e.g., BINANCE, UNISWAP-V3-ETHEREUM)
  Future<List<V1MetricInfo>?> v2MetricsExchangeListingGet(String exchangeId,) async {
    final response = await v2MetricsExchangeListingGetWithHttpInfo(exchangeId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<V1MetricInfo>') as List)
        .cast<V1MetricInfo>()
        .toList(growable: false);

    }
    return null;
  }

  /// Listing of all supported metrics
  ///
  /// Get all metrics available in the system.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> v2MetricsListingGetWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v2/metrics/listing';

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

  /// Listing of all supported metrics
  ///
  /// Get all metrics available in the system.
  Future<List<V1MetricInfo>?> v2MetricsListingGet() async {
    final response = await v2MetricsListingGetWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<V1MetricInfo>') as List)
        .cast<V1MetricInfo>()
        .toList(growable: false);

    }
    return null;
  }
}
