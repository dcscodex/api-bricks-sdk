import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:openapi/model/position_data.dart';

part 'position.jser.dart';

class Position {
   /* Result type. */
  @Alias('type', isNullable: false,  )
  final String type;
   /* Name of exchange. */
  @Alias('exchange_name', isNullable: false,  )
  final String exchangeName;
  
  @Alias('data', isNullable: false,  )
  final List<PositionData> data;
  

  Position(
      

{
     this.type = null,  
     this.exchangeName = null,  
     this.data = const [] 
    
    }
  );

  @override
  String toString() {
    return 'Position[type=$type, exchangeName=$exchangeName, data=$data, ]';
  }
}

@GenSerializer(nullableFields: true)
class PositionSerializer extends Serializer<Position> with _$PositionSerializer {

}

