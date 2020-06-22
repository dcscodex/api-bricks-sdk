import 'dart:async';
import 'dart:io';
import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';

import 'package:openapi/model/cancel_all_order.dart';
import 'package:openapi/model/messages.dart';
import 'package:openapi/model/create_order400.dart';
import 'package:openapi/model/messages_ok.dart';
import 'package:openapi/model/cancel_order.dart';
import 'package:openapi/model/new_order.dart';
import 'package:openapi/model/order_live.dart';
import 'package:openapi/model/order.dart';

class OrdersApi {
    final Dio _dio;
    Serializers _serializers;

    OrdersApi(this._dio, this._serializers);

        /// Cancel all order
        ///
        /// Cancel all existing order.
        Future<Response<MessagesOk>>v1OrdersCancelAllPost(CancelAllOrder cancelAllOrder,{ CancelToken cancelToken, Map<String, String> headers,}) async {

        String _path = "/v1/orders/cancel/all";

        Map<String, dynamic> queryParams = {};
        Map<String, String> headerParams = Map.from(headers ?? {});
        dynamic bodyData;

        queryParams.removeWhere((key, value) => value == null);
        headerParams.removeWhere((key, value) => value == null);

        List<String> contentTypes = ["application/json"];


            var serializedBody = _serializers.serialize(cancelAllOrder);
            var jsoncancelAllOrder = json.encode(serializedBody);
            bodyData = jsoncancelAllOrder;

            return _dio.request(
            _path,
            queryParameters: queryParams,
            data: bodyData,
            options: Options(
            method: 'post'.toUpperCase(),
            headers: headerParams,
            extra: {
                'secure': [],
            },
            contentType: contentTypes.isNotEmpty ? contentTypes[0] : "application/json",
            ),
            cancelToken: cancelToken,
            ).then((response) {

        var serializer = _serializers.serializerForType(MessagesOk);
        var data = _serializers.deserializeWith<MessagesOk>(serializer, response.data is String ? jsonDecode(response.data) : response.data);

            return Response<MessagesOk>(
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
        /// Cancel order
        ///
        /// Cancel an existing order, can be used to cancel margin, exchange, and derivative orders. You can cancel the order by the internal order ID or exchange order ID.
        Future<Response<OrderLive>>v1OrdersCancelPost(CancelOrder cancelOrder,{ CancelToken cancelToken, Map<String, String> headers,}) async {

        String _path = "/v1/orders/cancel";

        Map<String, dynamic> queryParams = {};
        Map<String, String> headerParams = Map.from(headers ?? {});
        dynamic bodyData;

        queryParams.removeWhere((key, value) => value == null);
        headerParams.removeWhere((key, value) => value == null);

        List<String> contentTypes = ["application/json"];


            var serializedBody = _serializers.serialize(cancelOrder);
            var jsoncancelOrder = json.encode(serializedBody);
            bodyData = jsoncancelOrder;

            return _dio.request(
            _path,
            queryParameters: queryParams,
            data: bodyData,
            options: Options(
            method: 'post'.toUpperCase(),
            headers: headerParams,
            extra: {
                'secure': [],
            },
            contentType: contentTypes.isNotEmpty ? contentTypes[0] : "application/json",
            ),
            cancelToken: cancelToken,
            ).then((response) {

        var serializer = _serializers.serializerForType(OrderLive);
        var data = _serializers.deserializeWith<OrderLive>(serializer, response.data is String ? jsonDecode(response.data) : response.data);

            return Response<OrderLive>(
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
        /// Get orders
        ///
        /// List your current open orders.
        Future<Response<List<Order>>>v1OrdersGet({ String exchangeId,CancelToken cancelToken, Map<String, String> headers,}) async {

        String _path = "/v1/orders";

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

                final FullType type = const FullType(BuiltList, const [const FullType(Order)]);
                BuiltList<Order> dataList = _serializers.deserialize(response.data is String ? jsonDecode(response.data) : response.data, specifiedType: type);
                var data = dataList.toList();

            return Response<List<Order>>(
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
        /// Create new order
        ///
        /// You can place two types of orders: limit and market. Orders can only be placed if your account has sufficient funds.
        Future<Response<OrderLive>>v1OrdersPost(NewOrder newOrder,{ CancelToken cancelToken, Map<String, String> headers,}) async {

        String _path = "/v1/orders";

        Map<String, dynamic> queryParams = {};
        Map<String, String> headerParams = Map.from(headers ?? {});
        dynamic bodyData;

        queryParams.removeWhere((key, value) => value == null);
        headerParams.removeWhere((key, value) => value == null);

        List<String> contentTypes = ["application/json"];


            var serializedBody = _serializers.serialize(newOrder);
            var jsonnewOrder = json.encode(serializedBody);
            bodyData = jsonnewOrder;

            return _dio.request(
            _path,
            queryParameters: queryParams,
            data: bodyData,
            options: Options(
            method: 'post'.toUpperCase(),
            headers: headerParams,
            extra: {
                'secure': [],
            },
            contentType: contentTypes.isNotEmpty ? contentTypes[0] : "application/json",
            ),
            cancelToken: cancelToken,
            ).then((response) {

        var serializer = _serializers.serializerForType(OrderLive);
        var data = _serializers.deserializeWith<OrderLive>(serializer, response.data is String ? jsonDecode(response.data) : response.data);

            return Response<OrderLive>(
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
