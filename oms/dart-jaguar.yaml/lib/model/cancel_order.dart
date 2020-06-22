import 'package:jaguar_serializer/jaguar_serializer.dart';


part 'cancel_order.jser.dart';

class CancelOrder {
   /* Exchange name */
  @Alias('exchange_id', isNullable: false,  )
  final String exchangeId;
   /* Order Id */
  @Alias('exchange_order_id', isNullable: false,  )
  final String exchangeOrderId;
   /* Client order Id */
  @Alias('client_order_id', isNullable: false,  )
  final String clientOrderId;
  

  CancelOrder(
      

{
     this.exchangeId = null,  
     this.exchangeOrderId = null,  
     this.clientOrderId = null 
    
    }
  );

  @override
  String toString() {
    return 'CancelOrder[exchangeId=$exchangeId, exchangeOrderId=$exchangeOrderId, clientOrderId=$clientOrderId, ]';
  }
}

@GenSerializer(nullableFields: true)
class CancelOrderSerializer extends Serializer<CancelOrder> with _$CancelOrderSerializer {

}

