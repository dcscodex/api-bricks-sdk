//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'validation_error.g.dart';

abstract class ValidationError implements Built<ValidationError, ValidationErrorBuilder> {

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

    ValidationError._();

    static void _initializeBuilder(ValidationErrorBuilder b) => b;

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
    Iterable<Object> serialize(Serializers serializers, ValidationError object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
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
    ValidationError deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = ValidationErrorBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final dynamic value = iterator.current;
            switch (key) {
                case r'type':
                    result.type = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'title':
                    result.title = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'status':
                    result.status = serializers.deserialize(value,
                        specifiedType: const FullType(num)) as num;
                    break;
                case r'traceId':
                    result.traceId = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'errors':
                    result.errors = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
            }
        }
        return result.build();
    }
}

