//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:openapi/src/api_util.dart';
import 'package:openapi/src/model/v1_metric_info.dart';

class ExternalMetricsApi {

  final Dio _dio;

  final Serializers _serializers;

  const ExternalMetricsApi(this._dio, this._serializers);

  /// Historical metrics for the asset
  /// Get asset metrics history.
  ///
  /// Parameters:
  /// * [metricId] - Metric identifier (e.g., `TVL`, `STABLES_BRIDGED_USD`)
  /// * [assetId] - Asset identifier (e.g., `USDC`, `USDT`)
  /// * [timeStart] - Starting time in ISO 8601
  /// * [timeEnd] - Ending time in ISO 8601
  /// * [timeFormat] - If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec)
  /// * [periodId] - Identifier of requested timeseries period (e.g. `1MIN` or `2MTH`), default value is `1MIN`
  /// * [limit] - Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<JsonObject>] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<BuiltList<JsonObject>>> v1ExternalmetricsAssetHistoryGet({ 
    required String metricId,
    required String assetId,
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
    final _path = r'/v1/externalmetrics/asset/history';
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
      r'asset_id': encodeQueryParameter(_serializers, assetId, const FullType(String)),
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

    BuiltList<JsonObject>? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(BuiltList, [FullType(JsonObject)]),
      ) as BuiltList<JsonObject>;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<BuiltList<JsonObject>>(
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

  /// Listing of metrics available for specific asset
  /// Get all metrics that are actually available for the specified asset.
  ///
  /// Parameters:
  /// * [assetId] - Asset identifier (e.g., USDC, USDT)
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<V1MetricInfo>] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<BuiltList<V1MetricInfo>>> v1ExternalmetricsAssetListingGet({ 
    required String assetId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/v1/externalmetrics/asset/listing';
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
      r'asset_id': encodeQueryParameter(_serializers, assetId, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    BuiltList<V1MetricInfo>? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(BuiltList, [FullType(V1MetricInfo)]),
      ) as BuiltList<V1MetricInfo>;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<BuiltList<V1MetricInfo>>(
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

  /// Historical metrics for the chain
  /// Get chain metrics history.
  ///
  /// Parameters:
  /// * [metricId] - Metric identifier (e.g., `TVL`, `STABLES_BRIDGED_USD`)
  /// * [chainId] - Chain identifier (e.g., `Ethereum`, `Arbitrum`)
  /// * [timeStart] - Starting time in ISO 8601
  /// * [timeEnd] - Ending time in ISO 8601
  /// * [timeFormat] - If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec)
  /// * [periodId] - Identifier of requested timeseries period (e.g. `1MIN` or `2MTH`), default value is `1MIN`
  /// * [limit] - Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<JsonObject>] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<BuiltList<JsonObject>>> v1ExternalmetricsChainHistoryGet({ 
    required String metricId,
    required String chainId,
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
    final _path = r'/v1/externalmetrics/chain/history';
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
      r'chain_id': encodeQueryParameter(_serializers, chainId, const FullType(String)),
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

    BuiltList<JsonObject>? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(BuiltList, [FullType(JsonObject)]),
      ) as BuiltList<JsonObject>;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<BuiltList<JsonObject>>(
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

  /// Listing of metrics available for specific chain
  /// Get all metrics that are actually available for the specified blockchain chain.
  ///
  /// Parameters:
  /// * [chainId] - Chain identifier (e.g., ETHEREUM, ARBITRUM)
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<V1MetricInfo>] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<BuiltList<V1MetricInfo>>> v1ExternalmetricsChainListingGet({ 
    required String chainId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/v1/externalmetrics/chain/listing';
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
      r'chain_id': encodeQueryParameter(_serializers, chainId, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    BuiltList<V1MetricInfo>? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(BuiltList, [FullType(V1MetricInfo)]),
      ) as BuiltList<V1MetricInfo>;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<BuiltList<V1MetricInfo>>(
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
  /// * [metricId] - Metric identifier (e.g., `TVL`, `STABLES_BRIDGED_USD`)
  /// * [exchangeId] - Exchange identifier (e.g., `BINANCE`, `UNISWAP-V3-ETHEREUM`)
  /// * [timeStart] - Starting time in ISO 8601
  /// * [timeEnd] - Ending time in ISO 8601
  /// * [timeFormat] - If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec)
  /// * [periodId] - Identifier of requested timeseries period (e.g. `1MIN` or `2MTH`), default value is `1MIN`
  /// * [limit] - Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<JsonObject>] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<BuiltList<JsonObject>>> v1ExternalmetricsExchangeHistoryGet({ 
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
    final _path = r'/v1/externalmetrics/exchange/history';
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

    BuiltList<JsonObject>? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(BuiltList, [FullType(JsonObject)]),
      ) as BuiltList<JsonObject>;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<BuiltList<JsonObject>>(
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

  /// Listing of metrics available for specific exchange
  /// Get all metrics that are actually available for the specified exchange.
  ///
  /// Parameters:
  /// * [exchangeId] - Exchange identifier (e.g., BINANCE, UNISWAP-V3-ETHEREUM)
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<V1MetricInfo>] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<BuiltList<V1MetricInfo>>> v1ExternalmetricsExchangeListingGet({ 
    required String exchangeId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/v1/externalmetrics/exchange/listing';
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

    BuiltList<V1MetricInfo>? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(BuiltList, [FullType(V1MetricInfo)]),
      ) as BuiltList<V1MetricInfo>;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<BuiltList<V1MetricInfo>>(
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

  /// Listing of all supported metrics
  /// Get all metrics available in the system.
  ///
  /// Parameters:
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<V1MetricInfo>] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<BuiltList<V1MetricInfo>>> v1ExternalmetricsListingGet({ 
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/v1/externalmetrics/listing';
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

    BuiltList<V1MetricInfo>? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(BuiltList, [FullType(V1MetricInfo)]),
      ) as BuiltList<V1MetricInfo>;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<BuiltList<V1MetricInfo>>(
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
