//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'dart:async';
import 'package:dio/dio.dart';
import 'package:built_value/serializer.dart';

import 'package:built_collection/built_collection.dart';
import 'package:openapi/model/exchange_login_require.dart';

class ExchangeApi {

  final Dio _dio;

  final Serializers _serializers;

  const ExchangeApi(this._dio, this._serializers);

  /// Get exchange configuration
  ///
  /// Get information about the required parameters or server site location of the exchanges supported in the EMS API.
  Future<Response<BuiltList<ExchangeLoginRequire>>> exchangeLoginRequire({ 
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final _request = RequestOptions(
      path: r'/v1/exchanges',
      method: 'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'APIKeyHeader',
            'keyName': 'X-CoinAPI-Key',
            'where': 'header',
          },{
            'type': 'apiKey',
            'name': 'APIKeyQueryParam',
            'keyName': 'apikey',
            'where': 'query',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
      contentType: 'application/json',
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    dynamic _bodyData;

    final _response = await _dio.request<dynamic>(
      _request.path,
      data: _bodyData,
      options: _request,
    );

    const _responseType = FullType(BuiltList, [FullType(ExchangeLoginRequire)]);
    final BuiltList<ExchangeLoginRequire> _responseData = _serializers.deserialize(
      _response.data,
      specifiedType: _responseType,
    ) as BuiltList<ExchangeLoginRequire>;

    return Response<BuiltList<ExchangeLoginRequire>>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      request: _response.request,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

}
