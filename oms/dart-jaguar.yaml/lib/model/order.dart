import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:openapi/model/order_data.dart';

part 'order.jser.dart';

class Order {
   /* null */
  @Alias('type', isNullable: false,  )
  final String type;
   /* Exchange name */
  @Alias('exchange_name', isNullable: false,  )
  final String exchangeName;
   /* Orders array */
  @Alias('data', isNullable: false,  )
  final List<OrderData> data;
  

  Order(
      

{
     this.type = null,  
     this.exchangeName = null,  
     this.data = const [] 
    
    }
  );

  @override
  String toString() {
    return 'Order[type=$type, exchangeName=$exchangeName, data=$data, ]';
  }
}

@GenSerializer(nullableFields: true)
class OrderSerializer extends Serializer<Order> with _$OrderSerializer {

}

