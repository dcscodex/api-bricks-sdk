//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class ExternalMetricsApi {
  ExternalMetricsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Historical metrics for the asset from external sources
  ///
  /// Get asset metrics history from external data providers. Data is typically aggregated daily.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] metricId (required):
  ///   Metric identifier (e.g., `TVL`, `STABLES_BRIDGED_USD` - internal metric key)
  ///
  /// * [String] assetId (required):
  ///   Asset identifier (e.g., `USDC`, `USDT` - from supported assets list)
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
  Future<Response> v1ExternalmetricsAssetHistoryGetWithHttpInfo(String metricId, String assetId, { DateTime? timeStart, DateTime? timeEnd, String? timeFormat, String? periodId, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/externalmetrics/asset/history';

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

  /// Historical metrics for the asset from external sources
  ///
  /// Get asset metrics history from external data providers. Data is typically aggregated daily.
  ///
  /// Parameters:
  ///
  /// * [String] metricId (required):
  ///   Metric identifier (e.g., `TVL`, `STABLES_BRIDGED_USD` - internal metric key)
  ///
  /// * [String] assetId (required):
  ///   Asset identifier (e.g., `USDC`, `USDT` - from supported assets list)
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
  Future<List<Object>?> v1ExternalmetricsAssetHistoryGet(String metricId, String assetId, { DateTime? timeStart, DateTime? timeEnd, String? timeFormat, String? periodId, int? limit, }) async {
    final response = await v1ExternalmetricsAssetHistoryGetWithHttpInfo(metricId, assetId,  timeStart: timeStart, timeEnd: timeEnd, timeFormat: timeFormat, periodId: periodId, limit: limit, );
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
  /// Get all metrics that are actually available for the specified asset from external providers.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] assetId (required):
  ///   Asset identifier (e.g., USDC, USDT)
  Future<Response> v1ExternalmetricsAssetListingGetWithHttpInfo(String assetId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/externalmetrics/asset/listing';

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
  /// Get all metrics that are actually available for the specified asset from external providers.
  ///
  /// Parameters:
  ///
  /// * [String] assetId (required):
  ///   Asset identifier (e.g., USDC, USDT)
  Future<List<V1MetricInfo>?> v1ExternalmetricsAssetListingGet(String assetId,) async {
    final response = await v1ExternalmetricsAssetListingGetWithHttpInfo(assetId,);
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

  /// Listing of all supported external assets
  ///
  /// Get all assets (primarily stablecoins) supported by external data providers.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> v1ExternalmetricsAssetsGetWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/externalmetrics/assets';

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

  /// Listing of all supported external assets
  ///
  /// Get all assets (primarily stablecoins) supported by external data providers.
  Future<List<V1ExternalAsset>?> v1ExternalmetricsAssetsGet() async {
    final response = await v1ExternalmetricsAssetsGetWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<V1ExternalAsset>') as List)
        .cast<V1ExternalAsset>()
        .toList(growable: false);

    }
    return null;
  }

  /// Historical metrics for the chain from external sources
  ///
  /// Get chain metrics history from external data providers. Data is typically aggregated daily.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] metricId (required):
  ///   Metric identifier (e.g., `TVL`, `STABLES_BRIDGED_USD` - internal metric key)
  ///
  /// * [String] chainId (required):
  ///   Chain identifier (e.g., `Ethereum`, `Arbitrum` - from supported chains list)
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
  Future<Response> v1ExternalmetricsChainHistoryGetWithHttpInfo(String metricId, String chainId, { DateTime? timeStart, DateTime? timeEnd, String? timeFormat, String? periodId, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/externalmetrics/chain/history';

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

  /// Historical metrics for the chain from external sources
  ///
  /// Get chain metrics history from external data providers. Data is typically aggregated daily.
  ///
  /// Parameters:
  ///
  /// * [String] metricId (required):
  ///   Metric identifier (e.g., `TVL`, `STABLES_BRIDGED_USD` - internal metric key)
  ///
  /// * [String] chainId (required):
  ///   Chain identifier (e.g., `Ethereum`, `Arbitrum` - from supported chains list)
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
  Future<List<Object>?> v1ExternalmetricsChainHistoryGet(String metricId, String chainId, { DateTime? timeStart, DateTime? timeEnd, String? timeFormat, String? periodId, int? limit, }) async {
    final response = await v1ExternalmetricsChainHistoryGetWithHttpInfo(metricId, chainId,  timeStart: timeStart, timeEnd: timeEnd, timeFormat: timeFormat, periodId: periodId, limit: limit, );
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
  /// Get all metrics that are actually available for the specified blockchain chain from external providers.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] chainId (required):
  ///   Chain identifier (e.g., ETHEREUM, ARBITRUM)
  Future<Response> v1ExternalmetricsChainListingGetWithHttpInfo(String chainId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/externalmetrics/chain/listing';

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
  /// Get all metrics that are actually available for the specified blockchain chain from external providers.
  ///
  /// Parameters:
  ///
  /// * [String] chainId (required):
  ///   Chain identifier (e.g., ETHEREUM, ARBITRUM)
  Future<List<V1MetricInfo>?> v1ExternalmetricsChainListingGet(String chainId,) async {
    final response = await v1ExternalmetricsChainListingGetWithHttpInfo(chainId,);
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

  /// Listing of all supported external chains
  ///
  /// Get all blockchain chains supported by external data providers.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> v1ExternalmetricsChainsGetWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/externalmetrics/chains';

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

  /// Listing of all supported external chains
  ///
  /// Get all blockchain chains supported by external data providers.
  Future<List<V1Chain>?> v1ExternalmetricsChainsGet() async {
    final response = await v1ExternalmetricsChainsGetWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<V1Chain>') as List)
        .cast<V1Chain>()
        .toList(growable: false);

    }
    return null;
  }

  /// Historical metrics for the exchange from both external and internal sources
  ///
  /// Get exchange metrics history from external data providers or internal sources based on metric type.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] metricId (required):
  ///   Metric identifier (e.g., `TVL`, `STABLES_BRIDGED_USD` for external, or generic metric IDs)
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
  Future<Response> v1ExternalmetricsExchangeHistoryGetWithHttpInfo(String metricId, String exchangeId, { DateTime? timeStart, DateTime? timeEnd, String? timeFormat, String? periodId, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/externalmetrics/exchange/history';

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

  /// Historical metrics for the exchange from both external and internal sources
  ///
  /// Get exchange metrics history from external data providers or internal sources based on metric type.
  ///
  /// Parameters:
  ///
  /// * [String] metricId (required):
  ///   Metric identifier (e.g., `TVL`, `STABLES_BRIDGED_USD` for external, or generic metric IDs)
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
  Future<List<Object>?> v1ExternalmetricsExchangeHistoryGet(String metricId, String exchangeId, { DateTime? timeStart, DateTime? timeEnd, String? timeFormat, String? periodId, int? limit, }) async {
    final response = await v1ExternalmetricsExchangeHistoryGetWithHttpInfo(metricId, exchangeId,  timeStart: timeStart, timeEnd: timeEnd, timeFormat: timeFormat, periodId: periodId, limit: limit, );
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

  /// Listing of metrics available for specific exchange (both external and generic)
  ///
  /// Get all metrics that are actually available for the specified exchange from both external providers and internal sources.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] exchangeId (required):
  ///   Exchange identifier (e.g., BINANCE, UNISWAP-V3-ETHEREUM)
  Future<Response> v1ExternalmetricsExchangeListingGetWithHttpInfo(String exchangeId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/externalmetrics/exchange/listing';

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

  /// Listing of metrics available for specific exchange (both external and generic)
  ///
  /// Get all metrics that are actually available for the specified exchange from both external providers and internal sources.
  ///
  /// Parameters:
  ///
  /// * [String] exchangeId (required):
  ///   Exchange identifier (e.g., BINANCE, UNISWAP-V3-ETHEREUM)
  Future<List<V1MetricInfo>?> v1ExternalmetricsExchangeListingGet(String exchangeId,) async {
    final response = await v1ExternalmetricsExchangeListingGetWithHttpInfo(exchangeId,);
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

  /// Listing of all supported external exchanges
  ///
  /// Get all exchanges that have mapping to external data providers for metrics that actually have sources.  Only returns exchanges that are properly mapped to external protocols for metrics with defined sources.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> v1ExternalmetricsExchangesGetWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/externalmetrics/exchanges';

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

  /// Listing of all supported external exchanges
  ///
  /// Get all exchanges that have mapping to external data providers for metrics that actually have sources.  Only returns exchanges that are properly mapped to external protocols for metrics with defined sources.
  Future<List<V1ExternalExchange>?> v1ExternalmetricsExchangesGet() async {
    final response = await v1ExternalmetricsExchangesGetWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<V1ExternalExchange>') as List)
        .cast<V1ExternalExchange>()
        .toList(growable: false);

    }
    return null;
  }

  /// Listing of all supported metrics (both external and generic)
  ///
  /// Get all metrics available from external data providers and internal generic metrics.  External metrics have detailed descriptions, while generic metrics are marked as such.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> v1ExternalmetricsListingGetWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/externalmetrics/listing';

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

  /// Listing of all supported metrics (both external and generic)
  ///
  /// Get all metrics available from external data providers and internal generic metrics.  External metrics have detailed descriptions, while generic metrics are marked as such.
  Future<List<V1MetricInfo>?> v1ExternalmetricsListingGet() async {
    final response = await v1ExternalmetricsListingGetWithHttpInfo();
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
