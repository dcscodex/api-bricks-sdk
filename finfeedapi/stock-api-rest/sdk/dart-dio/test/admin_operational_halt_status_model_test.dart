import 'package:test/test.dart';
import 'package:openapi/openapi.dart';

// tests for AdminOperationalHaltStatusModel
void main() {
  final instance = AdminOperationalHaltStatusModelBuilder();
  // TODO add properties to the builder and call build()

  group(AdminOperationalHaltStatusModel, () {
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

    // Time when the operational halt status was recorded as DateTime
    // DateTime timestamp
    test('to test the property `timestamp`', () async {
      // TODO
    });

    // Operational halt status as byte value
    // int operationalHaltStatus
    test('to test the property `operationalHaltStatus`', () async {
      // TODO
    });

    // Operational halt status as character string
    // String operationalHaltStatusCode
    test('to test the property `operationalHaltStatusCode`', () async {
      // TODO
    });

    // Human-readable description of the operational halt status
    // String operationalHaltStatusText
    test('to test the property `operationalHaltStatusText`', () async {
      // TODO
    });

    // Indicates if the status is 'IEX specific operational trading halt' ('O'/0x4f).
    // bool isOperationallyHalted
    test('to test the property `isOperationallyHalted`', () async {
      // TODO
    });

    // Indicates if the status is 'Not operationally halted on IEX' ('N'/0x4e).
    // bool isNotOperationallyHalted
    test('to test the property `isNotOperationallyHalted`', () async {
      // TODO
    });

  });
}
