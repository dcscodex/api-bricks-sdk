//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:openapi/model/position_data.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'position.g.dart';

abstract class Position implements Built<Position, PositionBuilder> {

    /// Exchange identifier used to identify the routing destination.
    @nullable
    @BuiltValueField(wireName: r'exchange_id')
    String get exchangeId;

    @nullable
    @BuiltValueField(wireName: r'data')
    BuiltList<PositionData> get data;

    Position._();

    static void _initializeBuilder(PositionBuilder b) => b;

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
    Iterable<Object> serialize(Serializers serializers, Position object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
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
                    specifiedType: const FullType(BuiltList, [FullType(PositionData)])));
        }
        return result;
    }

    @override
    Position deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = PositionBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final dynamic value = iterator.current;
            switch (key) {
                case r'exchange_id':
                    result.exchangeId = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'data':
                    result.data.replace(serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(PositionData)])) as BuiltList<PositionData>);
                    break;
            }
        }
        return result.build();
    }
}

