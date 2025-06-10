import 'package:test/test.dart';
import 'package:openapi/openapi.dart';

// tests for V1OrderBookBase
void main() {
  final instance = V1OrderBookBaseBuilder();
  // TODO add properties to the builder and call build()

  group(V1OrderBookBase, () {
    // The symbol identifier.
    // String symbolId
    test('to test the property `symbolId`', () async {
      // TODO
    });

    // The exchange time of the order book.
    // DateTime timeExchange
    test('to test the property `timeExchange`', () async {
      // TODO
    });

    // The CoinAPI time when the order book was received.
    // DateTime timeCoinapi
    test('to test the property `timeCoinapi`', () async {
      // TODO
    });

    // The asks made by market makers.
    // JsonObject asks
    test('to test the property `asks`', () async {
      // TODO
    });

    // The bids made by market makers.
    // JsonObject bids
    test('to test the property `bids`', () async {
      // TODO
    });

  });
}
