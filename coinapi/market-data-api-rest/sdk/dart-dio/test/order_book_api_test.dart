import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for OrderBookApi
void main() {
  final instance = Openapi().getOrderBookApi();

  group(OrderBookApi, () {
    // Get current order book
    //
    // Retrieves the current order book for the specified symbol.
    //
    //Future<V1OrderBookBase> v1OrderbooksSymbolIdCurrentGet(String symbolId, { int limitLevels }) async
    test('test v1OrderbooksSymbolIdCurrentGet', () async {
      // TODO
    });

    // Current depth of the order book
    //
    // Retrieves the current depth of the order book for the specified symbol.
    //
    //Future<V1OrderBookDepth> v1OrderbooksSymbolIdDepthCurrentGet(String symbolId, { int limitLevels }) async
    test('test v1OrderbooksSymbolIdDepthCurrentGet', () async {
      // TODO
    });

    // Historical data
    //
    // Get historical order book snapshots for a specific symbol within time range, returned in time ascending order.                :::info  The historical order book data via the REST API is currently limited by a number of updates and to the maximum number of 20 levels.  :::    :::warning  The 'time_start' and 'time_end' parameters must be from the same day as this endpoint provides intraday data only for specific day.  Please use the 'date' parameter instead for querying data for a specific day without filter.  :::
    //
    //Future<BuiltList<V1OrderBook>> v1OrderbooksSymbolIdHistoryGet(String symbolId, { String date, String timeStart, String timeEnd, int limit, int limitLevels }) async
    test('test v1OrderbooksSymbolIdHistoryGet', () async {
      // TODO
    });

    // Latest data
    //
    // Get latest order book snapshots for a specific symbol, returned in time descending order.                :::info  The historical order book data via the REST API is currently limited by a number of updates and to the maximum number of 20 levels.  :::
    //
    //Future<BuiltList<V1OrderBook>> v1OrderbooksSymbolIdLatestGet(String symbolId, { int limit, int limitLevels }) async
    test('test v1OrderbooksSymbolIdLatestGet', () async {
      // TODO
    });

  });
}
