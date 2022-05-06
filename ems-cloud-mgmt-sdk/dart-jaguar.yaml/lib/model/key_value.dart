import 'package:jaguar_serializer/jaguar_serializer.dart';


part 'key_value.jser.dart';

class KeyValue {
  
  @Alias('key', isNullable: false,  )
  final String key;
  
  @Alias('value', isNullable: false,  )
  final String value;
  

  KeyValue(
      

{
     this.key = null,  
     this.value = null 
    
    }
  );

  @override
  String toString() {
    return 'KeyValue[key=$key, value=$value, ]';
  }
}

@GenSerializer(nullableFields: true)
class KeyValueSerializer extends Serializer<KeyValue> with _$KeyValueSerializer {

}

