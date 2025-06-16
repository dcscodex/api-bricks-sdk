//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';

import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/api_util.dart';
import 'package:openapi/src/model/v1_general_data.dart';
import 'package:openapi/src/model/v1_listing_item.dart';
import 'package:openapi/src/model/v1_metric.dart';
import 'package:openapi/src/model/v1_metric_data.dart';

class MetricsApi {

  final Dio _dio;

  final Serializers _serializers;

  const MetricsApi(this._dio, this._serializers);

  /// Current metrics for given asset
  /// Get current asset metrics.
  ///
  /// Parameters:
  /// * [metricId] - Metric identifier (from the Metrics -> Listing)
  /// * [assetId] - Asset identifier (from the Metadata -> Assets)
  /// * [assetIdExternal] - Exchange asset identifier
  /// * [exchangeId] - Exchange identifier (from the Metadata -> Exchanges)
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<V1GeneralData>] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<BuiltList<V1GeneralData>>> v1MetricsAssetCurrentGet({ 
    String? metricId,
    String? assetId,
    String? assetIdExternal,
    String? exchangeId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/v1/metrics/asset/current';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'APIKey',
            'keyName': 'Authorization',
            'where': 'header',
          },{
            'type': 'http',
            'scheme': 'bearer',
            'name': 'JWT',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (metricId != null) r'metric_id': encodeQueryParameter(_serializers, metricId, const FullType(String)),
      if (assetId != null) r'asset_id': encodeQueryParameter(_serializers, assetId, const FullType(String)),
      if (assetIdExternal != null) r'asset_id_external': encodeQueryParameter(_serializers, assetIdExternal, const FullType(String)),
      if (exchangeId != null) r'exchange_id': encodeQueryParameter(_serializers, exchangeId, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    BuiltList<V1GeneralData>? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(BuiltList, [FullType(V1GeneralData)]),
      ) as BuiltList<V1GeneralData>;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<BuiltList<V1GeneralData>>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// Historical metrics for asset
  /// Get asset metrics history.
  ///
  /// Parameters:
  /// * [metricId] - Metric identifier (from the Metrics -> Listing)
  /// * [exchangeId] - Exchange identifier (from the Metadata -> Exchanges)
  /// * [assetId] - Asset identifier (from the Metadata -> Assets)
  /// * [assetIdExternal] - Exchange asset identifier
  /// * [timeStart] - Starting time in ISO 8601
  /// * [timeEnd] - Ending time in ISO 8601
  /// * [timeFormat] - If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec)
  /// * [periodId] - Identifier of requested timeseries period (e.g. `5SEC` or `2MTH`), default value is `1SEC`
  /// * [limit] - Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<V1MetricData>] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<BuiltList<V1MetricData>>> v1MetricsAssetHistoryGet({ 
    required String metricId,
    required String exchangeId,
    String? assetId,
    String? assetIdExternal,
    DateTime? timeStart,
    DateTime? timeEnd,
    String? timeFormat,
    String? periodId,
    int? limit = 100,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/v1/metrics/asset/history';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'APIKey',
            'keyName': 'Authorization',
            'where': 'header',
          },{
            'type': 'http',
            'scheme': 'bearer',
            'name': 'JWT',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      r'metric_id': encodeQueryParameter(_serializers, metricId, const FullType(String)),
      if (assetId != null) r'asset_id': encodeQueryParameter(_serializers, assetId, const FullType(String)),
      if (assetIdExternal != null) r'asset_id_external': encodeQueryParameter(_serializers, assetIdExternal, const FullType(String)),
      r'exchange_id': encodeQueryParameter(_serializers, exchangeId, const FullType(String)),
      if (timeStart != null) r'time_start': encodeQueryParameter(_serializers, timeStart, const FullType(DateTime)),
      if (timeEnd != null) r'time_end': encodeQueryParameter(_serializers, timeEnd, const FullType(DateTime)),
      if (timeFormat != null) r'time_format': encodeQueryParameter(_serializers, timeFormat, const FullType(String)),
      if (periodId != null) r'period_id': encodeQueryParameter(_serializers, periodId, const FullType(String)),
      if (limit != null) r'limit': encodeQueryParameter(_serializers, limit, const FullType(int)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    BuiltList<V1MetricData>? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(BuiltList, [FullType(V1MetricData)]),
      ) as BuiltList<V1MetricData>;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<BuiltList<V1MetricData>>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// Listing of all supported metrics for asset
  /// Get data metrics for asset.
  ///
  /// Parameters:
  /// * [metricId] - Metric identifier (from the Metrics -> Listing)
  /// * [exchangeId] - Exchange identifier (from the Metadata -> Exchanges)
  /// * [chainId] - Chain identifier
  /// * [networkId] - Network identifier
  /// * [assetId] - Asset identifier (from the Metadata -> Assets)
  /// * [assetIdExternal] - The asset external identifier
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<V1ListingItem>] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<BuiltList<V1ListingItem>>> v1MetricsAssetListingGet({ 
    String? metricId,
    String? exchangeId,
    String? chainId,
    String? networkId,
    String? assetId,
    String? assetIdExternal,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/v1/metrics/asset/listing';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'APIKey',
            'keyName': 'Authorization',
            'where': 'header',
          },{
            'type': 'http',
            'scheme': 'bearer',
            'name': 'JWT',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (metricId != null) r'metric_id': encodeQueryParameter(_serializers, metricId, const FullType(String)),
      if (exchangeId != null) r'exchange_id': encodeQueryParameter(_serializers, exchangeId, const FullType(String)),
      if (chainId != null) r'chain_id': encodeQueryParameter(_serializers, chainId, const FullType(String)),
      if (networkId != null) r'network_id': encodeQueryParameter(_serializers, networkId, const FullType(String)),
      if (assetId != null) r'asset_id': encodeQueryParameter(_serializers, assetId, const FullType(String)),
      if (assetIdExternal != null) r'asset_id_external': encodeQueryParameter(_serializers, assetIdExternal, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    BuiltList<V1ListingItem>? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(BuiltList, [FullType(V1ListingItem)]),
      ) as BuiltList<V1ListingItem>;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<BuiltList<V1ListingItem>>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// Current metrics for given exchange
  /// Get current exchange metrics values.
  ///
  /// Parameters:
  /// * [exchangeId] - The exchange identifier (from the Metadata -> Exchanges)
  /// * [metricId] - The metric identifier (from the Metrics -> Listing)
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<V1GeneralData>] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<BuiltList<V1GeneralData>>> v1MetricsExchangeCurrentGet({ 
    required String exchangeId,
    String? metricId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/v1/metrics/exchange/current';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'APIKey',
            'keyName': 'Authorization',
            'where': 'header',
          },{
            'type': 'http',
            'scheme': 'bearer',
            'name': 'JWT',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (metricId != null) r'metric_id': encodeQueryParameter(_serializers, metricId, const FullType(String)),
      r'exchange_id': encodeQueryParameter(_serializers, exchangeId, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    BuiltList<V1GeneralData>? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(BuiltList, [FullType(V1GeneralData)]),
      ) as BuiltList<V1GeneralData>;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<BuiltList<V1GeneralData>>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// Historical metrics for the exchange
  /// Get exchange metrics history.
  ///
  /// Parameters:
  /// * [metricId] - Metric identifier (from the Metrics -> Listing)
  /// * [exchangeId] - Exchange identifier (from the Metadata -> Exchanges)
  /// * [timeStart] - Starting time in ISO 8601
  /// * [timeEnd] - Ending time in ISO 8601
  /// * [timeFormat] - If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec)
  /// * [periodId] - Identifier of requested timeseries period (e.g. `5SEC` or `2MTH`), default value is `1SEC`
  /// * [limit] - Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<V1MetricData>] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<BuiltList<V1MetricData>>> v1MetricsExchangeHistoryGet({ 
    required String metricId,
    required String exchangeId,
    DateTime? timeStart,
    DateTime? timeEnd,
    String? timeFormat,
    String? periodId,
    int? limit = 100,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/v1/metrics/exchange/history';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'APIKey',
            'keyName': 'Authorization',
            'where': 'header',
          },{
            'type': 'http',
            'scheme': 'bearer',
            'name': 'JWT',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      r'metric_id': encodeQueryParameter(_serializers, metricId, const FullType(String)),
      r'exchange_id': encodeQueryParameter(_serializers, exchangeId, const FullType(String)),
      if (timeStart != null) r'time_start': encodeQueryParameter(_serializers, timeStart, const FullType(DateTime)),
      if (timeEnd != null) r'time_end': encodeQueryParameter(_serializers, timeEnd, const FullType(DateTime)),
      if (timeFormat != null) r'time_format': encodeQueryParameter(_serializers, timeFormat, const FullType(String)),
      if (periodId != null) r'period_id': encodeQueryParameter(_serializers, periodId, const FullType(String)),
      if (limit != null) r'limit': encodeQueryParameter(_serializers, limit, const FullType(int)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    BuiltList<V1MetricData>? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(BuiltList, [FullType(V1MetricData)]),
      ) as BuiltList<V1MetricData>;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<BuiltList<V1MetricData>>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// Listing of all supported exchange metrics
  /// Get data metrics for exchange.
  ///
  /// Parameters:
  /// * [exchangeId] - The exchange identifier (from the Metadata -> Exchanges)
  /// * [metricId] - The metric identifier (from the Metrics -> Listing)
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<V1ListingItem>] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<BuiltList<V1ListingItem>>> v1MetricsExchangeListingGet({ 
    required String exchangeId,
    String? metricId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/v1/metrics/exchange/listing';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'APIKey',
            'keyName': 'Authorization',
            'where': 'header',
          },{
            'type': 'http',
            'scheme': 'bearer',
            'name': 'JWT',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (metricId != null) r'metric_id': encodeQueryParameter(_serializers, metricId, const FullType(String)),
      r'exchange_id': encodeQueryParameter(_serializers, exchangeId, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    BuiltList<V1ListingItem>? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(BuiltList, [FullType(V1ListingItem)]),
      ) as BuiltList<V1ListingItem>;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<BuiltList<V1ListingItem>>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// Listing of all supported metrics by CoinAPI
  /// Get all data metrics.
  ///
  /// Parameters:
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<V1Metric>] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<BuiltList<V1Metric>>> v1MetricsListingGet({ 
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/v1/metrics/listing';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'APIKey',
            'keyName': 'Authorization',
            'where': 'header',
          },{
            'type': 'http',
            'scheme': 'bearer',
            'name': 'JWT',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    BuiltList<V1Metric>? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(BuiltList, [FullType(V1Metric)]),
      ) as BuiltList<V1Metric>;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<BuiltList<V1Metric>>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// Current metrics for given symbol
  /// Get current symbol metrics.
  ///
  /// Parameters:
  /// * [metricId] - Metric identifier (from the Metrics -> Listing)
  /// * [symbolId] - Symbol identifier (from the Metadata -> Symbols)
  /// * [exchangeId] - Exchange id (from the Metadata -> Exchanges)
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<V1GeneralData>] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<BuiltList<V1GeneralData>>> v1MetricsSymbolCurrentGet({ 
    String? metricId,
    String? symbolId,
    String? exchangeId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/v1/metrics/symbol/current';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'APIKey',
            'keyName': 'Authorization',
            'where': 'header',
          },{
            'type': 'http',
            'scheme': 'bearer',
            'name': 'JWT',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (metricId != null) r'metric_id': encodeQueryParameter(_serializers, metricId, const FullType(String)),
      if (symbolId != null) r'symbol_id': encodeQueryParameter(_serializers, symbolId, const FullType(String)),
      if (exchangeId != null) r'exchange_id': encodeQueryParameter(_serializers, exchangeId, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    BuiltList<V1GeneralData>? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(BuiltList, [FullType(V1GeneralData)]),
      ) as BuiltList<V1GeneralData>;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<BuiltList<V1GeneralData>>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// Historical metrics for symbol
  /// Get symbol metrics history.
  ///
  /// Parameters:
  /// * [metricId] - Metric identifier (from the Metrics -> Listing)
  /// * [symbolId] - Symbol identifier (from the Metadata -> Symbols)
  /// * [timeStart] - Starting time in ISO 8601
  /// * [timeEnd] - Ending time in ISO 8601
  /// * [timeFormat] - If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec)
  /// * [periodId] - Identifier of requested timeseries period (e.g. `5SEC` or `2MTH`), default value is `1SEC`
  /// * [limit] - Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<V1MetricData>] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<BuiltList<V1MetricData>>> v1MetricsSymbolHistoryGet({ 
    required String metricId,
    required String symbolId,
    DateTime? timeStart,
    DateTime? timeEnd,
    String? timeFormat,
    String? periodId,
    int? limit = 100,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/v1/metrics/symbol/history';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'APIKey',
            'keyName': 'Authorization',
            'where': 'header',
          },{
            'type': 'http',
            'scheme': 'bearer',
            'name': 'JWT',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      r'metric_id': encodeQueryParameter(_serializers, metricId, const FullType(String)),
      r'symbol_id': encodeQueryParameter(_serializers, symbolId, const FullType(String)),
      if (timeStart != null) r'time_start': encodeQueryParameter(_serializers, timeStart, const FullType(DateTime)),
      if (timeEnd != null) r'time_end': encodeQueryParameter(_serializers, timeEnd, const FullType(DateTime)),
      if (timeFormat != null) r'time_format': encodeQueryParameter(_serializers, timeFormat, const FullType(String)),
      if (periodId != null) r'period_id': encodeQueryParameter(_serializers, periodId, const FullType(String)),
      if (limit != null) r'limit': encodeQueryParameter(_serializers, limit, const FullType(int)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    BuiltList<V1MetricData>? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(BuiltList, [FullType(V1MetricData)]),
      ) as BuiltList<V1MetricData>;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<BuiltList<V1MetricData>>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// Listing of all supported metrics for symbol
  /// Get data metrics for symbol.
  ///
  /// Parameters:
  /// * [metricId] - Metric identifier (from the Metrics -> Listing)
  /// * [exchangeId] - Exchange identifier (from the Metadata -> Exchanges)
  /// * [symbolId] - Symbol identifier (from the Metadata -> Symbols)
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<V1ListingItem>] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<BuiltList<V1ListingItem>>> v1MetricsSymbolListingGet({ 
    String? metricId,
    String? exchangeId,
    String? symbolId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/v1/metrics/symbol/listing';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'APIKey',
            'keyName': 'Authorization',
            'where': 'header',
          },{
            'type': 'http',
            'scheme': 'bearer',
            'name': 'JWT',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (metricId != null) r'metric_id': encodeQueryParameter(_serializers, metricId, const FullType(String)),
      if (exchangeId != null) r'exchange_id': encodeQueryParameter(_serializers, exchangeId, const FullType(String)),
      if (symbolId != null) r'symbol_id': encodeQueryParameter(_serializers, symbolId, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    BuiltList<V1ListingItem>? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(BuiltList, [FullType(V1ListingItem)]),
      ) as BuiltList<V1ListingItem>;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<BuiltList<V1ListingItem>>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

}
