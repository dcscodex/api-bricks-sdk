//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class AccountApi {
  AccountApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Delete account
  ///
  /// Delete specific exchange account maintained by the EMS API for your subscription.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [List<String>] exchangeId (required):
  ///   Exchange identifier of the account to delete
  Future<Response> deleteAccountWithHttpInfo(List<String> exchangeId,) async {
    // Verify required params are set.
    if (exchangeId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: exchangeId');
    }

    // ignore: prefer_const_declarations
    final path = r'/v1/accounts';

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_convertParametersForCollectionFormat('multi', 'exchange_id', exchangeId));

    const authNames = <String>['APIKeyHeader', 'APIKeyQueryParam'];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Delete account
  ///
  /// Delete specific exchange account maintained by the EMS API for your subscription.
  ///
  /// Parameters:
  ///
  /// * [List<String>] exchangeId (required):
  ///   Exchange identifier of the account to delete
  Future<void> deleteAccount(List<String> exchangeId,) async {
    final response = await deleteAccountWithHttpInfo(exchangeId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Delete all accounts
  ///
  /// Delete all exchange accounts maintained by the EMS API for your subscription.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> deleteAccountAllWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/accounts/all';

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>['APIKeyHeader', 'APIKeyQueryParam'];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Delete all accounts
  ///
  /// Delete all exchange accounts maintained by the EMS API for your subscription.
  Future<void> deleteAccountAll() async {
    final response = await deleteAccountAllWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get accounts
  ///
  /// Get all accounts maintained for your subscription in the EMS API.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [List<String>] filterExchangeId:
  ///   Exchange id of the specific account to provide single account instead of the list of all accounts
  Future<Response> getAccountWithHttpInfo({ List<String> filterExchangeId, }) async {
    // Verify required params are set.

    // ignore: prefer_const_declarations
    final path = r'/v1/accounts';

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (filterExchangeId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('multi', 'filter_exchange_id', filterExchangeId));
    }

    const authNames = <String>['APIKeyHeader', 'APIKeyQueryParam'];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Get accounts
  ///
  /// Get all accounts maintained for your subscription in the EMS API.
  ///
  /// Parameters:
  ///
  /// * [List<String>] filterExchangeId:
  ///   Exchange id of the specific account to provide single account instead of the list of all accounts
  Future<List<GetAccount>> getAccount({ List<String> filterExchangeId, }) async {
    final response = await getAccountWithHttpInfo( filterExchangeId: filterExchangeId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<GetAccount>') as List)
        .cast<GetAccount>()
        .toList(growable: false);

    }
    return Future<List<GetAccount>>.value();
  }

  /// Add or update account
  ///
  /// Add new or update existing exchange account for your subscription in the EMS API.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [AccountData] body (required):
  ///   Exchange account object that needs to be add/update to the EMS
  Future<Response> persistAccountWithHttpInfo(AccountData body,) async {
    // Verify required params are set.
    if (body == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: body');
    }

    // ignore: prefer_const_declarations
    final path = r'/v1/accounts';

    // ignore: prefer_final_locals
    Object postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>['APIKeyHeader', 'APIKeyQueryParam'];
    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Add or update account
  ///
  /// Add new or update existing exchange account for your subscription in the EMS API.
  ///
  /// Parameters:
  ///
  /// * [AccountData] body (required):
  ///   Exchange account object that needs to be add/update to the EMS
  Future<void> persistAccount(AccountData body,) async {
    final response = await persistAccountWithHttpInfo(body,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
