import 'package:jaguar_retrofit/annotations/annotations.dart';
import 'package:jaguar_retrofit/jaguar_retrofit.dart';
import 'package:jaguar_serializer/jaguar_serializer.dart';
import 'package:jaguar_mimetype/jaguar_mimetype.dart';
import 'dart:async';

import 'package:openapi/model/locations.dart';

part 'location_api.jretro.dart';

@GenApiClient()
class LocationApi extends ApiClient with _$LocationApiClient {
    final Route base;
    final Map<String, CodecRepo> converters;
    final Duration timeout;

    LocationApi({this.base, this.converters, this.timeout = const Duration(minutes: 2)});

    /// Get site locations
    ///
    /// This endpoint providing information about the server site locations supported in the EMS API.
    @GetReq(path: "/v1/locations", metadata: {"auth": [ {"type": "apiKey", "name": "APIKeyHeader", "keyName": "X-CoinAPI-Key", "where": "header" },  {"type": "apiKey", "name": "APIKeyQueryParam", "keyName": "apikey", "where": "query" }]})
    Future<List<Locations>> locations(
        ) {
        return super.locations(

        ).timeout(timeout);
    }


}
