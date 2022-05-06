import 'package:jaguar_retrofit/annotations/annotations.dart';
import 'package:jaguar_retrofit/jaguar_retrofit.dart';
import 'package:jaguar_serializer/jaguar_serializer.dart';
import 'package:jaguar_mimetype/jaguar_mimetype.dart';
import 'dart:async';

import 'package:openapi/model/exchange_login_require.dart';

part 'exchange_api.jretro.dart';

@GenApiClient()
class ExchangeApi extends ApiClient with _$ExchangeApiClient {
    final Route base;
    final Map<String, CodecRepo> converters;
    final Duration timeout;

    ExchangeApi({this.base, this.converters, this.timeout = const Duration(minutes: 2)});

    /// Get exchange configuration
    ///
    /// Get information about the required parameters or server site location of the exchanges supported in the EMS API.
    @GetReq(path: "/v1/exchanges", metadata: {"auth": [ {"type": "apiKey", "name": "APIKeyHeader", "keyName": "X-CoinAPI-Key", "where": "header" },  {"type": "apiKey", "name": "APIKeyQueryParam", "keyName": "apikey", "where": "query" }]})
    Future<List<ExchangeLoginRequire>> exchangeLoginRequire(
        ) {
        return super.exchangeLoginRequire(

        ).timeout(timeout);
    }


}
