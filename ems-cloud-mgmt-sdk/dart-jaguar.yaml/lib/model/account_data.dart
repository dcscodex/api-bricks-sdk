import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:openapi/model/key_value.dart';

part 'account_data.jser.dart';

class AccountData {
   /* Exchange identifier and optional tag identifying specific account configured when the software will be managing multiple accounts on the same exchange; for eg:  <code>BITSTAMP</code> <code>BITSTAMP/7c177641-74bd-4dbe-9b01-2497c12a5f70`</code> <code>BITSTAMP/2574</code> Allowed separators between the exchange identifier and the tag: <code>~/.,:;\\!@#$%^&*-_+=.</code>  */
  @Alias('exchange_id', isNullable: false,  )
  final String exchangeId;
   /* Parameters required to log into the exchange */
  @Alias('parameters', isNullable: false,  )
  final List<KeyValue> parameters;
  

  AccountData(
      

{
     this.exchangeId = null,  
     this.parameters = const [] 
    
    }
  );

  @override
  String toString() {
    return 'AccountData[exchangeId=$exchangeId, parameters=$parameters, ]';
  }
}

@GenSerializer(nullableFields: true)
class AccountDataSerializer extends Serializer<AccountData> with _$AccountDataSerializer {

}

