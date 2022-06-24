//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/balance_data_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'balance.g.dart';

/// Balance
///
/// Properties:
/// * [exchangeId] - Exchange identifier used to identify the routing destination.
/// * [data] 
abstract class Balance implements Built<Balance, BalanceBuilder> {
    /// Exchange identifier used to identify the routing destination.
    @BuiltValueField(wireName: r'exchange_id')
    String? get exchangeId;

    @BuiltValueField(wireName: r'data')
    BuiltList<BalanceDataInner>? get data;

    Balance._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(BalanceBuilder b) => b;

    factory Balance([void updates(BalanceBuilder b)]) = _$Balance;

    @BuiltValueSerializer(custom: true)
    static Serializer<Balance> get serializer => _$BalanceSerializer();
}

class _$BalanceSerializer implements StructuredSerializer<Balance> {
    @override
    final Iterable<Type> types = const [Balance, _$Balance];

    @override
    final String wireName = r'Balance';

    @override
    Iterable<Object?> serialize(Serializers serializers, Balance object,
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
                    specifiedType: const FullType(BuiltList, [FullType(BalanceDataInner)])));
        }
        return result;
    }

    @override
    Balance deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = BalanceBuilder();

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
                        specifiedType: const FullType(BuiltList, [FullType(BalanceDataInner)])) as BuiltList<BalanceDataInner>;
                    result.data.replace(valueDes);
                    break;
            }
        }
        return result.build();
    }
}

