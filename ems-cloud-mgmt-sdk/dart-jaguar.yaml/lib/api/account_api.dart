import 'package:jaguar_retrofit/annotations/annotations.dart';
import 'package:jaguar_retrofit/jaguar_retrofit.dart';
import 'package:jaguar_serializer/jaguar_serializer.dart';
import 'package:jaguar_mimetype/jaguar_mimetype.dart';
import 'dart:async';

import 'package:openapi/model/get_account.dart';
import 'package:openapi/model/account_data.dart';

part 'account_api.jretro.dart';

@GenApiClient()
class AccountApi extends ApiClient with _$AccountApiClient {
    final Route base;
    final Map<String, CodecRepo> converters;
    final Duration timeout;

    AccountApi({this.base, this.converters, this.timeout = const Duration(minutes: 2)});

    /// Delete account
    ///
    /// Delete specific exchange account maintained by the EMS API for your subscription.
    @DeleteReq(path: "/v1/accounts", metadata: {"auth": [ {"type": "apiKey", "name": "APIKeyHeader", "keyName": "X-CoinAPI-Key", "where": "header" },  {"type": "apiKey", "name": "APIKeyQueryParam", "keyName": "apikey", "where": "query" }]})
    Future<void> deleteAccount(
        
            @QueryParam("exchange_id") List<String> exchangeId
        ) {
        return super.deleteAccount(
        
        exchangeId

        ).timeout(timeout);
    }

    /// Delete all accounts
    ///
    /// Delete all exchange accounts maintained by the EMS API for your subscription.
    @DeleteReq(path: "/v1/accounts/all", metadata: {"auth": [ {"type": "apiKey", "name": "APIKeyHeader", "keyName": "X-CoinAPI-Key", "where": "header" },  {"type": "apiKey", "name": "APIKeyQueryParam", "keyName": "apikey", "where": "query" }]})
    Future<void> deleteAccountAll(
        ) {
        return super.deleteAccountAll(

        ).timeout(timeout);
    }

    /// Get accounts
    ///
    /// Get all accounts maintained for your subscription in the EMS API.
    @GetReq(path: "/v1/accounts", metadata: {"auth": [ {"type": "apiKey", "name": "APIKeyHeader", "keyName": "X-CoinAPI-Key", "where": "header" },  {"type": "apiKey", "name": "APIKeyQueryParam", "keyName": "apikey", "where": "query" }]})
    Future<List<GetAccount>> getAccount(
        
            @QueryParam("filter_exchange_id") List<String> filterExchangeId
        ) {
        return super.getAccount(
        
        filterExchangeId

        ).timeout(timeout);
    }

    /// Add or update account
    ///
    /// Add new or update existing exchange account for your subscription in the EMS API.
    @PostReq(path: "/v1/accounts", metadata: {"auth": [ {"type": "apiKey", "name": "APIKeyHeader", "keyName": "X-CoinAPI-Key", "where": "header" },  {"type": "apiKey", "name": "APIKeyQueryParam", "keyName": "apikey", "where": "query" }]})
    Future<void> persistAccount(
            
             @AsJson() AccountData body
        ) {
        return super.persistAccount(

        
        body
        ).timeout(timeout);
    }


}
