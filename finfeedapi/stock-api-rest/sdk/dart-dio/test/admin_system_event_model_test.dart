import 'package:test/test.dart';
import 'package:openapi/openapi.dart';

// tests for AdminSystemEventModel
void main() {
  final instance = AdminSystemEventModelBuilder();
  // TODO add properties to the builder and call build()

  group(AdminSystemEventModel, () {
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

    // Indicates if the system event is 'Start of Messages' (O).  Outside of heartbeat messages on the lower level protocol,   the start of day message is the first message sent in any trading session.
    // bool isSystemEventStartOfMessages
    test('to test the property `isSystemEventStartOfMessages`', () async {
      // TODO
    });

    // Indicates if the system event is 'Start of System Hours' (S).  This message indicates that IEX is open and ready to start accepting orders.
    // bool isSystemEventStartOfSystemHours
    test('to test the property `isSystemEventStartOfSystemHours`', () async {
      // TODO
    });

    // Indicates if the system event is 'Start of Regular Market Hours' (R).  This message indicates that DAY and GTX orders, as well as market orders and pegged orders,   are available for execution on IEX.
    // bool isSystemEventStartOfRegularMarketHours
    test('to test the property `isSystemEventStartOfRegularMarketHours`', () async {
      // TODO
    });

    // Indicates if the system event is 'End of Regular Market Hours' (M).  This message indicates that DAY orders, market orders, and pegged orders   are no longer accepted by IEX.
    // bool isSystemEventEndOfRegularMarketHours
    test('to test the property `isSystemEventEndOfRegularMarketHours`', () async {
      // TODO
    });

    // Indicates if the system event is 'End of System Hours' (E).  This message indicates that IEX is now closed and will not accept   any new orders during this trading session. It is still possible   to receive messages after the end of day.
    // bool isSystemEventEndOfSystemHours
    test('to test the property `isSystemEventEndOfSystemHours`', () async {
      // TODO
    });

    // Indicates if the system event is 'End of Messages' (C).  This is always the last message sent in any trading session.
    // bool isSystemEventEndOfMessages
    test('to test the property `isSystemEventEndOfMessages`', () async {
      // TODO
    });

  });
}
