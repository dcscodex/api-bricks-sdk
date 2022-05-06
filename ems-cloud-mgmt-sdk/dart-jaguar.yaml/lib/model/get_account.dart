import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:openapi/model/key_value.dart';

part 'get_account.jser.dart';

class GetAccount {
   /* Exchange identifier and optional tag identifying specific account configured when the software will be managing multiple accounts on the same exchange; for eg:  <code>BITSTAMP</code> <code>BITSTAMP/7c177641-74bd-4dbe-9b01-2497c12a5f70`</code> <code>BITSTAMP/2574</code> Allowed separators between the exchange identifier and the tag: <code>~/.,:;\\!@#$%^&*-_+=.</code>  */
  @Alias('exchange_id', isNullable: false,  )
  final String exchangeId;
   /* Exchange specific configuration parameters */
  @Alias('parameters', isNullable: false,  )
  final List<KeyValue> parameters;
  

  GetAccount(
      

{
     this.exchangeId = null,  
     this.parameters = const [] 
    
    }
  );

  @override
  String toString() {
    return 'GetAccount[exchangeId=$exchangeId, parameters=$parameters, ]';
  }
}

@GenSerializer(nullableFields: true)
class GetAccountSerializer extends Serializer<GetAccount> with _$GetAccountSerializer {

}

