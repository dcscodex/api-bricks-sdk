//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'order_cancel_single_request.g.dart';

/// Cancel single order request object.
///
/// Properties:
/// * [exchangeId] - Exchange identifier used to identify the routing destination.
/// * [exchangeOrderId] - Unique identifier of the order assigned by the exchange or executing system. One of the properties (`exchange_order_id`, `client_order_id`) is required to identify the new order.
/// * [clientOrderId] - The unique identifier of the order assigned by the client. One of the properties (`exchange_order_id`, `client_order_id`) is required to identify the new order.
abstract class OrderCancelSingleRequest implements Built<OrderCancelSingleRequest, OrderCancelSingleRequestBuilder> {
    /// Exchange identifier used to identify the routing destination.
    @BuiltValueField(wireName: r'exchange_id')
    String get exchangeId;

    /// Unique identifier of the order assigned by the exchange or executing system. One of the properties (`exchange_order_id`, `client_order_id`) is required to identify the new order.
    @BuiltValueField(wireName: r'exchange_order_id')
    String? get exchangeOrderId;

    /// The unique identifier of the order assigned by the client. One of the properties (`exchange_order_id`, `client_order_id`) is required to identify the new order.
    @BuiltValueField(wireName: r'client_order_id')
    String? get clientOrderId;

    OrderCancelSingleRequest._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(OrderCancelSingleRequestBuilder b) => b;

    factory OrderCancelSingleRequest([void updates(OrderCancelSingleRequestBuilder b)]) = _$OrderCancelSingleRequest;

    @BuiltValueSerializer(custom: true)
    static Serializer<OrderCancelSingleRequest> get serializer => _$OrderCancelSingleRequestSerializer();
}

class _$OrderCancelSingleRequestSerializer implements StructuredSerializer<OrderCancelSingleRequest> {
    @override
    final Iterable<Type> types = const [OrderCancelSingleRequest, _$OrderCancelSingleRequest];

    @override
    final String wireName = r'OrderCancelSingleRequest';

    @override
    Iterable<Object?> serialize(Serializers serializers, OrderCancelSingleRequest object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        result
            ..add(r'exchange_id')
            ..add(serializers.serialize(object.exchangeId,
                specifiedType: const FullType(String)));
        if (object.exchangeOrderId != null) {
            result
                ..add(r'exchange_order_id')
                ..add(serializers.serialize(object.exchangeOrderId,
                    specifiedType: const FullType(String)));
        }
        if (object.clientOrderId != null) {
            result
                ..add(r'client_order_id')
                ..add(serializers.serialize(object.clientOrderId,
                    specifiedType: const FullType(String)));
        }
        return result;
    }

    @override
    OrderCancelSingleRequest deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = OrderCancelSingleRequestBuilder();

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
                case r'exchange_order_id':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.exchangeOrderId = valueDes;
                    break;
                case r'client_order_id':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.clientOrderId = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

