import 'package:test/test.dart';
import 'package:openapi/openapi.dart';

// tests for Level2PriceLevelUpdateModel
void main() {
  final instance = Level2PriceLevelUpdateModelBuilder();
  // TODO add properties to the builder and call build()

  group(Level2PriceLevelUpdateModel, () {
    // The stock symbol
    // String symbol
    test('to test the property `symbol`', () async {
      // TODO
    });

    // Original timestamp in nanoseconds since epoch
    // int timestampNanos
    test('to test the property `timestampNanos`', () async {
      // TODO
    });

    // Time when the price level update was recorded as DateTime
    // DateTime timestamp
    test('to test the property `timestamp`', () async {
      // TODO
    });

    // Indicates if this is a price level update for the Buy Side.
    // bool isSideBuy
    test('to test the property `isSideBuy`', () async {
      // TODO
    });

    // Indicates if event processing is complete.
    // bool isEventProcessingComplete
    test('to test the property `isEventProcessingComplete`', () async {
      // TODO
    });

    // Aggregate quoted size at the price level
    // int size
    test('to test the property `size`', () async {
      // TODO
    });

    // Price level as decimal
    // double price
    test('to test the property `price`', () async {
      // TODO
    });

  });
}
