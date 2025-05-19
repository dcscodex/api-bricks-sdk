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


/// tests for ExchangeRatesApi
void main() {
  // final instance = ExchangeRatesApi();

  group('tests for ExchangeRatesApi', () {
    // Get specific rate
    //
    // Retrieves the exchange rate for a specific base and quote asset at a given time or the current rate.                :::info  If you are using an exchange rate for mission-critical operations, then for best reliability, you should measure the difference between current time and the time returned from the response to ensure that value of the difference between those meets your internal requirements.  :::
    //
    //Future<V1ExchangeRate> getSpecificRate(String assetIdBase, String assetIdQuote) async
    test('test getSpecificRate', () async {
      // TODO
    });

    // Get all current rates
    //
    // Get the current exchange rate between requested asset and all other assets.                :::info  If you are using an exchange rate for mission-critical operations, then for best reliability, you should measure the difference between current time and the time returned from the response to ensure that value of the difference between those meets your internal requirements.  :::                :::info  You can invert the rates by using Y = 1 / X equation, for example BTC/USD = 1 / (USD/BTC);  :::
    //
    //Future<V1ExchangeRates> v1ExchangerateAssetIdBaseGet(String assetIdBase, { String filterAssetId, bool invert }) async
    test('test v1ExchangerateAssetIdBaseGet', () async {
      // TODO
    });

  });
}
