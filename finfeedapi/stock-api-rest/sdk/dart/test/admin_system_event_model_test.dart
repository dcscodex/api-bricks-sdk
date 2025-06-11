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

// tests for AdminSystemEventModel
void main() {
  // final instance = AdminSystemEventModel();

  group('test AdminSystemEventModel', () {
    // Original timestamp in nanoseconds since epoch
    // int timestampNanos
    test('to test the property `timestampNanos`', () async {
      // TODO
    });

    // Time when the system event was recorded as DateTime
    // DateTime timestamp
    test('to test the property `timestamp`', () async {
      // TODO
    });

    // System event as byte value
    // int systemEvent
    test('to test the property `systemEvent`', () async {
      // TODO
    });

    // System event as string
    // String systemEventCode
    test('to test the property `systemEventCode`', () async {
      // TODO
    });

    // Human-readable description of the system event
    // String systemEventText
    test('to test the property `systemEventText`', () async {
      // TODO
    });

    // Indicates if the system event is 'Start of Messages' (O). Outside of heartbeat messages on the lower level protocol,  the start of day message is the first message sent in any trading session.
    // bool isSystemEventStartOfMessages
    test('to test the property `isSystemEventStartOfMessages`', () async {
      // TODO
    });

    // Indicates if the system event is 'Start of System Hours' (S). This message indicates that IEX is open and ready to start accepting orders.
    // bool isSystemEventStartOfSystemHours
    test('to test the property `isSystemEventStartOfSystemHours`', () async {
      // TODO
    });

    // Indicates if the system event is 'Start of Regular Market Hours' (R). This message indicates that DAY and GTX orders, as well as market orders and pegged orders,  are available for execution on IEX.
    // bool isSystemEventStartOfRegularMarketHours
    test('to test the property `isSystemEventStartOfRegularMarketHours`', () async {
      // TODO
    });

    // Indicates if the system event is 'End of Regular Market Hours' (M). This message indicates that DAY orders, market orders, and pegged orders  are no longer accepted by IEX.
    // bool isSystemEventEndOfRegularMarketHours
    test('to test the property `isSystemEventEndOfRegularMarketHours`', () async {
      // TODO
    });

    // Indicates if the system event is 'End of System Hours' (E). This message indicates that IEX is now closed and will not accept  any new orders during this trading session. It is still possible  to receive messages after the end of day.
    // bool isSystemEventEndOfSystemHours
    test('to test the property `isSystemEventEndOfSystemHours`', () async {
      // TODO
    });

    // Indicates if the system event is 'End of Messages' (C). This is always the last message sent in any trading session.
    // bool isSystemEventEndOfMessages
    test('to test the property `isSystemEventEndOfMessages`', () async {
      // TODO
    });


  });

}
