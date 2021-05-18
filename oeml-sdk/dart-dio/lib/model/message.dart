//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:openapi/model/severity.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'message.g.dart';

abstract class Message implements Built<Message, MessageBuilder> {

    /// Type of message.
    @nullable
    @BuiltValueField(wireName: r'type')
    String get type;

    @nullable
    @BuiltValueField(wireName: r'severity')
    Severity get severity;
    // enum severityEnum {  INFO,  WARNING,  ERROR,  };

    /// If the message related to exchange, then the identifier of the exchange will be provided.
    @nullable
    @BuiltValueField(wireName: r'exchange_id')
    String get exchangeId;

    /// Message text.
    @nullable
    @BuiltValueField(wireName: r'message')
    String get message;

    Message._();

    static void _initializeBuilder(MessageBuilder b) => b;

    factory Message([void updates(MessageBuilder b)]) = _$Message;

    @BuiltValueSerializer(custom: true)
    static Serializer<Message> get serializer => _$MessageSerializer();
}

class _$MessageSerializer implements StructuredSerializer<Message> {

    @override
    final Iterable<Type> types = const [Message, _$Message];
    @override
    final String wireName = r'Message';

    @override
    Iterable<Object> serialize(Serializers serializers, Message object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        if (object.type != null) {
            result
                ..add(r'type')
                ..add(serializers.serialize(object.type,
                    specifiedType: const FullType(String)));
        }
        if (object.severity != null) {
            result
                ..add(r'severity')
                ..add(serializers.serialize(object.severity,
                    specifiedType: const FullType(Severity)));
        }
        if (object.exchangeId != null) {
            result
                ..add(r'exchange_id')
                ..add(serializers.serialize(object.exchangeId,
                    specifiedType: const FullType(String)));
        }
        if (object.message != null) {
            result
                ..add(r'message')
                ..add(serializers.serialize(object.message,
                    specifiedType: const FullType(String)));
        }
        return result;
    }

    @override
    Message deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = MessageBuilder();

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
                case r'severity':
                    result.severity = serializers.deserialize(value,
                        specifiedType: const FullType(Severity)) as Severity;
                    break;
                case r'exchange_id':
                    result.exchangeId = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'message':
                    result.message = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
            }
        }
        return result.build();
    }
}

