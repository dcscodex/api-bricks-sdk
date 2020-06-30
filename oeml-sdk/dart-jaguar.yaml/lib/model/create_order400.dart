import 'package:jaguar_serializer/jaguar_serializer.dart';


part 'create_order400.jser.dart';

class CreateOrder400 {
  
  @Alias('type', isNullable: false,  )
  final String type;
  
  @Alias('title', isNullable: false,  )
  final String title;
  
  @Alias('status', isNullable: false,  )
  final num status;
  
  @Alias('traceId', isNullable: false,  )
  final String traceId;
  
  @Alias('errors', isNullable: false,  )
  final String errors;
  

  CreateOrder400(
      

{
     this.type = null,  
     this.title = null,  
     this.status = null,  
     this.traceId = null,  
     this.errors = null 
    
    }
  );

  @override
  String toString() {
    return 'CreateOrder400[type=$type, title=$title, status=$status, traceId=$traceId, errors=$errors, ]';
  }
}

@GenSerializer(nullableFields: true)
class CreateOrder400Serializer extends Serializer<CreateOrder400> with _$CreateOrder400Serializer {

}

