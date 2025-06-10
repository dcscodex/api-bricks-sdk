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


/// tests for QuotesApi
void main() {
  // final instance = QuotesApi();

  group('tests for QuotesApi', () {
    // Current data
    //
    // Get current quotes for all symbols or for a specific symbol.                :::info  When requesting current data for a specific symbol, output is not encapsulated into JSON array as only one item is returned.  :::
    //
    //Future<List<V1QuoteTrade>> v1QuotesCurrentGet({ String filterSymbolId }) async
    test('test v1QuotesCurrentGet', () async {
      // TODO
    });

    // Latest data
    //
    // Get latest updates of the quotes up to 1 minute ago. Latest data is always returned in time descending order.
    //
    //Future<List<V1Quote>> v1QuotesLatestGet({ String filterSymbolId, int limit }) async
    test('test v1QuotesLatestGet', () async {
      // TODO
    });

    // Current quotes for a specific symbol
    //
    //Future<V1QuoteTrade> v1QuotesSymbolIdCurrentGet(String symbolId) async
    test('test v1QuotesSymbolIdCurrentGet', () async {
      // TODO
    });

    // Historical data
    //
    // Get historical quote updates within requested time range, returned in time ascending order.    :::warning  The 'time_start' and 'time_end' parameters must be from the same day as this endpoint provides intraday data only for specific day.  Please use the 'date' parameter instead for querying data for a specific day without filter.  :::
    //
    //Future<List<V1Quote>> v1QuotesSymbolIdHistoryGet(String symbolId, { String date, String timeStart, String timeEnd, int limit }) async
    test('test v1QuotesSymbolIdHistoryGet', () async {
      // TODO
    });

    // Latest quote updates for a specific symbol
    //
    //Future<List<V1Quote>> v1QuotesSymbolIdLatestGet(String symbolId, { int limit }) async
    test('test v1QuotesSymbolIdLatestGet', () async {
      // TODO
    });

  });
}
