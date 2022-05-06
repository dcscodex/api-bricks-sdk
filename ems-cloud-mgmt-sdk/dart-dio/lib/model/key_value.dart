//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'key_value.g.dart';

abstract class KeyValue implements Built<KeyValue, KeyValueBuilder> {

    @nullable
    @BuiltValueField(wireName: r'key')
    String get key;

    @nullable
    @BuiltValueField(wireName: r'value')
    String get value;

    KeyValue._();

    static void _initializeBuilder(KeyValueBuilder b) => b;

    factory KeyValue([void updates(KeyValueBuilder b)]) = _$KeyValue;

    @BuiltValueSerializer(custom: true)
    static Serializer<KeyValue> get serializer => _$KeyValueSerializer();
}

class _$KeyValueSerializer implements StructuredSerializer<KeyValue> {

    @override
    final Iterable<Type> types = const [KeyValue, _$KeyValue];
    @override
    final String wireName = r'KeyValue';

    @override
    Iterable<Object> serialize(Serializers serializers, KeyValue object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        if (object.key != null) {
            result
                ..add(r'key')
                ..add(serializers.serialize(object.key,
                    specifiedType: const FullType(String)));
        }
        if (object.value != null) {
            result
                ..add(r'value')
                ..add(serializers.serialize(object.value,
                    specifiedType: const FullType(String)));
        }
        return result;
    }

    @override
    KeyValue deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = KeyValueBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final dynamic value = iterator.current;
            switch (key) {
                case r'key':
                    result.key = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'value':
                    result.value = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
            }
        }
        return result.build();
    }
}

