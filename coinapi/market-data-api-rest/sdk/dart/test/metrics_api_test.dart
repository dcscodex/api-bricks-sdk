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


/// tests for MetricsApi
void main() {
  // final instance = MetricsApi();

  group('tests for MetricsApi', () {
    // Current metrics for given asset
    //
    // Get current asset metrics.
    //
    //Future<List<V1GeneralData>> v1MetricsAssetCurrentGet({ String metricId, String assetId, String assetIdExternal, String exchangeId }) async
    test('test v1MetricsAssetCurrentGet', () async {
      // TODO
    });

    // Historical metrics for asset
    //
    // Get asset metrics history.
    //
    //Future<List<V1MetricData>> v1MetricsAssetHistoryGet(String metricId, String exchangeId, { String assetId, String assetIdExternal, DateTime timeStart, DateTime timeEnd, String timeFormat, String periodId, int limit }) async
    test('test v1MetricsAssetHistoryGet', () async {
      // TODO
    });

    // Listing of all supported metrics for asset
    //
    // Get data metrics for asset.
    //
    //Future<List<V1ListingItem>> v1MetricsAssetListingGet({ String metricId, String exchangeId, String chainId, String networkId, String assetId, String assetIdExternal }) async
    test('test v1MetricsAssetListingGet', () async {
      // TODO
    });

    // Current metrics for given exchange
    //
    // Get current exchange metrics values.
    //
    //Future<List<V1GeneralData>> v1MetricsExchangeCurrentGet(String exchangeId, { String metricId }) async
    test('test v1MetricsExchangeCurrentGet', () async {
      // TODO
    });

    // Historical metrics for the exchange
    //
    // Get exchange metrics history.
    //
    //Future<List<V1MetricData>> v1MetricsExchangeHistoryGet(String metricId, String exchangeId, { DateTime timeStart, DateTime timeEnd, String timeFormat, String periodId, int limit }) async
    test('test v1MetricsExchangeHistoryGet', () async {
      // TODO
    });

    // Listing of all supported exchange metrics
    //
    // Get data metrics for exchange.
    //
    //Future<List<V1ListingItem>> v1MetricsExchangeListingGet(String exchangeId, { String metricId }) async
    test('test v1MetricsExchangeListingGet', () async {
      // TODO
    });

    // Listing of all supported metrics by CoinAPI
    //
    // Get all data metrics.
    //
    //Future<List<V1Metric>> v1MetricsListingGet() async
    test('test v1MetricsListingGet', () async {
      // TODO
    });

    // Current metrics for given symbol
    //
    // Get current symbol metrics.
    //
    //Future<List<V1GeneralData>> v1MetricsSymbolCurrentGet({ String metricId, String symbolId, String exchangeId }) async
    test('test v1MetricsSymbolCurrentGet', () async {
      // TODO
    });

    // Historical metrics for symbol
    //
    // Get symbol metrics history.
    //
    //Future<List<V1MetricData>> v1MetricsSymbolHistoryGet(String metricId, String symbolId, { DateTime timeStart, DateTime timeEnd, String timeFormat, String periodId, int limit }) async
    test('test v1MetricsSymbolHistoryGet', () async {
      // TODO
    });

    // Listing of all supported metrics for symbol
    //
    // Get data metrics for symbol.
    //
    //Future<List<V1ListingItem>> v1MetricsSymbolListingGet({ String metricId, String exchangeId, String symbolId }) async
    test('test v1MetricsSymbolListingGet', () async {
      // TODO
    });

  });
}
