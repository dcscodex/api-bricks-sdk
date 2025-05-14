import 'package:test/test.dart';
import 'package:openapi/openapi.dart';

// tests for AdminSecurityEventModel
void main() {
  final instance = AdminSecurityEventModelBuilder();
  // TODO add properties to the builder and call build()

  group(AdminSecurityEventModel, () {
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

    // Time when the security event was recorded as DateTime
    // DateTime timestamp
    test('to test the property `timestamp`', () async {
      // TODO
    });

    // Security event as byte value
    // int securityEvent
    test('to test the property `securityEvent`', () async {
      // TODO
    });

    // Security event as character string ('O' or 'C')
    // String securityEventCode
    test('to test the property `securityEventCode`', () async {
      // TODO
    });

    // Human-readable description of the security event
    // String securityEventText
    test('to test the property `securityEventText`', () async {
      // TODO
    });

    // Indicates if the security event is 'Opening Process Complete' ('O'/0x4f).
    // bool isOpeningProcessComplete
    test('to test the property `isOpeningProcessComplete`', () async {
      // TODO
    });

    // Indicates if the security event is 'Closing Process Complete' ('C'/0x43).
    // bool isClosingProcessComplete
    test('to test the property `isClosingProcessComplete`', () async {
      // TODO
    });

  });
}
