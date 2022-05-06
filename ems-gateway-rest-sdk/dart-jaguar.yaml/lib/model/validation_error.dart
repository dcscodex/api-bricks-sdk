import 'package:jaguar_serializer/jaguar_serializer.dart';


part 'validation_error.jser.dart';

class ValidationError {
  
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
  

  ValidationError(
      

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
    return 'ValidationError[type=$type, title=$title, status=$status, traceId=$traceId, errors=$errors, ]';
  }
}

@GenSerializer(nullableFields: true)
class ValidationErrorSerializer extends Serializer<ValidationError> with _$ValidationErrorSerializer {

}

