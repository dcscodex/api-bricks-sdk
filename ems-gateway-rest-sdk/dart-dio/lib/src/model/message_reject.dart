//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:openapi/src/model/reject_reason.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'message_reject.g.dart';

/// MessageReject
///
/// Properties:
/// * [type] - Message type, constant.
/// * [rejectReason] 
/// * [exchangeId] - If the message related to exchange, then the identifier of the exchange will be provided.
/// * [message] - Message text.
/// * [rejectedMessage] - Value of rejected request, if available.
abstract class MessageReject implements Built<MessageReject, MessageRejectBuilder> {
    /// Message type, constant.
    @BuiltValueField(wireName: r'type')
    String? get type;

    @BuiltValueField(wireName: r'reject_reason')
    RejectReason? get rejectReason;
    // enum rejectReasonEnum {  OTHER,  EXCHANGE_UNREACHABLE,  EXCHANGE_RESPONSE_TIMEOUT,  ORDER_ID_NOT_FOUND,  INVALID_TYPE,  METHOD_NOT_SUPPORTED,  JSON_ERROR,  };

    /// If the message related to exchange, then the identifier of the exchange will be provided.
    @BuiltValueField(wireName: r'exchange_id')
    String? get exchangeId;

    /// Message text.
    @BuiltValueField(wireName: r'message')
    String? get message;

    /// Value of rejected request, if available.
    @BuiltValueField(wireName: r'rejected_message')
    String? get rejectedMessage;

    MessageReject._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(MessageRejectBuilder b) => b;

    factory MessageReject([void updates(MessageRejectBuilder b)]) = _$MessageReject;

    @BuiltValueSerializer(custom: true)
    static Serializer<MessageReject> get serializer => _$MessageRejectSerializer();
}

class _$MessageRejectSerializer implements StructuredSerializer<MessageReject> {
    @override
    final Iterable<Type> types = const [MessageReject, _$MessageReject];

    @override
    final String wireName = r'MessageReject';

    @override
    Iterable<Object?> serialize(Serializers serializers, MessageReject object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.type != null) {
            result
                ..add(r'type')
                ..add(serializers.serialize(object.type,
                    specifiedType: const FullType(String)));
        }
        if (object.rejectReason != null) {
            result
                ..add(r'reject_reason')
                ..add(serializers.serialize(object.rejectReason,
                    specifiedType: const FullType(RejectReason)));
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
        if (object.rejectedMessage != null) {
            result
                ..add(r'rejected_message')
                ..add(serializers.serialize(object.rejectedMessage,
                    specifiedType: const FullType(String)));
        }
        return result;
    }

    @override
    MessageReject deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = MessageRejectBuilder();

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
                case r'reject_reason':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(RejectReason)) as RejectReason;
                    result.rejectReason = valueDes;
                    break;
                case r'exchange_id':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.exchangeId = valueDes;
                    break;
                case r'message':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.message = valueDes;
                    break;
                case r'rejected_message':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.rejectedMessage = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

