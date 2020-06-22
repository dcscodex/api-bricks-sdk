import 'package:jaguar_serializer/jaguar_serializer.dart';


part 'cancel_all_order.jser.dart';

class CancelAllOrder {
   /* Exchange name */
  @Alias('exchange_id', isNullable: false,  )
  final String exchangeId;
  

  CancelAllOrder(
      

{
     this.exchangeId = null 
    
    }
  );

  @override
  String toString() {
    return 'CancelAllOrder[exchangeId=$exchangeId, ]';
  }
}

@GenSerializer(nullableFields: true)
class CancelAllOrderSerializer extends Serializer<CancelAllOrder> with _$CancelAllOrderSerializer {

}

