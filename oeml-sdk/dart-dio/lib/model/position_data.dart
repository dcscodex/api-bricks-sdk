//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:openapi/model/ord_side.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'position_data.g.dart';

abstract class PositionData implements Built<PositionData, PositionDataBuilder> {

    /// Exchange symbol.
    @nullable
    @BuiltValueField(wireName: r'symbol_id_exchange')
    String get symbolIdExchange;

    /// CoinAPI symbol.
    @nullable
    @BuiltValueField(wireName: r'symbol_id_coinapi')
    String get symbolIdCoinapi;

    /// Calculated average price of all fills on this position.
    @nullable
    @BuiltValueField(wireName: r'avg_entry_price')
    num get avgEntryPrice;

    /// The current position quantity.
    @nullable
    @BuiltValueField(wireName: r'quantity')
    num get quantity;

    @nullable
    @BuiltValueField(wireName: r'side')
    OrdSide get side;
    // enum sideEnum {  BUY,  SELL,  };

    /// Unrealised profit or loss (PNL) of this position.
    @nullable
    @BuiltValueField(wireName: r'unrealized_pnl')
    num get unrealizedPnl;

    /// Leverage for this position reported by the exchange.
    @nullable
    @BuiltValueField(wireName: r'leverage')
    num get leverage;

    /// Is cross margin mode enable for this position?
    @nullable
    @BuiltValueField(wireName: r'cross_margin')
    bool get crossMargin;

    /// Liquidation price. If mark price will reach this value, the position will be liquidated.
    @nullable
    @BuiltValueField(wireName: r'liquidation_price')
    num get liquidationPrice;

    @nullable
    @BuiltValueField(wireName: r'raw_data')
    JsonObject get rawData;

    PositionData._();

    static void _initializeBuilder(PositionDataBuilder b) => b;

    factory PositionData([void updates(PositionDataBuilder b)]) = _$PositionData;

    @BuiltValueSerializer(custom: true)
    static Serializer<PositionData> get serializer => _$PositionDataSerializer();
}

class _$PositionDataSerializer implements StructuredSerializer<PositionData> {

    @override
    final Iterable<Type> types = const [PositionData, _$PositionData];
    @override
    final String wireName = r'PositionData';

    @override
    Iterable<Object> serialize(Serializers serializers, PositionData object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        if (object.symbolIdExchange != null) {
            result
                ..add(r'symbol_id_exchange')
                ..add(serializers.serialize(object.symbolIdExchange,
                    specifiedType: const FullType(String)));
        }
        if (object.symbolIdCoinapi != null) {
            result
                ..add(r'symbol_id_coinapi')
                ..add(serializers.serialize(object.symbolIdCoinapi,
                    specifiedType: const FullType(String)));
        }
        if (object.avgEntryPrice != null) {
            result
                ..add(r'avg_entry_price')
                ..add(serializers.serialize(object.avgEntryPrice,
                    specifiedType: const FullType(num)));
        }
        if (object.quantity != null) {
            result
                ..add(r'quantity')
                ..add(serializers.serialize(object.quantity,
                    specifiedType: const FullType(num)));
        }
        if (object.side != null) {
            result
                ..add(r'side')
                ..add(serializers.serialize(object.side,
                    specifiedType: const FullType(OrdSide)));
        }
        if (object.unrealizedPnl != null) {
            result
                ..add(r'unrealized_pnl')
                ..add(serializers.serialize(object.unrealizedPnl,
                    specifiedType: const FullType(num)));
        }
        if (object.leverage != null) {
            result
                ..add(r'leverage')
                ..add(serializers.serialize(object.leverage,
                    specifiedType: const FullType(num)));
        }
        if (object.crossMargin != null) {
            result
                ..add(r'cross_margin')
                ..add(serializers.serialize(object.crossMargin,
                    specifiedType: const FullType(bool)));
        }
        if (object.liquidationPrice != null) {
            result
                ..add(r'liquidation_price')
                ..add(serializers.serialize(object.liquidationPrice,
                    specifiedType: const FullType(num)));
        }
        if (object.rawData != null) {
            result
                ..add(r'raw_data')
                ..add(serializers.serialize(object.rawData,
                    specifiedType: const FullType(JsonObject)));
        }
        return result;
    }

    @override
    PositionData deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = PositionDataBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final dynamic value = iterator.current;
            switch (key) {
                case r'symbol_id_exchange':
                    result.symbolIdExchange = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'symbol_id_coinapi':
                    result.symbolIdCoinapi = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'avg_entry_price':
                    result.avgEntryPrice = serializers.deserialize(value,
                        specifiedType: const FullType(num)) as num;
                    break;
                case r'quantity':
                    result.quantity = serializers.deserialize(value,
                        specifiedType: const FullType(num)) as num;
                    break;
                case r'side':
                    result.side = serializers.deserialize(value,
                        specifiedType: const FullType(OrdSide)) as OrdSide;
                    break;
                case r'unrealized_pnl':
                    result.unrealizedPnl = serializers.deserialize(value,
                        specifiedType: const FullType(num)) as num;
                    break;
                case r'leverage':
                    result.leverage = serializers.deserialize(value,
                        specifiedType: const FullType(num)) as num;
                    break;
                case r'cross_margin':
                    result.crossMargin = serializers.deserialize(value,
                        specifiedType: const FullType(bool)) as bool;
                    break;
                case r'liquidation_price':
                    result.liquidationPrice = serializers.deserialize(value,
                        specifiedType: const FullType(num)) as num;
                    break;
                case r'raw_data':
                    result.rawData = serializers.deserialize(value,
                        specifiedType: const FullType(JsonObject)) as JsonObject;
                    break;
            }
        }
        return result.build();
    }
}

