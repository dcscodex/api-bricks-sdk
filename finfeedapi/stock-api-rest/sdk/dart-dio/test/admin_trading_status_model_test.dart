import 'package:test/test.dart';
import 'package:openapi/openapi.dart';

// tests for AdminTradingStatusModel
void main() {
  final instance = AdminTradingStatusModelBuilder();
  // TODO add properties to the builder and call build()

  group(AdminTradingStatusModel, () {
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

    // Time when the trading status was recorded as DateTime
    // DateTime timestamp
    test('to test the property `timestamp`', () async {
      // TODO
    });

    // Gets whether the security is currently trading on IEX
    // bool isTradingLive
    test('to test the property `isTradingLive`', () async {
      // TODO
    });

    // Gets whether the security is halted across all US equity markets
    // bool isTradingHalted
    test('to test the property `isTradingHalted`', () async {
      // TODO
    });

    // Gets whether the security is in Order Acceptance Period on IEX
    // bool isTradingInOrderAcceptancePeriod
    test('to test the property `isTradingInOrderAcceptancePeriod`', () async {
      // TODO
    });

    // Gets whether the security is paused and in Order Acceptance Period on IEX
    // bool isTradingPaused
    test('to test the property `isTradingPaused`', () async {
      // TODO
    });

    // Gets whether the halt reason is News Pending
    // bool isReasonHaltNewsPending
    test('to test the property `isReasonHaltNewsPending`', () async {
      // TODO
    });

    // Gets whether the halt reason is IPO Not Yet Trading
    // bool isReasonIpoNotYetTrading
    test('to test the property `isReasonIpoNotYetTrading`', () async {
      // TODO
    });

    // Gets whether the halt reason is IPO Deferred
    // bool isReasonIpoDeferred
    test('to test the property `isReasonIpoDeferred`', () async {
      // TODO
    });

    // Gets whether the order acceptance period reason is Halt News Dissemination
    // bool isReasonHaltNewsDissemination
    test('to test the property `isReasonHaltNewsDissemination`', () async {
      // TODO
    });

    // Gets whether the order acceptance period reason is IPO Order Acceptance Period
    // bool isReasonIpoOrderAcceptancePeriod
    test('to test the property `isReasonIpoOrderAcceptancePeriod`', () async {
      // TODO
    });

    // Gets whether the order acceptance period reason is IPO Pre-Launch Period
    // bool isReasonIpoPreLaunchPeriod
    test('to test the property `isReasonIpoPreLaunchPeriod`', () async {
      // TODO
    });

    // Gets whether the order acceptance period reason is Market-Wide Circuit Breaker Level 1 – Breached
    // bool isReasonMarketWideCircuitBreakerLevel1
    test('to test the property `isReasonMarketWideCircuitBreakerLevel1`', () async {
      // TODO
    });

    // Gets whether the order acceptance period reason is Market-Wide Circuit Breaker Level 2 – Breached
    // bool isReasonMarketWideCircuitBreakerLevel2
    test('to test the property `isReasonMarketWideCircuitBreakerLevel2`', () async {
      // TODO
    });

    // Gets whether the halt reason is Market-Wide Circuit Breaker Level 3 – Breached
    // bool isReasonMarketWideCircuitBreakerLevel3
    test('to test the property `isReasonMarketWideCircuitBreakerLevel3`', () async {
      // TODO
    });

    // Gets whether the reason is Not Applicable
    // bool isReasonNotApplicable
    test('to test the property `isReasonNotApplicable`', () async {
      // TODO
    });

    // Gets whether the halt reason is Not Available
    // bool isReasonNotAvailable
    test('to test the property `isReasonNotAvailable`', () async {
      // TODO
    });

  });
}
