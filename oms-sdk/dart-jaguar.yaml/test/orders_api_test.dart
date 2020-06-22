import 'package:openapi/api.dart';
import 'package:test/test.dart';


/// tests for OrdersApi
void main() {
  var instance = new OrdersApi();

  group('tests for OrdersApi', () {
    // Cancel all order
    //
    // Cancel all existing order.
    //
    //Future<MessagesOk> v1OrdersCancelAllPost(CancelAllOrder cancelAllOrder) async 
    test('test v1OrdersCancelAllPost', () async {
      // TODO
    });

    // Cancel order
    //
    // Cancel an existing order, can be used to cancel margin, exchange, and derivative orders. You can cancel the order by the internal order ID or exchange order ID.
    //
    //Future<OrderLive> v1OrdersCancelPost(CancelOrder cancelOrder) async 
    test('test v1OrdersCancelPost', () async {
      // TODO
    });

    // Get orders
    //
    // List your current open orders.
    //
    //Future<List<Order>> v1OrdersGet({ String exchangeId }) async 
    test('test v1OrdersGet', () async {
      // TODO
    });

    // Create new order
    //
    // You can place two types of orders: limit and market. Orders can only be placed if your account has sufficient funds.
    //
    //Future<OrderLive> v1OrdersPost(NewOrder newOrder) async 
    test('test v1OrdersPost', () async {
      // TODO
    });

  });
}
