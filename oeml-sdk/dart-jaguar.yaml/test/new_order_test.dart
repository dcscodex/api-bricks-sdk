import 'package:openapi/api.dart';
import 'package:test/test.dart';

// tests for NewOrder
void main() {
  var instance = new NewOrder();

  group('test NewOrder', () {
    // Exchange name
    // String exchangeId (default value: null)
    test('to test the property `exchangeId`', () async {
      // TODO
    });

    // Client unique identifier for the trade.
    // String clientOrderId (default value: null)
    test('to test the property `clientOrderId`', () async {
      // TODO
    });

    // The symbol of the order.
    // String symbolExchange (default value: null)
    test('to test the property `symbolExchange`', () async {
      // TODO
    });

    // The CoinAPI symbol of the order.
    // String symbolCoinapi (default value: null)
    test('to test the property `symbolCoinapi`', () async {
      // TODO
    });

    // Quoted decimal amount to purchase.
    // num amountOrder (default value: null)
    test('to test the property `amountOrder`', () async {
      // TODO
    });

    // Quoted decimal amount to spend per unit.
    // num price (default value: null)
    test('to test the property `price`', () async {
      // TODO
    });

    // Buy or Sell
    // String side (default value: null)
    test('to test the property `side`', () async {
      // TODO
    });

    // The order type.
    // String orderType (default value: null)
    test('to test the property `orderType`', () async {
      // TODO
    });

    // TimeInForce timeInForce (default value: null)
    test('to test the property `timeInForce`', () async {
      // TODO
    });

    // Required for orders with time_in_force = GOOD_TILL_TIME_EXCHANGE, GOOD_TILL_TIME_OMS
    // DateTime expireTime (default value: null)
    test('to test the property `expireTime`', () async {
      // TODO
    });

    // TODO: description exec inst  | Parameter | Description | |-----------|--------| | `MAKER_OR_CANCEL` | Rests on the continuous order book at a specified price. If any quantity can be filled immediately, the entire order is canceled. | ##### Exec inst options  | Exchange | MAKER_OR_CANCEL | | --- | --- | | BINANCE | X | | BITFINEX | X | | BITMEX | X | | BLOCKCHAINEXCHANGE | X | | BITSTAMP |  | | COINBASE | X | | GEMINI | X | | KRAKEN | X | | POLONIEX | X | | HITBTC |  | | KRAKENFTS | X | 
    // List<String> execInst (default value: const [])
    test('to test the property `execInst`', () async {
      // TODO
    });


  });

}
