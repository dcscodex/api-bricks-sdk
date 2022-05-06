import 'package:jaguar_retrofit/annotations/annotations.dart';
import 'package:jaguar_retrofit/jaguar_retrofit.dart';
import 'package:jaguar_serializer/jaguar_serializer.dart';
import 'package:jaguar_mimetype/jaguar_mimetype.dart';
import 'dart:async';


part 'certificate_api.jretro.dart';

@GenApiClient()
class CertificateApi extends ApiClient with _$CertificateApiClient {
    final Route base;
    final Map<String, CodecRepo> converters;
    final Duration timeout;

    CertificateApi({this.base, this.converters, this.timeout = const Duration(minutes: 2)});

    /// Get authentication certificate
    ///
    /// Providing PEM file with the Private Key, Public Key and the Certificate to authenticate to the EMS API.
    @GetReq(path: "/v1/certificate/pem", metadata: {"auth": [ {"type": "apiKey", "name": "APIKeyHeader", "keyName": "X-CoinAPI-Key", "where": "header" },  {"type": "apiKey", "name": "APIKeyQueryParam", "keyName": "apikey", "where": "query" }]})
    Future<String> certificate(
        ) {
        return super.certificate(

        ).timeout(timeout);
    }


}
