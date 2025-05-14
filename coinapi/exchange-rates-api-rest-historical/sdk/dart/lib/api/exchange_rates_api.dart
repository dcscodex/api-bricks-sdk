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
  /// Retrieves the exchange rate for a specific base and quote asset at a given time or the current rate.                :::info  If you are using an exchange rate for mission-critical operations, then for best reliability, you should measure the difference between current time and the time returned from the response to ensure that value of the difference between those meets your internal requirements.  :::
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
  ///
  /// * [String] time:
  ///   Time at which exchange rate is calculated (optional, if not supplied then current rate is returned)
  Future<Response> getSpecificRateWithHttpInfo(String assetIdBase, String assetIdQuote, { String? time, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/exchangerate/{asset_id_base}/{asset_id_quote}'
      .replaceAll('{asset_id_base}', assetIdBase)
      .replaceAll('{asset_id_quote}', assetIdQuote);

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

  /// Get specific rate
  ///
  /// Retrieves the exchange rate for a specific base and quote asset at a given time or the current rate.                :::info  If you are using an exchange rate for mission-critical operations, then for best reliability, you should measure the difference between current time and the time returned from the response to ensure that value of the difference between those meets your internal requirements.  :::
  ///
  /// Parameters:
  ///
  /// * [String] assetIdBase (required):
  ///   Requested exchange rate base asset identifier (from the Metadata -> Assets)
  ///
  /// * [String] assetIdQuote (required):
  ///   Requested exchange rate quote asset identifier (from the Metadata -> Assets)
  ///
  /// * [String] time:
  ///   Time at which exchange rate is calculated (optional, if not supplied then current rate is returned)
  Future<V1ExchangeRate?> getSpecificRate(String assetIdBase, String assetIdQuote, { String? time, }) async {
    final response = await getSpecificRateWithHttpInfo(assetIdBase, assetIdQuote,  time: time, );
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

  /// Timeseries data
  ///
  /// Get the historical exchange rates between two assets in the form of the timeseries.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] assetIdBase (required):
  ///   Requested exchange rates base asset identifier (from the Metadata -> Assets)
  ///
  /// * [String] assetIdQuote (required):
  ///   Requested exchange rates base asset identifier (from the Metadata -> Assets)
  ///
  /// * [String] periodId:
  ///   Identifier of requested timeseries period (required, e.g. `5SEC` or `1HRS`)
  ///
  /// * [String] timeStart:
  ///   Timeseries starting time in ISO 8601 (required)
  ///
  /// * [String] timeEnd:
  ///   Timeseries ending time in ISO 8601 (required)
  ///
  /// * [int] limit:
  ///   Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
  Future<Response> v1ExchangerateAssetIdBaseAssetIdQuoteHistoryGetWithHttpInfo(String assetIdBase, String assetIdQuote, { String? periodId, String? timeStart, String? timeEnd, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/exchangerate/{asset_id_base}/{asset_id_quote}/history'
      .replaceAll('{asset_id_base}', assetIdBase)
      .replaceAll('{asset_id_quote}', assetIdQuote);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (periodId != null) {
      queryParams.addAll(_queryParams('', 'period_id', periodId));
    }
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

  /// Timeseries data
  ///
  /// Get the historical exchange rates between two assets in the form of the timeseries.
  ///
  /// Parameters:
  ///
  /// * [String] assetIdBase (required):
  ///   Requested exchange rates base asset identifier (from the Metadata -> Assets)
  ///
  /// * [String] assetIdQuote (required):
  ///   Requested exchange rates base asset identifier (from the Metadata -> Assets)
  ///
  /// * [String] periodId:
  ///   Identifier of requested timeseries period (required, e.g. `5SEC` or `1HRS`)
  ///
  /// * [String] timeStart:
  ///   Timeseries starting time in ISO 8601 (required)
  ///
  /// * [String] timeEnd:
  ///   Timeseries ending time in ISO 8601 (required)
  ///
  /// * [int] limit:
  ///   Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
  Future<List<V1ExchangeRatesTimeseriesItem>?> v1ExchangerateAssetIdBaseAssetIdQuoteHistoryGet(String assetIdBase, String assetIdQuote, { String? periodId, String? timeStart, String? timeEnd, int? limit, }) async {
    final response = await v1ExchangerateAssetIdBaseAssetIdQuoteHistoryGetWithHttpInfo(assetIdBase, assetIdQuote,  periodId: periodId, timeStart: timeStart, timeEnd: timeEnd, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<V1ExchangeRatesTimeseriesItem>') as List)
        .cast<V1ExchangeRatesTimeseriesItem>()
        .toList(growable: false);

    }
    return null;
  }

  /// Get all current rates
  ///
  /// Get the current exchange rate between requested asset and all other assets.                :::info  If you are using an exchange rate for mission-critical operations, then for best reliability, you should measure the difference between current time and the time returned from the response to ensure that value of the difference between those meets your internal requirements.  :::                :::info  You can invert the rates by using Y = 1 / X equation, for example BTC/USD = 1 / (USD/BTC);  :::
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
  ///
  /// * [String] time:
  ///   Time for historical rates (optional)
  Future<Response> v1ExchangerateAssetIdBaseGetWithHttpInfo(String assetIdBase, { String? filterAssetId, bool? invert, String? time, }) async {
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

  /// Get all current rates
  ///
  /// Get the current exchange rate between requested asset and all other assets.                :::info  If you are using an exchange rate for mission-critical operations, then for best reliability, you should measure the difference between current time and the time returned from the response to ensure that value of the difference between those meets your internal requirements.  :::                :::info  You can invert the rates by using Y = 1 / X equation, for example BTC/USD = 1 / (USD/BTC);  :::
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
  ///
  /// * [String] time:
  ///   Time for historical rates (optional)
  Future<V1ExchangeRates?> v1ExchangerateAssetIdBaseGet(String assetIdBase, { String? filterAssetId, bool? invert, String? time, }) async {
    final response = await v1ExchangerateAssetIdBaseGetWithHttpInfo(assetIdBase,  filterAssetId: filterAssetId, invert: invert, time: time, );
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

  /// Timeseries periods
  ///
  /// You can also obtain historical exchange rates of any asset pair, grouped into time periods.  Get full list of supported time periods available for requesting exchange rates historical timeseries data.                ## Timeseries periods  Time unit | Period identifiers  --- | ---  Second | 1SEC, 2SEC, 3SEC, 4SEC, 5SEC, 6SEC, 10SEC, 15SEC, 20SEC, 30SEC  Minute | 1MIN, 2MIN, 3MIN, 4MIN, 5MIN, 6MIN, 10MIN, 15MIN, 20MIN, 30MIN  Hour | 1HRS, 2HRS, 3HRS, 4HRS, 6HRS, 8HRS, 12HRS  Day | 1DAY, 2DAY, 3DAY, 5DAY, 7DAY, 10DAY
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> v1ExchangerateHistoryPeriodsGetWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/exchangerate/history/periods';

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

  /// Timeseries periods
  ///
  /// You can also obtain historical exchange rates of any asset pair, grouped into time periods.  Get full list of supported time periods available for requesting exchange rates historical timeseries data.                ## Timeseries periods  Time unit | Period identifiers  --- | ---  Second | 1SEC, 2SEC, 3SEC, 4SEC, 5SEC, 6SEC, 10SEC, 15SEC, 20SEC, 30SEC  Minute | 1MIN, 2MIN, 3MIN, 4MIN, 5MIN, 6MIN, 10MIN, 15MIN, 20MIN, 30MIN  Hour | 1HRS, 2HRS, 3HRS, 4HRS, 6HRS, 8HRS, 12HRS  Day | 1DAY, 2DAY, 3DAY, 5DAY, 7DAY, 10DAY
  Future<List<V1TimeseriesPeriod>?> v1ExchangerateHistoryPeriodsGet() async {
    final response = await v1ExchangerateHistoryPeriodsGetWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<V1TimeseriesPeriod>') as List)
        .cast<V1TimeseriesPeriod>()
        .toList(growable: false);

    }
    return null;
  }
}
