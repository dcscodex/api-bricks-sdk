//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'fills.g.dart';

abstract class Fills implements Built<Fills, FillsBuilder> {

    /// Execution time.
    @nullable
    @BuiltValueField(wireName: r'time')
    DateTime get time;

    /// Execution price.
    @nullable
    @BuiltValueField(wireName: r'price')
    num get price;

    /// Executed quantity.
    @nullable
    @BuiltValueField(wireName: r'amount')
    num get amount;

    Fills._();

    static void _initializeBuilder(FillsBuilder b) => b;

    factory Fills([void updates(FillsBuilder b)]) = _$Fills;

    @BuiltValueSerializer(custom: true)
    static Serializer<Fills> get serializer => _$FillsSerializer();
}

class _$FillsSerializer implements StructuredSerializer<Fills> {

    @override
    final Iterable<Type> types = const [Fills, _$Fills];
    @override
    final String wireName = r'Fills';

    @override
    Iterable<Object> serialize(Serializers serializers, Fills object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        if (object.time != null) {
            result
                ..add(r'time')
                ..add(serializers.serialize(object.time,
                    specifiedType: const FullType(DateTime)));
        }
        if (object.price != null) {
            result
                ..add(r'price')
                ..add(serializers.serialize(object.price,
                    specifiedType: const FullType(num)));
        }
        if (object.amount != null) {
            result
                ..add(r'amount')
                ..add(serializers.serialize(object.amount,
                    specifiedType: const FullType(num)));
        }
        return result;
    }

    @override
    Fills deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = FillsBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final dynamic value = iterator.current;
            switch (key) {
                case r'time':
                    result.time = serializers.deserialize(value,
                        specifiedType: const FullType(DateTime)) as DateTime;
                    break;
                case r'price':
                    result.price = serializers.deserialize(value,
                        specifiedType: const FullType(num)) as num;
                    break;
                case r'amount':
                    result.amount = serializers.deserialize(value,
                        specifiedType: const FullType(num)) as num;
                    break;
            }
        }
        return result.build();
    }
}

