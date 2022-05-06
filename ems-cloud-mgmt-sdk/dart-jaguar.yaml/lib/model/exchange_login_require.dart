import 'package:jaguar_serializer/jaguar_serializer.dart';


part 'exchange_login_require.jser.dart';

class ExchangeLoginRequire {
   /* Exchange identifier and optional tag identifying specific account configured when the software will be managing multiple accounts on the same exchange; for eg:  <code>BITSTAMP</code> <code>BITSTAMP/7c177641-74bd-4dbe-9b01-2497c12a5f70`</code> <code>BITSTAMP/2574</code> Allowed separators between the exchange identifier and the tag: <code>~/.,:;\\!@#$%^&*-_+=.</code>  */
  @Alias('exchange_id', isNullable: false,  )
  final String exchangeId;
   /* Location identifier */
  @Alias('location_id', isNullable: false,  )
  final String locationId;
   /* Parameters required to log into the exchange */
  @Alias('required_parameters', isNullable: false,  )
  final List<String> requiredParameters;
  

  ExchangeLoginRequire(
      

{
     this.exchangeId = null,  
     this.locationId = null,  
     this.requiredParameters = const [] 
    
    }
  );

  @override
  String toString() {
    return 'ExchangeLoginRequire[exchangeId=$exchangeId, locationId=$locationId, requiredParameters=$requiredParameters, ]';
  }
}

@GenSerializer(nullableFields: true)
class ExchangeLoginRequireSerializer extends Serializer<ExchangeLoginRequire> with _$ExchangeLoginRequireSerializer {

}

