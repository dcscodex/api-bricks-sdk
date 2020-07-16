import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:openapi/model/severity.dart';

part 'message.jser.dart';

class Message {
   /* Type of message. */
  @Alias('type', isNullable: false,  )
  final String type;
  
  @Alias('severity', isNullable: false,
          
             processor:  const SeverityFieldProcessor(),
          
  )
  final Severity severity;
  //enum severityEnum {  INFO,  WARNING,  ERROR,  }; /* If the message related to exchange, then the identifier of the exchange will be provided. */
  @Alias('exchange_id', isNullable: false,  )
  final String exchangeId;
   /* Message text. */
  @Alias('message', isNullable: false,  )
  final String message;
  

  Message(
      

{
     this.type = null,  
     this.severity = null,  
     this.exchangeId = null,  
     this.message = null 
    
    }
  );

  @override
  String toString() {
    return 'Message[type=$type, severity=$severity, exchangeId=$exchangeId, message=$message, ]';
  }
}

@GenSerializer(nullableFields: true)
class MessageSerializer extends Serializer<Message> with _$MessageSerializer {

}

