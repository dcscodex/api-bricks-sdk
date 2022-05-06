import 'package:openapi/api.dart';
import 'package:test/test.dart';


/// tests for AccountApi
void main() {
  var instance = new AccountApi();

  group('tests for AccountApi', () {
    // Delete account
    //
    // Delete specific exchange account maintained by the EMS API for your subscription.
    //
    //Future deleteAccount(List<String> exchangeId) async
    test('test deleteAccount', () async {
      // TODO
    });

    // Delete all accounts
    //
    // Delete all exchange accounts maintained by the EMS API for your subscription.
    //
    //Future deleteAccountAll() async
    test('test deleteAccountAll', () async {
      // TODO
    });

    // Get accounts
    //
    // Get all accounts maintained for your subscription in the EMS API.
    //
    //Future<List<GetAccount>> getAccount({ List<String> filterExchangeId }) async
    test('test getAccount', () async {
      // TODO
    });

    // Add or update account
    //
    // Add new or update existing exchange account for your subscription in the EMS API.
    //
    //Future persistAccount(AccountData body) async
    test('test persistAccount', () async {
      // TODO
    });

  });
}
