//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'dart:async';
import 'package:dio/dio.dart';
import 'package:built_value/serializer.dart';

import 'package:built_collection/built_collection.dart';
import 'package:openapi/model/account_endpoint.dart';

class EndpointsApi {

  final Dio _dio;

  final Serializers _serializers;

  const EndpointsApi(this._dio, this._serializers);

  /// Get API endpoints
  ///
  /// Get all API endpoints that the EMS API expose for your subscription.
  Future<Response<BuiltList<AccountEndpoint>>> endpoints({ 
    BuiltList<String> filterExchangeId,
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final _request = RequestOptions(
      path: r'/v1/endpoints',
      method: 'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      queryParameters: <String, dynamic>{
        if (filterExchangeId != null) r'filter_exchange_id': filterExchangeId,
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

    const _responseType = FullType(BuiltList, [FullType(AccountEndpoint)]);
    final BuiltList<AccountEndpoint> _responseData = _serializers.deserialize(
      _response.data,
      specifiedType: _responseType,
    ) as BuiltList<AccountEndpoint>;

    return Response<BuiltList<AccountEndpoint>>(
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
