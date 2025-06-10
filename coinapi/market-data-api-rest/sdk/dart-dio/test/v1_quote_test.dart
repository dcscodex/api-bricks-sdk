import 'package:test/test.dart';
import 'package:openapi/openapi.dart';

// tests for V1Quote
void main() {
  final instance = V1QuoteBuilder();
  // TODO add properties to the builder and call build()

  group(V1Quote, () {
    // The symbol identifier.
    // String symbolId
    test('to test the property `symbolId`', () async {
      // TODO
    });

    // The exchange time of the quote.
    // DateTime timeExchange
    test('to test the property `timeExchange`', () async {
      // TODO
    });

    // The CoinAPI time when the quote was received.
    // DateTime timeCoinapi
    test('to test the property `timeCoinapi`', () async {
      // TODO
    });

    // The best asking price.
    // double askPrice
    test('to test the property `askPrice`', () async {
      // TODO
    });

    // The volume resting on the best ask. If the value is equal to zero, then the size is unknown.
    // double askSize
    test('to test the property `askSize`', () async {
      // TODO
    });

    // The best bidding price.
    // double bidPrice
    test('to test the property `bidPrice`', () async {
      // TODO
    });

    // The volume resting on the best bid. If the value is equal to zero, then the size is unknown.
    // double bidSize
    test('to test the property `bidSize`', () async {
      // TODO
    });

  });
}
