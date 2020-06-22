import 'package:jaguar_retrofit/annotations/annotations.dart';
import 'package:jaguar_retrofit/jaguar_retrofit.dart';
import 'package:jaguar_serializer/jaguar_serializer.dart';
import 'package:jaguar_mimetype/jaguar_mimetype.dart';
import 'dart:async';

import 'package:openapi/model/balance.dart';

part 'balances_api.jretro.dart';

@GenApiClient()
class BalancesApi extends ApiClient with _$BalancesApiClient {
    final Route base;
    final Map<String, CodecRepo> converters;
    final Duration timeout;

    BalancesApi({this.base, this.converters, this.timeout = const Duration(minutes: 2)});

    /// Get balances
    ///
    /// Returns all of your balances, including available balance.
    @GetReq(path: "/v1/balances")
    Future<List<Balance>> v1BalancesGet(
        
            @QueryParam("exchange_id") String exchangeId
        ) {
        return super.v1BalancesGet(
        
        exchangeId

        ).timeout(timeout);
    }


}
