import 'package:jaguar_serializer/jaguar_serializer.dart';


part 'messages_ok.jser.dart';

class MessagesOk {
   /* Type of message */
  @Alias('type', isNullable: false,  )
  final String type;
   /* Exchange name */
  @Alias('exchange_id', isNullable: false,  )
  final String exchangeId;
   /* Message */
  @Alias('message', isNullable: false,  )
  final String message;
  

  MessagesOk(
      

{
     this.type = null,  
     this.exchangeId = null,  
     this.message = null 
    
    }
  );

  @override
  String toString() {
    return 'MessagesOk[type=$type, exchangeId=$exchangeId, message=$message, ]';
  }
}

@GenSerializer(nullableFields: true)
class MessagesOkSerializer extends Serializer<MessagesOk> with _$MessagesOkSerializer {

}

