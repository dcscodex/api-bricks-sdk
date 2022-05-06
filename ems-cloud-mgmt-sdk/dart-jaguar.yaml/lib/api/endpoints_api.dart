import 'package:jaguar_retrofit/annotations/annotations.dart';
import 'package:jaguar_retrofit/jaguar_retrofit.dart';
import 'package:jaguar_serializer/jaguar_serializer.dart';
import 'package:jaguar_mimetype/jaguar_mimetype.dart';
import 'dart:async';

import 'package:openapi/model/account_endpoint.dart';

part 'endpoints_api.jretro.dart';

@GenApiClient()
class EndpointsApi extends ApiClient with _$EndpointsApiClient {
    final Route base;
    final Map<String, CodecRepo> converters;
    final Duration timeout;

    EndpointsApi({this.base, this.converters, this.timeout = const Duration(minutes: 2)});

    /// Get API endpoints
    ///
    /// Get all API endpoints that the EMS API expose for your subscription.
    @GetReq(path: "/v1/endpoints", metadata: {"auth": [ {"type": "apiKey", "name": "APIKeyHeader", "keyName": "X-CoinAPI-Key", "where": "header" },  {"type": "apiKey", "name": "APIKeyQueryParam", "keyName": "apikey", "where": "query" }]})
    Future<List<AccountEndpoint>> endpoints(
        
            @QueryParam("filter_exchange_id") List<String> filterExchangeId
        ) {
        return super.endpoints(
        
        filterExchangeId

        ).timeout(timeout);
    }


}
