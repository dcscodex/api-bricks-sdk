import 'package:openapi/api.dart';
import 'package:test/test.dart';

// tests for OrderNewSingleRequest
void main() {
  var instance = new OrderNewSingleRequest();

  group('test OrderNewSingleRequest', () {
    // Exchange identifier used to identify the routing destination.
    // String exchangeId (default value: null)
    test('to test the property `exchangeId`', () async {
      // TODO
    });

    // The unique identifier of the order assigned by the client.
    // String clientOrderId (default value: null)
    test('to test the property `clientOrderId`', () async {
      // TODO
    });

    // Exchange symbol. One of the properties (`symbol_id_exchange`, `symbol_id_coinapi`) is required to identify the market for the new order.
    // String symbolIdExchange (default value: null)
    test('to test the property `symbolIdExchange`', () async {
      // TODO
    });

    // CoinAPI symbol. One of the properties (`symbol_id_exchange`, `symbol_id_coinapi`) is required to identify the market for the new order.
    // String symbolIdCoinapi (default value: null)
    test('to test the property `symbolIdCoinapi`', () async {
      // TODO
    });

    // Order quantity.
    // num amountOrder (default value: null)
    test('to test the property `amountOrder`', () async {
      // TODO
    });

    // Order price.
    // num price (default value: null)
    test('to test the property `price`', () async {
      // TODO
    });

    // OrdSide side (default value: null)
    test('to test the property `side`', () async {
      // TODO
    });

    // OrdType orderType (default value: null)
    test('to test the property `orderType`', () async {
      // TODO
    });

    // TimeInForce timeInForce (default value: null)
    test('to test the property `timeInForce`', () async {
      // TODO
    });

    // Expiration time. Conditionaly required for orders with time_in_force = `GOOD_TILL_TIME_EXCHANGE` or `GOOD_TILL_TIME_OEML`.
    // DateTime expireTime (default value: null)
    test('to test the property `expireTime`', () async {
      // TODO
    });

    // Order execution instructions are documented in the separate section: <a href=\"#oeml-order-params-exec\">OEML / Starter Guide / Order parameters / Execution instructions</a> 
    // List<String> execInst (default value: const [])
    test('to test the property `execInst`', () async {
      // TODO
    });


  });

}
