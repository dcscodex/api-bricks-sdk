import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for ExternalMetricsApi
void main() {
  final instance = Openapi().getExternalMetricsApi();

  group(ExternalMetricsApi, () {
    // Historical metrics for the asset
    //
    // Get asset metrics history.
    //
    //Future<BuiltList<JsonObject>> v1ExternalmetricsAssetHistoryGet(String metricId, String assetId, { DateTime timeStart, DateTime timeEnd, String timeFormat, String periodId, int limit }) async
    test('test v1ExternalmetricsAssetHistoryGet', () async {
      // TODO
    });

    // Listing of metrics available for specific asset
    //
    // Get all metrics that are actually available for the specified asset.
    //
    //Future<BuiltList<V1MetricInfo>> v1ExternalmetricsAssetListingGet(String assetId) async
    test('test v1ExternalmetricsAssetListingGet', () async {
      // TODO
    });

    // Historical metrics for the chain
    //
    // Get chain metrics history.
    //
    //Future<BuiltList<JsonObject>> v1ExternalmetricsChainHistoryGet(String metricId, String chainId, { DateTime timeStart, DateTime timeEnd, String timeFormat, String periodId, int limit }) async
    test('test v1ExternalmetricsChainHistoryGet', () async {
      // TODO
    });

    // Listing of metrics available for specific chain
    //
    // Get all metrics that are actually available for the specified blockchain chain.
    //
    //Future<BuiltList<V1MetricInfo>> v1ExternalmetricsChainListingGet(String chainId) async
    test('test v1ExternalmetricsChainListingGet', () async {
      // TODO
    });

    // Historical metrics for the exchange
    //
    // Get exchange metrics history.
    //
    //Future<BuiltList<JsonObject>> v1ExternalmetricsExchangeHistoryGet(String metricId, String exchangeId, { DateTime timeStart, DateTime timeEnd, String timeFormat, String periodId, int limit }) async
    test('test v1ExternalmetricsExchangeHistoryGet', () async {
      // TODO
    });

    // Listing of metrics available for specific exchange
    //
    // Get all metrics that are actually available for the specified exchange.
    //
    //Future<BuiltList<V1MetricInfo>> v1ExternalmetricsExchangeListingGet(String exchangeId) async
    test('test v1ExternalmetricsExchangeListingGet', () async {
      // TODO
    });

    // Listing of all supported metrics
    //
    // Get all metrics available in the system.
    //
    //Future<BuiltList<V1MetricInfo>> v1ExternalmetricsListingGet() async
    test('test v1ExternalmetricsListingGet', () async {
      // TODO
    });

  });
}
