//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'validation_error.g.dart';

/// ValidationError
///
/// Properties:
/// * [type] 
/// * [title] 
/// * [status] 
/// * [traceId] 
/// * [errors] 
abstract class ValidationError implements Built<ValidationError, ValidationErrorBuilder> {
    @BuiltValueField(wireName: r'type')
    String? get type;

    @BuiltValueField(wireName: r'title')
    String? get title;

    @BuiltValueField(wireName: r'status')
    num? get status;

    @BuiltValueField(wireName: r'traceId')
    String? get traceId;

    @BuiltValueField(wireName: r'errors')
    String? get errors;

    ValidationError._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(ValidationErrorBuilder b) => b;

    factory ValidationError([void updates(ValidationErrorBuilder b)]) = _$ValidationError;

    @BuiltValueSerializer(custom: true)
    static Serializer<ValidationError> get serializer => _$ValidationErrorSerializer();
}

class _$ValidationErrorSerializer implements StructuredSerializer<ValidationError> {
    @override
    final Iterable<Type> types = const [ValidationError, _$ValidationError];

    @override
    final String wireName = r'ValidationError';

    @override
    Iterable<Object?> serialize(Serializers serializers, ValidationError object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.type != null) {
            result
                ..add(r'type')
                ..add(serializers.serialize(object.type,
                    specifiedType: const FullType(String)));
        }
        if (object.title != null) {
            result
                ..add(r'title')
                ..add(serializers.serialize(object.title,
                    specifiedType: const FullType(String)));
        }
        if (object.status != null) {
            result
                ..add(r'status')
                ..add(serializers.serialize(object.status,
                    specifiedType: const FullType(num)));
        }
        if (object.traceId != null) {
            result
                ..add(r'traceId')
                ..add(serializers.serialize(object.traceId,
                    specifiedType: const FullType(String)));
        }
        if (object.errors != null) {
            result
                ..add(r'errors')
                ..add(serializers.serialize(object.errors,
                    specifiedType: const FullType(String)));
        }
        return result;
    }

    @override
    ValidationError deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = ValidationErrorBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'type':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.type = valueDes;
                    break;
                case r'title':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.title = valueDes;
                    break;
                case r'status':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(num)) as num;
                    result.status = valueDes;
                    break;
                case r'traceId':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.traceId = valueDes;
                    break;
                case r'errors':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.errors = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

