//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'message_error.g.dart';

/// MessageError
///
/// Properties:
/// * [message] - Message text.
abstract class MessageError implements Built<MessageError, MessageErrorBuilder> {
    /// Message text.
    @BuiltValueField(wireName: r'message')
    String? get message;

    MessageError._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(MessageErrorBuilder b) => b;

    factory MessageError([void updates(MessageErrorBuilder b)]) = _$MessageError;

    @BuiltValueSerializer(custom: true)
    static Serializer<MessageError> get serializer => _$MessageErrorSerializer();
}

class _$MessageErrorSerializer implements StructuredSerializer<MessageError> {
    @override
    final Iterable<Type> types = const [MessageError, _$MessageError];

    @override
    final String wireName = r'MessageError';

    @override
    Iterable<Object?> serialize(Serializers serializers, MessageError object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.message != null) {
            result
                ..add(r'message')
                ..add(serializers.serialize(object.message,
                    specifiedType: const FullType(String)));
        }
        return result;
    }

    @override
    MessageError deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = MessageErrorBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'message':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.message = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

