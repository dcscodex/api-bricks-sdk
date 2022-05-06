//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:openapi/model/key_value.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'update_account.g.dart';

abstract class UpdateAccount implements Built<UpdateAccount, UpdateAccountBuilder> {

    /// Exchange identifier and optional tag identifying specific account configured when the software will be managing multiple accounts on the same exchange; for eg:  <code>BITSTAMP</code> <code>BITSTAMP/7c177641-74bd-4dbe-9b01-2497c12a5f70`</code> <code>BITSTAMP/2574</code> Allowed separators between the exchange identifier and the tag: <code>~/.,:;\\!@#$%^&*-_+=.</code> 
    @nullable
    @BuiltValueField(wireName: r'exchange_id')
    String get exchangeId;

    /// Parameters required to log into the exchange
    @nullable
    @BuiltValueField(wireName: r'parameters')
    BuiltList<KeyValue> get parameters;

    UpdateAccount._();

    static void _initializeBuilder(UpdateAccountBuilder b) => b;

    factory UpdateAccount([void updates(UpdateAccountBuilder b)]) = _$UpdateAccount;

    @BuiltValueSerializer(custom: true)
    static Serializer<UpdateAccount> get serializer => _$UpdateAccountSerializer();
}

class _$UpdateAccountSerializer implements StructuredSerializer<UpdateAccount> {

    @override
    final Iterable<Type> types = const [UpdateAccount, _$UpdateAccount];
    @override
    final String wireName = r'UpdateAccount';

    @override
    Iterable<Object> serialize(Serializers serializers, UpdateAccount object,
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
    UpdateAccount deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = UpdateAccountBuilder();

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

