//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:openapi/src/model/date.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'fills.g.dart';

/// Fills
///
/// Properties:
/// * [time] - Execution time.
/// * [price] - Execution price.
/// * [amount] - Executed quantity.
abstract class Fills implements Built<Fills, FillsBuilder> {
    /// Execution time.
    @BuiltValueField(wireName: r'time')
    Date? get time;

    /// Execution price.
    @BuiltValueField(wireName: r'price')
    num? get price;

    /// Executed quantity.
    @BuiltValueField(wireName: r'amount')
    num? get amount;

    Fills._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(FillsBuilder b) => b;

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
    Iterable<Object?> serialize(Serializers serializers, Fills object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.time != null) {
            result
                ..add(r'time')
                ..add(serializers.serialize(object.time,
                    specifiedType: const FullType(Date)));
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
    Fills deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = FillsBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'time':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(Date)) as Date;
                    result.time = valueDes;
                    break;
                case r'price':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(num)) as num;
                    result.price = valueDes;
                    break;
                case r'amount':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(num)) as num;
                    result.amount = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

