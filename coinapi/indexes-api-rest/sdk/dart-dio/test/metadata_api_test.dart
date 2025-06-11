import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for MetadataApi
void main() {
  final instance = Openapi().getMetadataApi();

  group(MetadataApi, () {
    // List all exchanges by exchange_id
    //
    //Future<BuiltList<MetadataExchange>> apiMetadataExchangesExchangeIdGet(String exchangeId) async
    test('test apiMetadataExchangesExchangeIdGet', () async {
      // TODO
    });

    // List all exchanges
    //
    // Get a detailed list of exchanges provided by the system.              :::info Properties of the output are providing aggregated information from across all symbols related to the specific exchange. If you need to calculate your aggregation (e.g., limiting only the particular type of symbols), you should use /v1/symbols endpoint as a data source. :::
    //
    //Future<BuiltList<MetadataExchange>> apiMetadataExchangesGet({ String filterExchangeId }) async
    test('test apiMetadataExchangesGet', () async {
      // TODO
    });

  });
}
