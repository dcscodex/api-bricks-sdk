import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:openapi/model/balance_data.dart';

part 'balance.jser.dart';

class Balance {
   /* Exchange identifier used to identify the routing destination. */
  @Alias('exchange_id', isNullable: false,  )
  final String exchangeId;
  
  @Alias('data', isNullable: false,  )
  final List<BalanceData> data;
  

  Balance(
      

{
     this.exchangeId = null,  
     this.data = const [] 
    
    }
  );

  @override
  String toString() {
    return 'Balance[exchangeId=$exchangeId, data=$data, ]';
  }
}

@GenSerializer(nullableFields: true)
class BalanceSerializer extends Serializer<Balance> with _$BalanceSerializer {

}

