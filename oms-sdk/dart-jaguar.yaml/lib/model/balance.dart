import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:openapi/model/balance_data.dart';

part 'balance.jser.dart';

class Balance {
   /* Result type. */
  @Alias('type', isNullable: false,  )
  final String type;
   /* Exchange name. */
  @Alias('exchange_name', isNullable: false,  )
  final String exchangeName;
  
  @Alias('data', isNullable: false,  )
  final List<BalanceData> data;
  

  Balance(
      

{
     this.type = null,  
     this.exchangeName = null,  
     this.data = const [] 
    
    }
  );

  @override
  String toString() {
    return 'Balance[type=$type, exchangeName=$exchangeName, data=$data, ]';
  }
}

@GenSerializer(nullableFields: true)
class BalanceSerializer extends Serializer<Balance> with _$BalanceSerializer {

}

