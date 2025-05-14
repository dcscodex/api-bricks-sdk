import 'package:test/test.dart';
import 'package:openapi/openapi.dart';

// tests for Level3AddOrderModel
void main() {
  final instance = Level3AddOrderModelBuilder();
  // TODO add properties to the builder and call build()

  group(Level3AddOrderModel, () {
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

    // Time when the order was added as DateTime (UTC)
    // DateTime timestamp
    test('to test the property `timestamp`', () async {
      // TODO
    });

    // Indicates if this is a Buy order ('8'/0x38).
    // bool isSideBuy
    test('to test the property `isSideBuy`', () async {
      // TODO
    });

    // Quoted size in number of shares
    // int size
    test('to test the property `size`', () async {
      // TODO
    });

    // Price as decimal
    // double price
    test('to test the property `price`', () async {
      // TODO
    });

    // Order identifier
    // int orderId
    test('to test the property `orderId`', () async {
      // TODO
    });

  });
}
