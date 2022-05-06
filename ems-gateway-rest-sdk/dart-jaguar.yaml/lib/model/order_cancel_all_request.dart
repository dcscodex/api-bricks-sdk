import 'package:jaguar_serializer/jaguar_serializer.dart';


part 'order_cancel_all_request.jser.dart';

class OrderCancelAllRequest {
   /* Identifier of the exchange from which active orders should be canceled. */
  @Alias('exchange_id', isNullable: false,  )
  final String exchangeId;
  

  OrderCancelAllRequest(
      

{
    
     this.exchangeId = null 
    }
  );

  @override
  String toString() {
    return 'OrderCancelAllRequest[exchangeId=$exchangeId, ]';
  }
}

@GenSerializer(nullableFields: true)
class OrderCancelAllRequestSerializer extends Serializer<OrderCancelAllRequest> with _$OrderCancelAllRequestSerializer {

}

