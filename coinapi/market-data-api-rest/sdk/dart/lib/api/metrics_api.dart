//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class MetricsApi {
  MetricsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Current metrics for given asset
  ///
  /// Get current asset metrics.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] metricId:
  ///   Metric identifier (from the Metrics -> Listing)
  ///
  /// * [String] assetId:
  ///   Asset identifier (from the Metadata -> Assets)
  ///
  /// * [String] assetIdExternal:
  ///   Exchange asset identifier
  ///
  /// * [String] exchangeId:
  ///   Exchange identifier (from the Metadata -> Exchanges)
  Future<Response> v1MetricsAssetCurrentGetWithHttpInfo({ String? metricId, String? assetId, String? assetIdExternal, String? exchangeId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/metrics/asset/current';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (metricId != null) {
      queryParams.addAll(_queryParams('', 'metric_id', metricId));
    }
    if (assetId != null) {
      queryParams.addAll(_queryParams('', 'asset_id', assetId));
    }
    if (assetIdExternal != null) {
      queryParams.addAll(_queryParams('', 'asset_id_external', assetIdExternal));
    }
    if (exchangeId != null) {
      queryParams.addAll(_queryParams('', 'exchange_id', exchangeId));
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

  /// Current metrics for given asset
  ///
  /// Get current asset metrics.
  ///
  /// Parameters:
  ///
  /// * [String] metricId:
  ///   Metric identifier (from the Metrics -> Listing)
  ///
  /// * [String] assetId:
  ///   Asset identifier (from the Metadata -> Assets)
  ///
  /// * [String] assetIdExternal:
  ///   Exchange asset identifier
  ///
  /// * [String] exchangeId:
  ///   Exchange identifier (from the Metadata -> Exchanges)
  Future<List<V1GeneralData>?> v1MetricsAssetCurrentGet({ String? metricId, String? assetId, String? assetIdExternal, String? exchangeId, }) async {
    final response = await v1MetricsAssetCurrentGetWithHttpInfo( metricId: metricId, assetId: assetId, assetIdExternal: assetIdExternal, exchangeId: exchangeId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<V1GeneralData>') as List)
        .cast<V1GeneralData>()
        .toList(growable: false);

    }
    return null;
  }

  /// Historical metrics for asset
  ///
  /// Get asset metrics history.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] metricId (required):
  ///   Metric identifier (from the Metrics -> Listing)
  ///
  /// * [String] exchangeId (required):
  ///   Exchange identifier (from the Metadata -> Exchanges)
  ///
  /// * [String] assetId:
  ///   Asset identifier (from the Metadata -> Assets)
  ///
  /// * [String] assetIdExternal:
  ///   Exchange asset identifier
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
  ///   Identifier of requested timeseries period (e.g. `5SEC` or `2MTH`), default value is `1SEC`
  ///
  /// * [int] limit:
  ///   Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
  Future<Response> v1MetricsAssetHistoryGetWithHttpInfo(String metricId, String exchangeId, { String? assetId, String? assetIdExternal, DateTime? timeStart, DateTime? timeEnd, String? timeFormat, String? periodId, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/metrics/asset/history';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'metric_id', metricId));
    if (assetId != null) {
      queryParams.addAll(_queryParams('', 'asset_id', assetId));
    }
    if (assetIdExternal != null) {
      queryParams.addAll(_queryParams('', 'asset_id_external', assetIdExternal));
    }
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

  /// Historical metrics for asset
  ///
  /// Get asset metrics history.
  ///
  /// Parameters:
  ///
  /// * [String] metricId (required):
  ///   Metric identifier (from the Metrics -> Listing)
  ///
  /// * [String] exchangeId (required):
  ///   Exchange identifier (from the Metadata -> Exchanges)
  ///
  /// * [String] assetId:
  ///   Asset identifier (from the Metadata -> Assets)
  ///
  /// * [String] assetIdExternal:
  ///   Exchange asset identifier
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
  ///   Identifier of requested timeseries period (e.g. `5SEC` or `2MTH`), default value is `1SEC`
  ///
  /// * [int] limit:
  ///   Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
  Future<List<V1MetricData>?> v1MetricsAssetHistoryGet(String metricId, String exchangeId, { String? assetId, String? assetIdExternal, DateTime? timeStart, DateTime? timeEnd, String? timeFormat, String? periodId, int? limit, }) async {
    final response = await v1MetricsAssetHistoryGetWithHttpInfo(metricId, exchangeId,  assetId: assetId, assetIdExternal: assetIdExternal, timeStart: timeStart, timeEnd: timeEnd, timeFormat: timeFormat, periodId: periodId, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<V1MetricData>') as List)
        .cast<V1MetricData>()
        .toList(growable: false);

    }
    return null;
  }

  /// Listing of all supported metrics for asset
  ///
  /// Get data metrics for asset.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] metricId:
  ///   Metric identifier (from the Metrics -> Listing)
  ///
  /// * [String] exchangeId:
  ///   Exchange identifier (from the Metadata -> Exchanges)
  ///
  /// * [String] chainId:
  ///   Chain identifier
  ///
  /// * [String] networkId:
  ///   Network identifier
  ///
  /// * [String] assetId:
  ///   Asset identifier (from the Metadata -> Assets)
  ///
  /// * [String] assetIdExternal:
  ///   The asset external identifier
  Future<Response> v1MetricsAssetListingGetWithHttpInfo({ String? metricId, String? exchangeId, String? chainId, String? networkId, String? assetId, String? assetIdExternal, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/metrics/asset/listing';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (metricId != null) {
      queryParams.addAll(_queryParams('', 'metric_id', metricId));
    }
    if (exchangeId != null) {
      queryParams.addAll(_queryParams('', 'exchange_id', exchangeId));
    }
    if (chainId != null) {
      queryParams.addAll(_queryParams('', 'chain_id', chainId));
    }
    if (networkId != null) {
      queryParams.addAll(_queryParams('', 'network_id', networkId));
    }
    if (assetId != null) {
      queryParams.addAll(_queryParams('', 'asset_id', assetId));
    }
    if (assetIdExternal != null) {
      queryParams.addAll(_queryParams('', 'asset_id_external', assetIdExternal));
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

  /// Listing of all supported metrics for asset
  ///
  /// Get data metrics for asset.
  ///
  /// Parameters:
  ///
  /// * [String] metricId:
  ///   Metric identifier (from the Metrics -> Listing)
  ///
  /// * [String] exchangeId:
  ///   Exchange identifier (from the Metadata -> Exchanges)
  ///
  /// * [String] chainId:
  ///   Chain identifier
  ///
  /// * [String] networkId:
  ///   Network identifier
  ///
  /// * [String] assetId:
  ///   Asset identifier (from the Metadata -> Assets)
  ///
  /// * [String] assetIdExternal:
  ///   The asset external identifier
  Future<List<V1ListingItem>?> v1MetricsAssetListingGet({ String? metricId, String? exchangeId, String? chainId, String? networkId, String? assetId, String? assetIdExternal, }) async {
    final response = await v1MetricsAssetListingGetWithHttpInfo( metricId: metricId, exchangeId: exchangeId, chainId: chainId, networkId: networkId, assetId: assetId, assetIdExternal: assetIdExternal, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<V1ListingItem>') as List)
        .cast<V1ListingItem>()
        .toList(growable: false);

    }
    return null;
  }

  /// Current metrics for given exchange
  ///
  /// Get current exchange metrics values.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] exchangeId (required):
  ///   The exchange identifier (from the Metadata -> Exchanges)
  ///
  /// * [String] metricId:
  ///   The metric identifier (from the Metrics -> Listing)
  Future<Response> v1MetricsExchangeCurrentGetWithHttpInfo(String exchangeId, { String? metricId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/metrics/exchange/current';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (metricId != null) {
      queryParams.addAll(_queryParams('', 'metric_id', metricId));
    }
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

  /// Current metrics for given exchange
  ///
  /// Get current exchange metrics values.
  ///
  /// Parameters:
  ///
  /// * [String] exchangeId (required):
  ///   The exchange identifier (from the Metadata -> Exchanges)
  ///
  /// * [String] metricId:
  ///   The metric identifier (from the Metrics -> Listing)
  Future<List<V1GeneralData>?> v1MetricsExchangeCurrentGet(String exchangeId, { String? metricId, }) async {
    final response = await v1MetricsExchangeCurrentGetWithHttpInfo(exchangeId,  metricId: metricId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<V1GeneralData>') as List)
        .cast<V1GeneralData>()
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
  ///   Metric identifier (from the Metrics -> Listing)
  ///
  /// * [String] exchangeId (required):
  ///   Exchange identifier (from the Metadata -> Exchanges)
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
  ///   Identifier of requested timeseries period (e.g. `5SEC` or `2MTH`), default value is `1SEC`
  ///
  /// * [int] limit:
  ///   Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
  Future<Response> v1MetricsExchangeHistoryGetWithHttpInfo(String metricId, String exchangeId, { DateTime? timeStart, DateTime? timeEnd, String? timeFormat, String? periodId, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/metrics/exchange/history';

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
  ///   Metric identifier (from the Metrics -> Listing)
  ///
  /// * [String] exchangeId (required):
  ///   Exchange identifier (from the Metadata -> Exchanges)
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
  ///   Identifier of requested timeseries period (e.g. `5SEC` or `2MTH`), default value is `1SEC`
  ///
  /// * [int] limit:
  ///   Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
  Future<List<V1MetricData>?> v1MetricsExchangeHistoryGet(String metricId, String exchangeId, { DateTime? timeStart, DateTime? timeEnd, String? timeFormat, String? periodId, int? limit, }) async {
    final response = await v1MetricsExchangeHistoryGetWithHttpInfo(metricId, exchangeId,  timeStart: timeStart, timeEnd: timeEnd, timeFormat: timeFormat, periodId: periodId, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<V1MetricData>') as List)
        .cast<V1MetricData>()
        .toList(growable: false);

    }
    return null;
  }

  /// Listing of all supported exchange metrics
  ///
  /// Get data metrics for exchange.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] exchangeId (required):
  ///   The exchange identifier (from the Metadata -> Exchanges)
  ///
  /// * [String] metricId:
  ///   The metric identifier (from the Metrics -> Listing)
  Future<Response> v1MetricsExchangeListingGetWithHttpInfo(String exchangeId, { String? metricId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/metrics/exchange/listing';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (metricId != null) {
      queryParams.addAll(_queryParams('', 'metric_id', metricId));
    }
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

  /// Listing of all supported exchange metrics
  ///
  /// Get data metrics for exchange.
  ///
  /// Parameters:
  ///
  /// * [String] exchangeId (required):
  ///   The exchange identifier (from the Metadata -> Exchanges)
  ///
  /// * [String] metricId:
  ///   The metric identifier (from the Metrics -> Listing)
  Future<List<V1ListingItem>?> v1MetricsExchangeListingGet(String exchangeId, { String? metricId, }) async {
    final response = await v1MetricsExchangeListingGetWithHttpInfo(exchangeId,  metricId: metricId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<V1ListingItem>') as List)
        .cast<V1ListingItem>()
        .toList(growable: false);

    }
    return null;
  }

  /// Listing of all supported metrics by CoinAPI
  ///
  /// Get all data metrics.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> v1MetricsListingGetWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/metrics/listing';

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

  /// Listing of all supported metrics by CoinAPI
  ///
  /// Get all data metrics.
  Future<List<V1Metric>?> v1MetricsListingGet() async {
    final response = await v1MetricsListingGetWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<V1Metric>') as List)
        .cast<V1Metric>()
        .toList(growable: false);

    }
    return null;
  }

  /// Current metrics for given symbol
  ///
  /// Get current symbol metrics.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] metricId:
  ///   Metric identifier (from the Metrics -> Listing)
  ///
  /// * [String] symbolId:
  ///   Symbol identifier (from the Metadata -> Symbols)
  ///
  /// * [String] exchangeId:
  ///   Exchange id (from the Metadata -> Exchanges)
  Future<Response> v1MetricsSymbolCurrentGetWithHttpInfo({ String? metricId, String? symbolId, String? exchangeId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/metrics/symbol/current';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (metricId != null) {
      queryParams.addAll(_queryParams('', 'metric_id', metricId));
    }
    if (symbolId != null) {
      queryParams.addAll(_queryParams('', 'symbol_id', symbolId));
    }
    if (exchangeId != null) {
      queryParams.addAll(_queryParams('', 'exchange_id', exchangeId));
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

  /// Current metrics for given symbol
  ///
  /// Get current symbol metrics.
  ///
  /// Parameters:
  ///
  /// * [String] metricId:
  ///   Metric identifier (from the Metrics -> Listing)
  ///
  /// * [String] symbolId:
  ///   Symbol identifier (from the Metadata -> Symbols)
  ///
  /// * [String] exchangeId:
  ///   Exchange id (from the Metadata -> Exchanges)
  Future<List<V1GeneralData>?> v1MetricsSymbolCurrentGet({ String? metricId, String? symbolId, String? exchangeId, }) async {
    final response = await v1MetricsSymbolCurrentGetWithHttpInfo( metricId: metricId, symbolId: symbolId, exchangeId: exchangeId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<V1GeneralData>') as List)
        .cast<V1GeneralData>()
        .toList(growable: false);

    }
    return null;
  }

  /// Historical metrics for symbol
  ///
  /// Get symbol metrics history.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] metricId (required):
  ///   Metric identifier (from the Metrics -> Listing)
  ///
  /// * [String] symbolId (required):
  ///   Symbol identifier (from the Metadata -> Symbols)
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
  ///   Identifier of requested timeseries period (e.g. `5SEC` or `2MTH`), default value is `1SEC`
  ///
  /// * [int] limit:
  ///   Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
  Future<Response> v1MetricsSymbolHistoryGetWithHttpInfo(String metricId, String symbolId, { DateTime? timeStart, DateTime? timeEnd, String? timeFormat, String? periodId, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/metrics/symbol/history';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'metric_id', metricId));
      queryParams.addAll(_queryParams('', 'symbol_id', symbolId));
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

  /// Historical metrics for symbol
  ///
  /// Get symbol metrics history.
  ///
  /// Parameters:
  ///
  /// * [String] metricId (required):
  ///   Metric identifier (from the Metrics -> Listing)
  ///
  /// * [String] symbolId (required):
  ///   Symbol identifier (from the Metadata -> Symbols)
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
  ///   Identifier of requested timeseries period (e.g. `5SEC` or `2MTH`), default value is `1SEC`
  ///
  /// * [int] limit:
  ///   Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
  Future<List<V1MetricData>?> v1MetricsSymbolHistoryGet(String metricId, String symbolId, { DateTime? timeStart, DateTime? timeEnd, String? timeFormat, String? periodId, int? limit, }) async {
    final response = await v1MetricsSymbolHistoryGetWithHttpInfo(metricId, symbolId,  timeStart: timeStart, timeEnd: timeEnd, timeFormat: timeFormat, periodId: periodId, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<V1MetricData>') as List)
        .cast<V1MetricData>()
        .toList(growable: false);

    }
    return null;
  }

  /// Listing of all supported metrics for symbol
  ///
  /// Get data metrics for symbol.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] metricId:
  ///   Metric identifier (from the Metrics -> Listing)
  ///
  /// * [String] exchangeId:
  ///   Exchange identifier (from the Metadata -> Exchanges)
  ///
  /// * [String] symbolId:
  ///   Symbol identifier (from the Metadata -> Symbols)
  Future<Response> v1MetricsSymbolListingGetWithHttpInfo({ String? metricId, String? exchangeId, String? symbolId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/metrics/symbol/listing';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (metricId != null) {
      queryParams.addAll(_queryParams('', 'metric_id', metricId));
    }
    if (exchangeId != null) {
      queryParams.addAll(_queryParams('', 'exchange_id', exchangeId));
    }
    if (symbolId != null) {
      queryParams.addAll(_queryParams('', 'symbol_id', symbolId));
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

  /// Listing of all supported metrics for symbol
  ///
  /// Get data metrics for symbol.
  ///
  /// Parameters:
  ///
  /// * [String] metricId:
  ///   Metric identifier (from the Metrics -> Listing)
  ///
  /// * [String] exchangeId:
  ///   Exchange identifier (from the Metadata -> Exchanges)
  ///
  /// * [String] symbolId:
  ///   Symbol identifier (from the Metadata -> Symbols)
  Future<List<V1ListingItem>?> v1MetricsSymbolListingGet({ String? metricId, String? exchangeId, String? symbolId, }) async {
    final response = await v1MetricsSymbolListingGetWithHttpInfo( metricId: metricId, exchangeId: exchangeId, symbolId: symbolId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<V1ListingItem>') as List)
        .cast<V1ListingItem>()
        .toList(growable: false);

    }
    return null;
  }
}
