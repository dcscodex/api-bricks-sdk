//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/position_data_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'position.g.dart';

/// Position
///
/// Properties:
/// * [exchangeId] - Exchange identifier used to identify the routing destination.
/// * [data] 
abstract class Position implements Built<Position, PositionBuilder> {
    /// Exchange identifier used to identify the routing destination.
    @BuiltValueField(wireName: r'exchange_id')
    String? get exchangeId;

    @BuiltValueField(wireName: r'data')
    BuiltList<PositionDataInner>? get data;

    Position._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(PositionBuilder b) => b;

    factory Position([void updates(PositionBuilder b)]) = _$Position;

    @BuiltValueSerializer(custom: true)
    static Serializer<Position> get serializer => _$PositionSerializer();
}

class _$PositionSerializer implements StructuredSerializer<Position> {
    @override
    final Iterable<Type> types = const [Position, _$Position];

    @override
    final String wireName = r'Position';

    @override
    Iterable<Object?> serialize(Serializers serializers, Position object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.exchangeId != null) {
            result
                ..add(r'exchange_id')
                ..add(serializers.serialize(object.exchangeId,
                    specifiedType: const FullType(String)));
        }
        if (object.data != null) {
            result
                ..add(r'data')
                ..add(serializers.serialize(object.data,
                    specifiedType: const FullType(BuiltList, [FullType(PositionDataInner)])));
        }
        return result;
    }

    @override
    Position deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = PositionBuilder();

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
                case r'data':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(PositionDataInner)])) as BuiltList<PositionDataInner>;
                    result.data.replace(valueDes);
                    break;
            }
        }
        return result.build();
    }
}

