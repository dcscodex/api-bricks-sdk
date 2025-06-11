//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

import 'package:openapi/api.dart';
import 'package:test/test.dart';

// tests for TradeTradeModel
void main() {
  // final instance = TradeTradeModel();

  group('test TradeTradeModel', () {
    // Indicates if this record represents a trade break (true) or a trade report (false).
    // bool isTradeBreak
    test('to test the property `isTradeBreak`', () async {
      // TODO
    });

    // The stock symbol.
    // String symbol
    test('to test the property `symbol`', () async {
      // TODO
    });

    // Original timestamp in nanoseconds since epoch.
    // int timestampNanos
    test('to test the property `timestampNanos`', () async {
      // TODO
    });

    // Time when the event was recorded as DateTime (UTC).
    // DateTime timestamp
    test('to test the property `timestamp`', () async {
      // TODO
    });

    // Trade volume (or break volume) in number of shares.
    // int size
    test('to test the property `size`', () async {
      // TODO
    });

    // Trade price (or break price) as decimal.
    // double price
    test('to test the property `price`', () async {
      // TODO
    });

    // IEX trade identifier (same for report and its corresponding break).
    // int tradeId
    test('to test the property `tradeId`', () async {
      // TODO
    });

    // Bit 7 (Mask 0x80): Intermarket Sweep Flag. True: Intermarket Sweep Order (\"ISO\"). False: Non-Intermarket Sweep Order.
    // bool isIntermarketSweep
    test('to test the property `isIntermarketSweep`', () async {
      // TODO
    });

    // Bit 6 (Mask 0x40): Extended Hours Flag. True: Extended Hours Trade (i.e., Form T sale condition). False: Regular Market Session Trade.
    // bool isExtendedHoursTrade
    test('to test the property `isExtendedHoursTrade`', () async {
      // TODO
    });

    // Bit 5 (Mask 0x20): Odd Lot Flag. True: Odd Lot Trade. False: Round or Mixed Lot Trade.
    // bool isOddLotTrade
    test('to test the property `isOddLotTrade`', () async {
      // TODO
    });

    // Bit 4 (Mask 0x10): Trade Through Exempt Flag. True: Trade is not subject to Rule 611 (Trade Through) of SEC Reg. NMS. False: Trade is subject to Rule 611 (Trade Through) of SEC Reg. NMS. Applied when the taking order was an ISO that traded through a protected quotation, OR the NBBO was crossed at the time of the trade, OR the trade occurred through a self-helped venue's quotation, OR the trade was a single-price cross.
    // bool isTradeThroughExempt
    test('to test the property `isTradeThroughExempt`', () async {
      // TODO
    });

    // Bit 3 (Mask 0x08): Single-price Cross Trade Flag. True: Trade resulting from a single-price cross. False: Execution during continuous trading.
    // bool isSinglePriceCrossTrade
    test('to test the property `isSinglePriceCrossTrade`', () async {
      // TODO
    });


  });

}
