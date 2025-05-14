import 'package:test/test.dart';
import 'package:openapi/openapi.dart';

// tests for Level3ExecutedOrderModel
void main() {
  final instance = Level3ExecutedOrderModelBuilder();
  // TODO add properties to the builder and call build()

  group(Level3ExecutedOrderModel, () {
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

    // Time when the order was executed as DateTime
    // DateTime timestamp
    test('to test the property `timestamp`', () async {
      // TODO
    });

    // Order identifier reference
    // int orderIdReference
    test('to test the property `orderIdReference`', () async {
      // TODO
    });

    // Sale condition flags for the execution as byte value
    // int saleConditionFlags
    test('to test the property `saleConditionFlags`', () async {
      // TODO
    });

    // Bit 7 (Mask 0x80): Intermarket Sweep Flag  True: Intermarket Sweep Order (\"ISO\")  False: Non-Intermarket Sweep Order
    // bool isIntermarketSweep
    test('to test the property `isIntermarketSweep`', () async {
      // TODO
    });

    // Bit 6 (Mask 0x40): Extended Hours Flag  True: Extended Hours Trade (i.e., Form T sale condition)  False: Regular Market Session Trade
    // bool isExtendedHoursTrade
    test('to test the property `isExtendedHoursTrade`', () async {
      // TODO
    });

    // Bit 5 (Mask 0x20): Odd Lot Flag  True: Odd Lot Trade  False: Round or Mixed Lot Trade
    // bool isOddLotTrade
    test('to test the property `isOddLotTrade`', () async {
      // TODO
    });

    // Bit 4 (Mask 0x10): Trade Through Exempt Flag  True: Trade is not subject to Rule 611 (Trade Through) of SEC Reg. NMS  False: Trade is subject to Rule 611 (Trade Through) of SEC Reg. NMS
    // bool isTradeThroughExempt
    test('to test the property `isTradeThroughExempt`', () async {
      // TODO
    });

    // Bit 3 (Mask 0x08): Single-price Cross Trade Flag  True: Trade resulting from a single-price cross  False: Execution during continuous trading
    // bool isSinglePriceCrossTrade
    test('to test the property `isSinglePriceCrossTrade`', () async {
      // TODO
    });

    // Trade volume in number of shares
    // int size
    test('to test the property `size`', () async {
      // TODO
    });

    // Execution price as decimal
    // double price
    test('to test the property `price`', () async {
      // TODO
    });

    // IEX trade identifier
    // int tradeId
    test('to test the property `tradeId`', () async {
      // TODO
    });

  });
}
