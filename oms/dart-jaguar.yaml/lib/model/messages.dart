import 'package:jaguar_serializer/jaguar_serializer.dart';


part 'messages.jser.dart';

class Messages {
   /* Type of message */
  @Alias('type', isNullable: false,  )
  final String type;
   /* Exchange name */
  @Alias('exchange_id', isNullable: false,  )
  final String exchangeId;
   /* Message */
  @Alias('message', isNullable: false,  )
  final String message;
  

  Messages(
      

{
     this.type = null,  
     this.exchangeId = null,  
     this.message = null 
    
    }
  );

  @override
  String toString() {
    return 'Messages[type=$type, exchangeId=$exchangeId, message=$message, ]';
  }
}

@GenSerializer(nullableFields: true)
class MessagesSerializer extends Serializer<Messages> with _$MessagesSerializer {

}

