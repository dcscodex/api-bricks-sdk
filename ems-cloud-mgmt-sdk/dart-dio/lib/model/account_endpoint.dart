//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'account_endpoint.g.dart';

abstract class AccountEndpoint implements Built<AccountEndpoint, AccountEndpointBuilder> {

    /// Exchange identifier and optional tag identifying specific account configured when the software will be managing multiple accounts on the same exchange; for eg:  <code>BITSTAMP</code> <code>BITSTAMP/7c177641-74bd-4dbe-9b01-2497c12a5f70`</code> <code>BITSTAMP/2574</code> Allowed separators between the exchange identifier and the tag: <code>~/.,:;\\!@#$%^&*-_+=.</code> 
    @nullable
    @BuiltValueField(wireName: r'exchange_id')
    String get exchangeId;

    /// Location identifier
    @nullable
    @BuiltValueField(wireName: r'location_id')
    String get locationId;

    /// Endpoint schema
    @nullable
    @BuiltValueField(wireName: r'endpoint_schema')
    String get endpointSchema;

    /// Endpoint host
    @nullable
    @BuiltValueField(wireName: r'endpoint_host')
    String get endpointHost;

    /// Endpoint URL
    @nullable
    @BuiltValueField(wireName: r'endpoint_url')
    String get endpointUrl;

    AccountEndpoint._();

    static void _initializeBuilder(AccountEndpointBuilder b) => b;

    factory AccountEndpoint([void updates(AccountEndpointBuilder b)]) = _$AccountEndpoint;

    @BuiltValueSerializer(custom: true)
    static Serializer<AccountEndpoint> get serializer => _$AccountEndpointSerializer();
}

class _$AccountEndpointSerializer implements StructuredSerializer<AccountEndpoint> {

    @override
    final Iterable<Type> types = const [AccountEndpoint, _$AccountEndpoint];
    @override
    final String wireName = r'AccountEndpoint';

    @override
    Iterable<Object> serialize(Serializers serializers, AccountEndpoint object,
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
        if (object.endpointSchema != null) {
            result
                ..add(r'endpoint_schema')
                ..add(serializers.serialize(object.endpointSchema,
                    specifiedType: const FullType(String)));
        }
        if (object.endpointHost != null) {
            result
                ..add(r'endpoint_host')
                ..add(serializers.serialize(object.endpointHost,
                    specifiedType: const FullType(String)));
        }
        if (object.endpointUrl != null) {
            result
                ..add(r'endpoint_url')
                ..add(serializers.serialize(object.endpointUrl,
                    specifiedType: const FullType(String)));
        }
        return result;
    }

    @override
    AccountEndpoint deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = AccountEndpointBuilder();

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
                case r'endpoint_schema':
                    result.endpointSchema = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'endpoint_host':
                    result.endpointHost = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'endpoint_url':
                    result.endpointUrl = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
            }
        }
        return result.build();
    }
}

