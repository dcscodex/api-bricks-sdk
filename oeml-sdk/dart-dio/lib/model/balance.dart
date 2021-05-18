//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:openapi/model/balance_data.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'balance.g.dart';

abstract class Balance implements Built<Balance, BalanceBuilder> {

    /// Exchange identifier used to identify the routing destination.
    @nullable
    @BuiltValueField(wireName: r'exchange_id')
    String get exchangeId;

    @nullable
    @BuiltValueField(wireName: r'data')
    BuiltList<BalanceData> get data;

    Balance._();

    static void _initializeBuilder(BalanceBuilder b) => b;

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
    Iterable<Object> serialize(Serializers serializers, Balance object,
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
                    specifiedType: const FullType(BuiltList, [FullType(BalanceData)])));
        }
        return result;
    }

    @override
    Balance deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = BalanceBuilder();

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
                        specifiedType: const FullType(BuiltList, [FullType(BalanceData)])) as BuiltList<BalanceData>);
                    break;
            }
        }
        return result.build();
    }
}

