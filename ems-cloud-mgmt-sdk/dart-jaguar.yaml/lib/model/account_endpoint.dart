import 'package:jaguar_serializer/jaguar_serializer.dart';


part 'account_endpoint.jser.dart';

class AccountEndpoint {
   /* Exchange identifier and optional tag identifying specific account configured when the software will be managing multiple accounts on the same exchange; for eg:  <code>BITSTAMP</code> <code>BITSTAMP/7c177641-74bd-4dbe-9b01-2497c12a5f70`</code> <code>BITSTAMP/2574</code> Allowed separators between the exchange identifier and the tag: <code>~/.,:;\\!@#$%^&*-_+=.</code>  */
  @Alias('exchange_id', isNullable: false,  )
  final String exchangeId;
   /* Location identifier */
  @Alias('location_id', isNullable: false,  )
  final String locationId;
   /* Endpoint schema */
  @Alias('endpoint_schema', isNullable: false,  )
  final String endpointSchema;
   /* Endpoint host */
  @Alias('endpoint_host', isNullable: false,  )
  final String endpointHost;
   /* Endpoint URL */
  @Alias('endpoint_url', isNullable: false,  )
  final String endpointUrl;
  

  AccountEndpoint(
      

{
     this.exchangeId = null,  
     this.locationId = null,  
     this.endpointSchema = null,  
     this.endpointHost = null,  
     this.endpointUrl = null 
    
    }
  );

  @override
  String toString() {
    return 'AccountEndpoint[exchangeId=$exchangeId, locationId=$locationId, endpointSchema=$endpointSchema, endpointHost=$endpointHost, endpointUrl=$endpointUrl, ]';
  }
}

@GenSerializer(nullableFields: true)
class AccountEndpointSerializer extends Serializer<AccountEndpoint> with _$AccountEndpointSerializer {

}

