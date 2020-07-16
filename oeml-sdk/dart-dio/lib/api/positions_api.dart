import 'dart:async';
import 'dart:io';
import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';

import 'package:openapi/model/position.dart';
import 'package:openapi/model/message.dart';

class PositionsApi {
    final Dio _dio;
    Serializers _serializers;

    PositionsApi(this._dio, this._serializers);

        /// Get open positions
        ///
        /// Get current open positions across all or single exchange.
        Future<Response<List<Position>>>v1PositionsGet({ String exchangeId,CancelToken cancelToken, Map<String, String> headers,}) async {

        String _path = "/v1/positions";

        Map<String, dynamic> queryParams = {};
        Map<String, String> headerParams = Map.from(headers ?? {});
        dynamic bodyData;

                queryParams[r'exchange_id'] = exchangeId;
        queryParams.removeWhere((key, value) => value == null);
        headerParams.removeWhere((key, value) => value == null);

        List<String> contentTypes = [];



            return _dio.request(
            _path,
            queryParameters: queryParams,
            data: bodyData,
            options: Options(
            method: 'get'.toUpperCase(),
            headers: headerParams,
            extra: {
                'secure': [],
            },
            contentType: contentTypes.isNotEmpty ? contentTypes[0] : "application/json",
            ),
            cancelToken: cancelToken,
            ).then((response) {

                final FullType type = const FullType(BuiltList, const [const FullType(Position)]);
                BuiltList<Position> dataList = _serializers.deserialize(response.data is String ? jsonDecode(response.data) : response.data, specifiedType: type);
                var data = dataList.toList();

            return Response<List<Position>>(
                data: data,
                headers: response.headers,
                request: response.request,
                redirects: response.redirects,
                statusCode: response.statusCode,
                statusMessage: response.statusMessage,
                extra: response.extra,
            );
            });
            }
        }
