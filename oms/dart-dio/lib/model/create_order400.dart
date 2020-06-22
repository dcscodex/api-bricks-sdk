        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_order400.g.dart';

abstract class CreateOrder400 implements Built<CreateOrder400, CreateOrder400Builder> {

    
        @nullable
    @BuiltValueField(wireName: r'type')
    String get type;
    
        @nullable
    @BuiltValueField(wireName: r'title')
    String get title;
    
        @nullable
    @BuiltValueField(wireName: r'status')
    num get status;
    
        @nullable
    @BuiltValueField(wireName: r'traceId')
    String get traceId;
    
        @nullable
    @BuiltValueField(wireName: r'errors')
    String get errors;

    // Boilerplate code needed to wire-up generated code
    CreateOrder400._();

    factory CreateOrder400([updates(CreateOrder400Builder b)]) = _$CreateOrder400;
    static Serializer<CreateOrder400> get serializer => _$createOrder400Serializer;

}

