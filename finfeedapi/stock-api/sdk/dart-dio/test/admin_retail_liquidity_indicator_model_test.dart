import 'package:test/test.dart';
import 'package:openapi/openapi.dart';

// tests for AdminRetailLiquidityIndicatorModel
void main() {
  final instance = AdminRetailLiquidityIndicatorModelBuilder();
  // TODO add properties to the builder and call build()

  group(AdminRetailLiquidityIndicatorModel, () {
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

    // Time when the retail liquidity indicator was recorded as DateTime
    // DateTime timestamp
    test('to test the property `timestamp`', () async {
      // TODO
    });

    // Retail liquidity indicator as byte value
    // int retailLiquidityIndicator
    test('to test the property `retailLiquidityIndicator`', () async {
      // TODO
    });

    // Retail liquidity indicator as character string
    // String retailLiquidityIndicatorCode
    test('to test the property `retailLiquidityIndicatorCode`', () async {
      // TODO
    });

    // Human-readable description of the retail liquidity indicator
    // String retailLiquidityIndicatorText
    test('to test the property `retailLiquidityIndicatorText`', () async {
      // TODO
    });

    // Indicates if the indicator is 'Not Applicable' (' '/0x20).
    // bool isRetailIndicatorNotApplicable
    test('to test the property `isRetailIndicatorNotApplicable`', () async {
      // TODO
    });

    // Indicates if there is 'Buy interest for Retail' ('A'/0x41).
    // bool isRetailIndicatorBuyInterest
    test('to test the property `isRetailIndicatorBuyInterest`', () async {
      // TODO
    });

    // Indicates if there is 'Sell interest for Retail' ('B'/0x42).
    // bool isRetailIndicatorSellInterest
    test('to test the property `isRetailIndicatorSellInterest`', () async {
      // TODO
    });

    // Indicates if there is 'Buy and sell interest for Retail' ('C'/0x43).
    // bool isRetailIndicatorBuyAndSellInterest
    test('to test the property `isRetailIndicatorBuyAndSellInterest`', () async {
      // TODO
    });

  });
}
