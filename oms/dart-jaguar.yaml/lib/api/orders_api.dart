import 'package:jaguar_retrofit/annotations/annotations.dart';
import 'package:jaguar_retrofit/jaguar_retrofit.dart';
import 'package:jaguar_serializer/jaguar_serializer.dart';
import 'package:jaguar_mimetype/jaguar_mimetype.dart';
import 'dart:async';

import 'package:openapi/model/cancel_all_order.dart';
import 'package:openapi/model/messages.dart';
import 'package:openapi/model/create_order400.dart';
import 'package:openapi/model/messages_ok.dart';
import 'package:openapi/model/cancel_order.dart';
import 'package:openapi/model/new_order.dart';
import 'package:openapi/model/order_live.dart';
import 'package:openapi/model/order.dart';

part 'orders_api.jretro.dart';

@GenApiClient()
class OrdersApi extends ApiClient with _$OrdersApiClient {
    final Route base;
    final Map<String, CodecRepo> converters;
    final Duration timeout;

    OrdersApi({this.base, this.converters, this.timeout = const Duration(minutes: 2)});

    /// Cancel all order
    ///
    /// Cancel all existing order.
    @PostReq(path: "/v1/orders/cancel/all")
    Future<MessagesOk> v1OrdersCancelAllPost(
            
             @AsJson() CancelAllOrder cancelAllOrder
        ) {
        return super.v1OrdersCancelAllPost(

        
        cancelAllOrder
        ).timeout(timeout);
    }

    /// Cancel order
    ///
    /// Cancel an existing order, can be used to cancel margin, exchange, and derivative orders. You can cancel the order by the internal order ID or exchange order ID.
    @PostReq(path: "/v1/orders/cancel")
    Future<OrderLive> v1OrdersCancelPost(
            
             @AsJson() CancelOrder cancelOrder
        ) {
        return super.v1OrdersCancelPost(

        
        cancelOrder
        ).timeout(timeout);
    }

    /// Get orders
    ///
    /// List your current open orders.
    @GetReq(path: "/v1/orders")
    Future<List<Order>> v1OrdersGet(
        
            @QueryParam("exchange_id") String exchangeId
        ) {
        return super.v1OrdersGet(
        
        exchangeId

        ).timeout(timeout);
    }

    /// Create new order
    ///
    /// You can place two types of orders: limit and market. Orders can only be placed if your account has sufficient funds.
    @PostReq(path: "/v1/orders")
    Future<OrderLive> v1OrdersPost(
            
             @AsJson() NewOrder newOrder
        ) {
        return super.v1OrdersPost(

        
        newOrder
        ).timeout(timeout);
    }


}
