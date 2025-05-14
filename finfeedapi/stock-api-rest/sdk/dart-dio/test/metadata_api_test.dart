import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for MetadataApi
void main() {
  final instance = Openapi().getMetadataApi();

  group(MetadataApi, () {
    // List of exchanges
    //
    //Future<BuiltList<FinFeedAPIExchangeModel>> v1ExchangesGet() async
    test('test v1ExchangesGet', () async {
      // TODO
    });

    // List of symbols for the exchange
    //
    //Future<BuiltList<FinFeedAPISymbolModel>> v1SymbolsExchangeIdGet(String exchangeId) async
    test('test v1SymbolsExchangeIdGet', () async {
      // TODO
    });

  });
}
