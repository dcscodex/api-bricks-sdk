import 'package:test/test.dart';
import 'package:openapi/openapi.dart';

// tests for V1Trade
void main() {
  final instance = V1TradeBuilder();
  // TODO add properties to the builder and call build()

  group(V1Trade, () {
    // The symbol identifier.
    // String symbolId
    test('to test the property `symbolId`', () async {
      // TODO
    });

    // The time of trade reported by the exchange.
    // DateTime timeExchange
    test('to test the property `timeExchange`', () async {
      // TODO
    });

    // The time when the trade was received by CoinAPI.
    // DateTime timeCoinapi
    test('to test the property `timeCoinapi`', () async {
      // TODO
    });

    // The unique identifier for the trade.
    // String uuid
    test('to test the property `uuid`', () async {
      // TODO
    });

    // The price of the transaction.
    // double price
    test('to test the property `price`', () async {
      // TODO
    });

    // The base asset amount traded in the transaction.
    // double size
    test('to test the property `size`', () async {
      // TODO
    });

    // The aggressor side of the transaction (BUY/SELL/BUY_ESTIMATED/SELL_ESTIMATED/UNKNOWN).
    // String takerSide
    test('to test the property `takerSide`', () async {
      // TODO
    });

    // The trade identifier.
    // String idTrade
    test('to test the property `idTrade`', () async {
      // TODO
    });

    // The order maker identifier.
    // String idOrderMaker
    test('to test the property `idOrderMaker`', () async {
      // TODO
    });

    // The order taker identifier.
    // String idOrderTaker
    test('to test the property `idOrderTaker`', () async {
      // TODO
    });

  });
}
