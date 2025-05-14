import 'package:test/test.dart';
import 'package:openapi/openapi.dart';

// tests for AdminOfficialPriceModel
void main() {
  final instance = AdminOfficialPriceModelBuilder();
  // TODO add properties to the builder and call build()

  group(AdminOfficialPriceModel, () {
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

    // Time when the official price was recorded as DateTime
    // DateTime timestamp
    test('to test the property `timestamp`', () async {
      // TODO
    });

    // Type of price as byte value
    // int priceType
    test('to test the property `priceType`', () async {
      // TODO
    });

    // Type of price as character string
    // String priceTypeCode
    test('to test the property `priceTypeCode`', () async {
      // TODO
    });

    // Human-readable description of the price type
    // String priceTypeText
    test('to test the property `priceTypeText`', () async {
      // TODO
    });

    // Indicates if the price type is 'IEX Official Opening Price' ('Q'/0x51).
    // bool isPriceTypeOpening
    test('to test the property `isPriceTypeOpening`', () async {
      // TODO
    });

    // Indicates if the price type is 'IEX Official Closing Price' ('M'/0x4d).
    // bool isPriceTypeClosing
    test('to test the property `isPriceTypeClosing`', () async {
      // TODO
    });

    // Official price as decimal
    // double officialPrice
    test('to test the property `officialPrice`', () async {
      // TODO
    });

  });
}
