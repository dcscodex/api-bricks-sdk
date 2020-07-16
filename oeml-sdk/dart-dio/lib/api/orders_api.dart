import 'dart:async';
import 'dart:io';
import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';

import 'package:openapi/model/order_cancel_all_request.dart';
import 'package:openapi/model/validation_error.dart';
import 'package:openapi/model/order_cancel_single_request.dart';
import 'package:openapi/model/order_execution_report.dart';
import 'package:openapi/model/message.dart';
import 'package:openapi/model/order_new_single_request.dart';

class OrdersApi {
    final Dio _dio;
    Serializers _serializers;

    OrdersApi(this._dio, this._serializers);

        /// Cancel all orders request
        ///
        /// This request cancels all open orders on single specified exchange.
        Future<Response<Message>>v1OrdersCancelAllPost(OrderCancelAllRequest orderCancelAllRequest,{ CancelToken cancelToken, Map<String, String> headers,}) async {

        String _path = "/v1/orders/cancel/all";

        Map<String, dynamic> queryParams = {};
        Map<String, String> headerParams = Map.from(headers ?? {});
        dynamic bodyData;

        queryParams.removeWhere((key, value) => value == null);
        headerParams.removeWhere((key, value) => value == null);

        List<String> contentTypes = ["application/json"];


            var serializedBody = _serializers.serialize(orderCancelAllRequest);
            var jsonorderCancelAllRequest = json.encode(serializedBody);
            bodyData = jsonorderCancelAllRequest;

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

        var serializer = _serializers.serializerForType(Message);
        var data = _serializers.deserializeWith<Message>(serializer, response.data is String ? jsonDecode(response.data) : response.data);

            return Response<Message>(
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
        /// Cancel order request
        ///
        /// Request cancel for an existing order. The order can be canceled using the &#x60;client_order_id&#x60; or &#x60;exchange_order_id&#x60;.
        Future<Response<OrderExecutionReport>>v1OrdersCancelPost(OrderCancelSingleRequest orderCancelSingleRequest,{ CancelToken cancelToken, Map<String, String> headers,}) async {

        String _path = "/v1/orders/cancel";

        Map<String, dynamic> queryParams = {};
        Map<String, String> headerParams = Map.from(headers ?? {});
        dynamic bodyData;

        queryParams.removeWhere((key, value) => value == null);
        headerParams.removeWhere((key, value) => value == null);

        List<String> contentTypes = ["application/json"];


            var serializedBody = _serializers.serialize(orderCancelSingleRequest);
            var jsonorderCancelSingleRequest = json.encode(serializedBody);
            bodyData = jsonorderCancelSingleRequest;

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

        var serializer = _serializers.serializerForType(OrderExecutionReport);
        var data = _serializers.deserializeWith<OrderExecutionReport>(serializer, response.data is String ? jsonDecode(response.data) : response.data);

            return Response<OrderExecutionReport>(
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
        /// Get open orders
        ///
        /// Get last execution reports for open orders across all or single exchange.
        Future<Response<List<OrderExecutionReport>>>v1OrdersGet({ String exchangeId,CancelToken cancelToken, Map<String, String> headers,}) async {

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

                final FullType type = const FullType(BuiltList, const [const FullType(OrderExecutionReport)]);
                BuiltList<OrderExecutionReport> dataList = _serializers.deserialize(response.data is String ? jsonDecode(response.data) : response.data, specifiedType: type);
                var data = dataList.toList();

            return Response<List<OrderExecutionReport>>(
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
        /// Send new order
        ///
        /// This request creating new order for the specific exchange.
        Future<Response<OrderExecutionReport>>v1OrdersPost(OrderNewSingleRequest orderNewSingleRequest,{ CancelToken cancelToken, Map<String, String> headers,}) async {

        String _path = "/v1/orders";

        Map<String, dynamic> queryParams = {};
        Map<String, String> headerParams = Map.from(headers ?? {});
        dynamic bodyData;

        queryParams.removeWhere((key, value) => value == null);
        headerParams.removeWhere((key, value) => value == null);

        List<String> contentTypes = ["application/json"];


            var serializedBody = _serializers.serialize(orderNewSingleRequest);
            var jsonorderNewSingleRequest = json.encode(serializedBody);
            bodyData = jsonorderNewSingleRequest;

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

        var serializer = _serializers.serializerForType(OrderExecutionReport);
        var data = _serializers.deserializeWith<OrderExecutionReport>(serializer, response.data is String ? jsonDecode(response.data) : response.data);

            return Response<OrderExecutionReport>(
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
        /// Get order execution report
        ///
        /// Get the last order execution report for the specified order. The requested order does not need to be active or opened.
        Future<Response<OrderExecutionReport>>v1OrdersStatusClientOrderIdGet(String clientOrderId,{ CancelToken cancelToken, Map<String, String> headers,}) async {

        String _path = "/v1/orders/status/{client_order_id}".replaceAll("{" r'client_order_id' "}", clientOrderId.toString());

        Map<String, dynamic> queryParams = {};
        Map<String, String> headerParams = Map.from(headers ?? {});
        dynamic bodyData;

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

        var serializer = _serializers.serializerForType(OrderExecutionReport);
        var data = _serializers.deserializeWith<OrderExecutionReport>(serializer, response.data is String ? jsonDecode(response.data) : response.data);

            return Response<OrderExecutionReport>(
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
