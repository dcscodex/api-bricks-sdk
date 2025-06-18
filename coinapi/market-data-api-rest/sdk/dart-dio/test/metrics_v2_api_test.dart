import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for MetricsV2Api
void main() {
  final instance = Openapi().getMetricsV2Api();

  group(MetricsV2Api, () {
    // Historical metrics for the asset
    //
    // Get asset metrics history.
    //
    //Future<BuiltList<JsonObject>> v2MetricsAssetHistoryGet(String metricId, String assetId, { DateTime timeStart, DateTime timeEnd, String timeFormat, String periodId, int limit }) async
    test('test v2MetricsAssetHistoryGet', () async {
      // TODO
    });

    // Listing of metrics available for specific asset
    //
    // Get all metrics that are actually available for the specified asset.
    //
    //Future<BuiltList<V1MetricInfo>> v2MetricsAssetListingGet(String assetId) async
    test('test v2MetricsAssetListingGet', () async {
      // TODO
    });

    // Historical metrics for the chain
    //
    // Get chain metrics history.
    //
    //Future<BuiltList<JsonObject>> v2MetricsChainHistoryGet(String metricId, String chainId, { DateTime timeStart, DateTime timeEnd, String timeFormat, String periodId, int limit }) async
    test('test v2MetricsChainHistoryGet', () async {
      // TODO
    });

    // Listing of metrics available for specific chain
    //
    // Get all metrics that are actually available for the specified blockchain chain.
    //
    //Future<BuiltList<V1MetricInfo>> v2MetricsChainListingGet(String chainId) async
    test('test v2MetricsChainListingGet', () async {
      // TODO
    });

    // Historical metrics for the exchange
    //
    // Get exchange metrics history.
    //
    //Future<BuiltList<JsonObject>> v2MetricsExchangeHistoryGet(String metricId, String exchangeId, { DateTime timeStart, DateTime timeEnd, String timeFormat, String periodId, int limit }) async
    test('test v2MetricsExchangeHistoryGet', () async {
      // TODO
    });

    // Listing of metrics available for specific exchange
    //
    // Get all metrics that are actually available for the specified exchange.
    //
    //Future<BuiltList<V1MetricInfo>> v2MetricsExchangeListingGet(String exchangeId) async
    test('test v2MetricsExchangeListingGet', () async {
      // TODO
    });

    // Listing of all supported metrics
    //
    // Get all metrics available in the system.
    //
    //Future<BuiltList<V1MetricInfo>> v2MetricsListingGet() async
    test('test v2MetricsListingGet', () async {
      // TODO
    });

  });
}
