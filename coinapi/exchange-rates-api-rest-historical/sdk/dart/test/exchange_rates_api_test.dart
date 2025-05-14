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
    //Future<V1ExchangeRate> getSpecificRate(String assetIdBase, String assetIdQuote, { String time }) async
    test('test getSpecificRate', () async {
      // TODO
    });

    // Timeseries data
    //
    // Get the historical exchange rates between two assets in the form of the timeseries.
    //
    //Future<List<V1ExchangeRatesTimeseriesItem>> v1ExchangerateAssetIdBaseAssetIdQuoteHistoryGet(String assetIdBase, String assetIdQuote, { String periodId, String timeStart, String timeEnd, int limit }) async
    test('test v1ExchangerateAssetIdBaseAssetIdQuoteHistoryGet', () async {
      // TODO
    });

    // Get all current rates
    //
    // Get the current exchange rate between requested asset and all other assets.                :::info  If you are using an exchange rate for mission-critical operations, then for best reliability, you should measure the difference between current time and the time returned from the response to ensure that value of the difference between those meets your internal requirements.  :::                :::info  You can invert the rates by using Y = 1 / X equation, for example BTC/USD = 1 / (USD/BTC);  :::
    //
    //Future<V1ExchangeRates> v1ExchangerateAssetIdBaseGet(String assetIdBase, { String filterAssetId, bool invert, String time }) async
    test('test v1ExchangerateAssetIdBaseGet', () async {
      // TODO
    });

    // Timeseries periods
    //
    // You can also obtain historical exchange rates of any asset pair, grouped into time periods.  Get full list of supported time periods available for requesting exchange rates historical timeseries data.                ## Timeseries periods  Time unit | Period identifiers  --- | ---  Second | 1SEC, 2SEC, 3SEC, 4SEC, 5SEC, 6SEC, 10SEC, 15SEC, 20SEC, 30SEC  Minute | 1MIN, 2MIN, 3MIN, 4MIN, 5MIN, 6MIN, 10MIN, 15MIN, 20MIN, 30MIN  Hour | 1HRS, 2HRS, 3HRS, 4HRS, 6HRS, 8HRS, 12HRS  Day | 1DAY, 2DAY, 3DAY, 5DAY, 7DAY, 10DAY
    //
    //Future<List<V1TimeseriesPeriod>> v1ExchangerateHistoryPeriodsGet() async
    test('test v1ExchangerateHistoryPeriodsGet', () async {
      // TODO
    });

  });
}
