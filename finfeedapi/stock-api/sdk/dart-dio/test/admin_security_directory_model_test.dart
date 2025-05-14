import 'package:test/test.dart';
import 'package:openapi/openapi.dart';

// tests for AdminSecurityDirectoryModel
void main() {
  final instance = AdminSecurityDirectoryModelBuilder();
  // TODO add properties to the builder and call build()

  group(AdminSecurityDirectoryModel, () {
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

    // Time when the security directory information was recorded as DateTime
    // DateTime timestamp
    test('to test the property `timestamp`', () async {
      // TODO
    });

    // Flags for the security
    // int flags
    test('to test the property `flags`', () async {
      // TODO
    });

    // Number of shares that represent a round lot
    // int roundLotSize
    test('to test the property `roundLotSize`', () async {
      // TODO
    });

    // Adjusted previous official closing price as decimal
    // double adjustedPocPrice
    test('to test the property `adjustedPocPrice`', () async {
      // TODO
    });

    // LULD tier as byte value
    // int luldTier
    test('to test the property `luldTier`', () async {
      // TODO
    });

    // LULD tier as numeric string
    // String luldTierCode
    test('to test the property `luldTierCode`', () async {
      // TODO
    });

    // Human-readable description of the LULD tier
    // String luldTierText
    test('to test the property `luldTierText`', () async {
      // TODO
    });

    // Indicates if LULD Tier is 'Not applicable' (0x0).
    // bool isLuldTierNotApplicable
    test('to test the property `isLuldTierNotApplicable`', () async {
      // TODO
    });

    // Indicates if LULD Tier is 'Tier 1 NMS Stock' (0x1).
    // bool isLuldTier1
    test('to test the property `isLuldTier1`', () async {
      // TODO
    });

    // Indicates if LULD Tier is 'Tier 2 NMS Stock' (0x2).
    // bool isLuldTier2
    test('to test the property `isLuldTier2`', () async {
      // TODO
    });

  });
}
