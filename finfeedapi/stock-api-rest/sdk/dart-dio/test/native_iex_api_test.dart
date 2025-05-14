import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for NativeIEXApi
void main() {
  final instance = Openapi().getNativeIEXApi();

  group(NativeIEXApi, () {
    // Get Admin Messages
    //
    //Future<BuiltList<AdminAdminMessageModel>> v1NativeIexAdminMessagesSymbolGet(String symbol, DateTime date) async
    test('test v1NativeIexAdminMessagesSymbolGet', () async {
      // TODO
    });

    // Get System Events
    //
    //Future<BuiltList<AdminSystemEventModel>> v1NativeIexAdminSystemEventGet(DateTime date) async
    test('test v1NativeIexAdminSystemEventGet', () async {
      // TODO
    });

    // Get Level-1 Quotes
    //
    //Future<BuiltList<Level1QuoteUpdateModel>> v1NativeIexLevel1QuoteSymbolGet(String symbol, DateTime date) async
    test('test v1NativeIexLevel1QuoteSymbolGet', () async {
      // TODO
    });

    // Get Level-2 Price Level Book
    //
    //Future<BuiltList<Level2PriceLevelUpdateModel>> v1NativeIexLevel2PriceLevelUpdateSymbolGet(String symbol, DateTime date) async
    test('test v1NativeIexLevel2PriceLevelUpdateSymbolGet', () async {
      // TODO
    });

    // Get Level-3 Order Book
    //
    //Future<BuiltList<Level3OrderBookModel>> v1NativeIexLevel3OrderBookSymbolGet(String symbol, DateTime date) async
    test('test v1NativeIexLevel3OrderBookSymbolGet', () async {
      // TODO
    });

    // Get Trades
    //
    //Future<BuiltList<TradeTradeModel>> v1NativeIexTradeSymbolGet(String symbol, DateTime date) async
    test('test v1NativeIexTradeSymbolGet', () async {
      // TODO
    });

  });
}
