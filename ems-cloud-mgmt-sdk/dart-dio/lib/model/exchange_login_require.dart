//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'exchange_login_require.g.dart';

abstract class ExchangeLoginRequire implements Built<ExchangeLoginRequire, ExchangeLoginRequireBuilder> {

    /// Exchange identifier and optional tag identifying specific account configured when the software will be managing multiple accounts on the same exchange; for eg:  <code>BITSTAMP</code> <code>BITSTAMP/7c177641-74bd-4dbe-9b01-2497c12a5f70`</code> <code>BITSTAMP/2574</code> Allowed separators between the exchange identifier and the tag: <code>~/.,:;\\!@#$%^&*-_+=.</code> 
    @nullable
    @BuiltValueField(wireName: r'exchange_id')
    String get exchangeId;

    /// Location identifier
    @nullable
    @BuiltValueField(wireName: r'location_id')
    String get locationId;

    /// Parameters required to log into the exchange
    @nullable
    @BuiltValueField(wireName: r'required_parameters')
    BuiltList<String> get requiredParameters;

    ExchangeLoginRequire._();

    static void _initializeBuilder(ExchangeLoginRequireBuilder b) => b;

    factory ExchangeLoginRequire([void updates(ExchangeLoginRequireBuilder b)]) = _$ExchangeLoginRequire;

    @BuiltValueSerializer(custom: true)
    static Serializer<ExchangeLoginRequire> get serializer => _$ExchangeLoginRequireSerializer();
}

class _$ExchangeLoginRequireSerializer implements StructuredSerializer<ExchangeLoginRequire> {

    @override
    final Iterable<Type> types = const [ExchangeLoginRequire, _$ExchangeLoginRequire];
    @override
    final String wireName = r'ExchangeLoginRequire';

    @override
    Iterable<Object> serialize(Serializers serializers, ExchangeLoginRequire object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        if (object.exchangeId != null) {
            result
                ..add(r'exchange_id')
                ..add(serializers.serialize(object.exchangeId,
                    specifiedType: const FullType(String)));
        }
        if (object.locationId != null) {
            result
                ..add(r'location_id')
                ..add(serializers.serialize(object.locationId,
                    specifiedType: const FullType(String)));
        }
        if (object.requiredParameters != null) {
            result
                ..add(r'required_parameters')
                ..add(serializers.serialize(object.requiredParameters,
                    specifiedType: const FullType(BuiltList, [FullType(String)])));
        }
        return result;
    }

    @override
    ExchangeLoginRequire deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = ExchangeLoginRequireBuilder();

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
                case r'location_id':
                    result.locationId = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'required_parameters':
                    result.requiredParameters.replace(serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(String)])) as BuiltList<String>);
                    break;
            }
        }
        return result.build();
    }
}

