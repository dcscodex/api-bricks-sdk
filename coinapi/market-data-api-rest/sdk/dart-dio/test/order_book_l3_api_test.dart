import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for OrderBookL3Api
void main() {
  final instance = Openapi().getOrderBookL3Api();

  group(OrderBookL3Api, () {
    // Current order books
    //
    //Future<BuiltList<V1OrderBookBase>> v1Orderbooks3CurrentGet({ String filterSymbolId, int limitLevels }) async
    test('test v1Orderbooks3CurrentGet', () async {
      // TODO
    });

    // Current order book by symbol_id
    //
    // Retrieves the current order book for the specified symbol.
    //
    //Future<V1OrderBookBase> v1Orderbooks3SymbolIdCurrentGet(String symbolId, { int limitLevels }) async
    test('test v1Orderbooks3SymbolIdCurrentGet', () async {
      // TODO
    });

  });
}
