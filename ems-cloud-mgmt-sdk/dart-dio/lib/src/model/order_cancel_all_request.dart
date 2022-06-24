//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'order_cancel_all_request.g.dart';

/// Cancel all orders request object.
///
/// Properties:
/// * [exchangeId] - Identifier of the exchange from which active orders should be canceled.
abstract class OrderCancelAllRequest implements Built<OrderCancelAllRequest, OrderCancelAllRequestBuilder> {
    /// Identifier of the exchange from which active orders should be canceled.
    @BuiltValueField(wireName: r'exchange_id')
    String get exchangeId;

    OrderCancelAllRequest._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(OrderCancelAllRequestBuilder b) => b;

    factory OrderCancelAllRequest([void updates(OrderCancelAllRequestBuilder b)]) = _$OrderCancelAllRequest;

    @BuiltValueSerializer(custom: true)
    static Serializer<OrderCancelAllRequest> get serializer => _$OrderCancelAllRequestSerializer();
}

class _$OrderCancelAllRequestSerializer implements StructuredSerializer<OrderCancelAllRequest> {
    @override
    final Iterable<Type> types = const [OrderCancelAllRequest, _$OrderCancelAllRequest];

    @override
    final String wireName = r'OrderCancelAllRequest';

    @override
    Iterable<Object?> serialize(Serializers serializers, OrderCancelAllRequest object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        result
            ..add(r'exchange_id')
            ..add(serializers.serialize(object.exchangeId,
                specifiedType: const FullType(String)));
        return result;
    }

    @override
    OrderCancelAllRequest deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = OrderCancelAllRequestBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'exchange_id':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.exchangeId = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

