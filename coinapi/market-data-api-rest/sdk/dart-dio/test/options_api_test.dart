import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for OptionsApi
void main() {
  final instance = Openapi().getOptionsApi();

  group(OptionsApi, () {
    // Current data by Exchange
    //
    // Get current options data for a specific exchange.  Returns option data grouped by underlying asset, quote currency, and expiration time, with quotes for both calls and puts at each strike price.
    //
    //Future<BuiltList<OptionsOptionExchangeGroup>> v1OptionsExchangeIdCurrentGet(String exchangeId) async
    test('test v1OptionsExchangeIdCurrentGet', () async {
      // TODO
    });

  });
}
