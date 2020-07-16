import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:openapi/model/position_data.dart';

part 'position.jser.dart';

class Position {
   /* Exchange identifier used to identify the routing destination. */
  @Alias('exchange_id', isNullable: false,  )
  final String exchangeId;
  
  @Alias('data', isNullable: false,  )
  final List<PositionData> data;
  

  Position(
      

{
     this.exchangeId = null,  
     this.data = const [] 
    
    }
  );

  @override
  String toString() {
    return 'Position[exchangeId=$exchangeId, data=$data, ]';
  }
}

@GenSerializer(nullableFields: true)
class PositionSerializer extends Serializer<Position> with _$PositionSerializer {

}

