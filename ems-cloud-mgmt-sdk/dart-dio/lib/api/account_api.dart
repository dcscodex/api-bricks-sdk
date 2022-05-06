//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'dart:async';
import 'package:dio/dio.dart';
import 'package:built_value/serializer.dart';

import 'package:built_collection/built_collection.dart';
import 'package:openapi/model/account_data.dart';
import 'package:openapi/model/get_account.dart';

class AccountApi {

  final Dio _dio;

  final Serializers _serializers;

  const AccountApi(this._dio, this._serializers);

  /// Delete account
  ///
  /// Delete specific exchange account maintained by the EMS API for your subscription.
  Future<Response<void>> deleteAccount(
    BuiltList<String> exchangeId, { 
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final _request = RequestOptions(
      path: r'/v1/accounts',
      method: 'DELETE',
      headers: <String, dynamic>{
        ...?headers,
      },
      queryParameters: <String, dynamic>{
        r'exchange_id': exchangeId,
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

    return _response;
  }

  /// Delete all accounts
  ///
  /// Delete all exchange accounts maintained by the EMS API for your subscription.
  Future<Response<void>> deleteAccountAll({ 
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final _request = RequestOptions(
      path: r'/v1/accounts/all',
      method: 'DELETE',
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

    return _response;
  }

  /// Get accounts
  ///
  /// Get all accounts maintained for your subscription in the EMS API.
  Future<Response<BuiltList<GetAccount>>> getAccount({ 
    BuiltList<String> filterExchangeId,
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final _request = RequestOptions(
      path: r'/v1/accounts',
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

    const _responseType = FullType(BuiltList, [FullType(GetAccount)]);
    final BuiltList<GetAccount> _responseData = _serializers.deserialize(
      _response.data,
      specifiedType: _responseType,
    ) as BuiltList<GetAccount>;

    return Response<BuiltList<GetAccount>>(
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

  /// Add or update account
  ///
  /// Add new or update existing exchange account for your subscription in the EMS API.
  Future<Response<void>> persistAccount(
    AccountData body, { 
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final _request = RequestOptions(
      path: r'/v1/accounts',
      method: 'POST',
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

    const _type = FullType(AccountData);
    _bodyData = _serializers.serialize(body, specifiedType: _type);

    final _response = await _dio.request<dynamic>(
      _request.path,
      data: _bodyData,
      options: _request,
    );

    return _response;
  }

}
