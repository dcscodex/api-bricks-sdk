//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:openapi/model/key_value.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_account.g.dart';

abstract class GetAccount implements Built<GetAccount, GetAccountBuilder> {

    /// Exchange identifier and optional tag identifying specific account configured when the software will be managing multiple accounts on the same exchange; for eg:  <code>BITSTAMP</code> <code>BITSTAMP/7c177641-74bd-4dbe-9b01-2497c12a5f70`</code> <code>BITSTAMP/2574</code> Allowed separators between the exchange identifier and the tag: <code>~/.,:;\\!@#$%^&*-_+=.</code> 
    @nullable
    @BuiltValueField(wireName: r'exchange_id')
    String get exchangeId;

    /// Exchange specific configuration parameters
    @nullable
    @BuiltValueField(wireName: r'parameters')
    BuiltList<KeyValue> get parameters;

    GetAccount._();

    static void _initializeBuilder(GetAccountBuilder b) => b;

    factory GetAccount([void updates(GetAccountBuilder b)]) = _$GetAccount;

    @BuiltValueSerializer(custom: true)
    static Serializer<GetAccount> get serializer => _$GetAccountSerializer();
}

class _$GetAccountSerializer implements StructuredSerializer<GetAccount> {

    @override
    final Iterable<Type> types = const [GetAccount, _$GetAccount];
    @override
    final String wireName = r'GetAccount';

    @override
    Iterable<Object> serialize(Serializers serializers, GetAccount object,
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
    GetAccount deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = GetAccountBuilder();

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

