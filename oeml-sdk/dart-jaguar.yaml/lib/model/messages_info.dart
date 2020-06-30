import 'package:jaguar_serializer/jaguar_serializer.dart';


part 'messages_info.jser.dart';

class MessagesInfo {
   /* Type of message */
  @Alias('type', isNullable: false,  )
  final String type;
   /* Exchange name */
  @Alias('exchange_id', isNullable: false,  )
  final String exchangeId;
   /* Error message */
  @Alias('error_message', isNullable: false,  )
  final String errorMessage;
  

  MessagesInfo(
      

{
     this.type = null,  
     this.exchangeId = null,  
     this.errorMessage = null 
    
    }
  );

  @override
  String toString() {
    return 'MessagesInfo[type=$type, exchangeId=$exchangeId, errorMessage=$errorMessage, ]';
  }
}

@GenSerializer(nullableFields: true)
class MessagesInfoSerializer extends Serializer<MessagesInfo> with _$MessagesInfoSerializer {

}

