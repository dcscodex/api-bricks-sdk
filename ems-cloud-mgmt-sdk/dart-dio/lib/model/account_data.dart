//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:openapi/model/key_value.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'account_data.g.dart';

abstract class AccountData implements Built<AccountData, AccountDataBuilder> {

    /// Exchange identifier and optional tag identifying specific account configured when the software will be managing multiple accounts on the same exchange; for eg:  <code>BITSTAMP</code> <code>BITSTAMP/7c177641-74bd-4dbe-9b01-2497c12a5f70`</code> <code>BITSTAMP/2574</code> Allowed separators between the exchange identifier and the tag: <code>~/.,:;\\!@#$%^&*-_+=.</code> 
    @nullable
    @BuiltValueField(wireName: r'exchange_id')
    String get exchangeId;

    /// Parameters required to log into the exchange
    @nullable
    @BuiltValueField(wireName: r'parameters')
    BuiltList<KeyValue> get parameters;

    AccountData._();

    static void _initializeBuilder(AccountDataBuilder b) => b;

    factory AccountData([void updates(AccountDataBuilder b)]) = _$AccountData;

    @BuiltValueSerializer(custom: true)
    static Serializer<AccountData> get serializer => _$AccountDataSerializer();
}

class _$AccountDataSerializer implements StructuredSerializer<AccountData> {

    @override
    final Iterable<Type> types = const [AccountData, _$AccountData];
    @override
    final String wireName = r'AccountData';

    @override
    Iterable<Object> serialize(Serializers serializers, AccountData object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        if (object.exchangeId != null) {
            result
                ..add(r'exchange_id')
                ..add(serializers.serialize(object.exchangeId,
                    specifiedType: const FullType(String)));
        }
        if (object.parameters != null) {
            result
                ..add(r'parameters')
                ..add(serializers.serialize(object.parameters,
                    specifiedType: const FullType(BuiltList, [FullType(KeyValue)])));
        }
        return result;
    }

    @override
    AccountData deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = AccountDataBuilder();

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
                case r'parameters':
                    result.parameters.replace(serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(KeyValue)])) as BuiltList<KeyValue>);
                    break;
            }
        }
        return result.build();
    }
}

