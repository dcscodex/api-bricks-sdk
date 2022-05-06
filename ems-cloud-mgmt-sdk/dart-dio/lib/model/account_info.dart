//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'account_info.g.dart';

abstract class AccountInfo implements Built<AccountInfo, AccountInfoBuilder> {

    /// Exchange identifier and optional tag identifying specific account configured when the software will be managing multiple accounts on the same exchange; for eg:  <code>BITSTAMP</code> <code>BITSTAMP/7c177641-74bd-4dbe-9b01-2497c12a5f70`</code> <code>BITSTAMP/2574</code> Allowed separators between the exchange identifier and the tag: <code>~/.,:;\\!@#$%^&*-_+=.</code> 
    @nullable
    @BuiltValueField(wireName: r'exchange_id')
    String get exchangeId;

    AccountInfo._();

    static void _initializeBuilder(AccountInfoBuilder b) => b;

    factory AccountInfo([void updates(AccountInfoBuilder b)]) = _$AccountInfo;

    @BuiltValueSerializer(custom: true)
    static Serializer<AccountInfo> get serializer => _$AccountInfoSerializer();
}

class _$AccountInfoSerializer implements StructuredSerializer<AccountInfo> {

    @override
    final Iterable<Type> types = const [AccountInfo, _$AccountInfo];
    @override
    final String wireName = r'AccountInfo';

    @override
    Iterable<Object> serialize(Serializers serializers, AccountInfo object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        if (object.exchangeId != null) {
            result
                ..add(r'exchange_id')
                ..add(serializers.serialize(object.exchangeId,
                    specifiedType: const FullType(String)));
        }
        return result;
    }

    @override
    AccountInfo deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = AccountInfoBuilder();

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
            }
        }
        return result.build();
    }
}

