//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'locations.g.dart';

abstract class Locations implements Built<Locations, LocationsBuilder> {

    /// CoinAPI location identifier
    @nullable
    @BuiltValueField(wireName: r'location_id')
    String get locationId;

    /// Identifier of the region by the location provider
    @nullable
    @BuiltValueField(wireName: r'region_name')
    String get regionName;

    /// Identifier of the location provider
    @nullable
    @BuiltValueField(wireName: r'provider_name')
    String get providerName;

    Locations._();

    static void _initializeBuilder(LocationsBuilder b) => b;

    factory Locations([void updates(LocationsBuilder b)]) = _$Locations;

    @BuiltValueSerializer(custom: true)
    static Serializer<Locations> get serializer => _$LocationsSerializer();
}

class _$LocationsSerializer implements StructuredSerializer<Locations> {

    @override
    final Iterable<Type> types = const [Locations, _$Locations];
    @override
    final String wireName = r'Locations';

    @override
    Iterable<Object> serialize(Serializers serializers, Locations object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        if (object.locationId != null) {
            result
                ..add(r'location_id')
                ..add(serializers.serialize(object.locationId,
                    specifiedType: const FullType(String)));
        }
        if (object.regionName != null) {
            result
                ..add(r'region_name')
                ..add(serializers.serialize(object.regionName,
                    specifiedType: const FullType(String)));
        }
        if (object.providerName != null) {
            result
                ..add(r'provider_name')
                ..add(serializers.serialize(object.providerName,
                    specifiedType: const FullType(String)));
        }
        return result;
    }

    @override
    Locations deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = LocationsBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final dynamic value = iterator.current;
            switch (key) {
                case r'location_id':
                    result.locationId = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'region_name':
                    result.regionName = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'provider_name':
                    result.providerName = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
            }
        }
        return result.build();
    }
}

