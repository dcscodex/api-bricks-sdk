import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for ExternalMetricsApi
void main() {
  final instance = Openapi().getExternalMetricsApi();

  group(ExternalMetricsApi, () {
    // Historical metrics for the asset from external sources
    //
    // Get asset metrics history from external data providers. Data is typically aggregated daily.
    //
    //Future<BuiltList<JsonObject>> v1ExternalmetricsAssetHistoryGet(String metricId, String assetId, { DateTime timeStart, DateTime timeEnd, String timeFormat, String periodId, int limit }) async
    test('test v1ExternalmetricsAssetHistoryGet', () async {
      // TODO
    });

    // Listing of metrics available for specific asset
    //
    // Get all metrics that are actually available for the specified asset from external providers.
    //
    //Future<BuiltList<V1MetricInfo>> v1ExternalmetricsAssetListingGet(String assetId) async
    test('test v1ExternalmetricsAssetListingGet', () async {
      // TODO
    });

    // Listing of all supported external assets
    //
    // Get all assets (primarily stablecoins) supported by external data providers.
    //
    //Future<BuiltList<V1ExternalAsset>> v1ExternalmetricsAssetsGet() async
    test('test v1ExternalmetricsAssetsGet', () async {
      // TODO
    });

    // Historical metrics for the chain from external sources
    //
    // Get chain metrics history from external data providers. Data is typically aggregated daily.
    //
    //Future<BuiltList<JsonObject>> v1ExternalmetricsChainHistoryGet(String metricId, String chainId, { DateTime timeStart, DateTime timeEnd, String timeFormat, String periodId, int limit }) async
    test('test v1ExternalmetricsChainHistoryGet', () async {
      // TODO
    });

    // Listing of metrics available for specific chain
    //
    // Get all metrics that are actually available for the specified blockchain chain from external providers.
    //
    //Future<BuiltList<V1MetricInfo>> v1ExternalmetricsChainListingGet(String chainId) async
    test('test v1ExternalmetricsChainListingGet', () async {
      // TODO
    });

    // Listing of all supported external chains
    //
    // Get all blockchain chains supported by external data providers.
    //
    //Future<BuiltList<V1Chain>> v1ExternalmetricsChainsGet() async
    test('test v1ExternalmetricsChainsGet', () async {
      // TODO
    });

    // Historical metrics for the exchange from both external and internal sources
    //
    // Get exchange metrics history from external data providers or internal sources based on metric type.
    //
    //Future<BuiltList<JsonObject>> v1ExternalmetricsExchangeHistoryGet(String metricId, String exchangeId, { DateTime timeStart, DateTime timeEnd, String timeFormat, String periodId, int limit }) async
    test('test v1ExternalmetricsExchangeHistoryGet', () async {
      // TODO
    });

    // Listing of metrics available for specific exchange (both external and generic)
    //
    // Get all metrics that are actually available for the specified exchange from both external providers and internal sources.
    //
    //Future<BuiltList<V1MetricInfo>> v1ExternalmetricsExchangeListingGet(String exchangeId) async
    test('test v1ExternalmetricsExchangeListingGet', () async {
      // TODO
    });

    // Listing of all supported external exchanges
    //
    // Get all exchanges that have mapping to external data providers for metrics that actually have sources.  Only returns exchanges that are properly mapped to external protocols for metrics with defined sources.
    //
    //Future<BuiltList<V1ExternalExchange>> v1ExternalmetricsExchangesGet() async
    test('test v1ExternalmetricsExchangesGet', () async {
      // TODO
    });

    // Listing of all supported metrics (both external and generic)
    //
    // Get all metrics available from external data providers and internal generic metrics.  External metrics have detailed descriptions, while generic metrics are marked as such.
    //
    //Future<BuiltList<V1MetricInfo>> v1ExternalmetricsListingGet() async
    test('test v1ExternalmetricsListingGet', () async {
      // TODO
    });

  });
}
