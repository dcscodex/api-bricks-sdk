import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for TradesApi
void main() {
  final instance = Openapi().getTradesApi();

  group(TradesApi, () {
    // Latest data
    //
    // Get latest trades executed up to 1 minute ago. Latest data is always returned in time descending order.
    //
    //Future<BuiltList<V1Trade>> v1TradesLatestGet({ String filterSymbolId, bool includeId, int limit }) async
    test('test v1TradesLatestGet', () async {
      // TODO
    });

    // Historical data
    //
    // Get history transactions from specific symbol, returned in time ascending order.  :::warning The 'time_start' and 'time_end' parameters must be from the same day as this endpoint provides intraday data only for specific day. Please use the 'date' parameter instead for querying data for a specific day without filter. :::
    //
    //Future<BuiltList<V1Trade>> v1TradesSymbolIdHistoryGet(String symbolId, { String date, String timeStart, String timeEnd, int limit, bool includeId }) async
    test('test v1TradesSymbolIdHistoryGet', () async {
      // TODO
    });

    // Latest data by symbol_id
    //
    // Get latest trades executed up to 1 minute ago. Latest data is always returned in time descending order.
    //
    //Future<BuiltList<V1Trade>> v1TradesSymbolIdLatestGet(String symbolId, { int limit, bool includeId }) async
    test('test v1TradesSymbolIdLatestGet', () async {
      // TODO
    });

  });
}
