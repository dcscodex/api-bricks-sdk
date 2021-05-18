//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'balance_data.g.dart';

abstract class BalanceData implements Built<BalanceData, BalanceDataBuilder> {

    /// Exchange currency code.
    @nullable
    @BuiltValueField(wireName: r'asset_id_exchange')
    String get assetIdExchange;

    /// CoinAPI currency code.
    @nullable
    @BuiltValueField(wireName: r'asset_id_coinapi')
    String get assetIdCoinapi;

    /// Value of the current total currency balance on the exchange.
    @nullable
    @BuiltValueField(wireName: r'balance')
    double get balance;

    /// Value of the current available currency balance on the exchange that can be used as collateral.
    @nullable
    @BuiltValueField(wireName: r'available')
    double get available;

    /// Value of the current locked currency balance by the exchange.
    @nullable
    @BuiltValueField(wireName: r'locked')
    double get locked;

    /// Source of the last modification. 
    @nullable
    @BuiltValueField(wireName: r'last_updated_by')
    BalanceDataLastUpdatedByEnum get lastUpdatedBy;
    // enum lastUpdatedByEnum {  INITIALIZATION,  BALANCE_MANAGER,  EXCHANGE,  };

    /// Current exchange rate to the USD for the single unit of the currency. 
    @nullable
    @BuiltValueField(wireName: r'rate_usd')
    double get rateUsd;

    /// Value of the current total traded.
    @nullable
    @BuiltValueField(wireName: r'traded')
    double get traded;

    BalanceData._();

    static void _initializeBuilder(BalanceDataBuilder b) => b;

    factory BalanceData([void updates(BalanceDataBuilder b)]) = _$BalanceData;

    @BuiltValueSerializer(custom: true)
    static Serializer<BalanceData> get serializer => _$BalanceDataSerializer();
}

class _$BalanceDataSerializer implements StructuredSerializer<BalanceData> {

    @override
    final Iterable<Type> types = const [BalanceData, _$BalanceData];
    @override
    final String wireName = r'BalanceData';

    @override
    Iterable<Object> serialize(Serializers serializers, BalanceData object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        if (object.assetIdExchange != null) {
            result
                ..add(r'asset_id_exchange')
                ..add(serializers.serialize(object.assetIdExchange,
                    specifiedType: const FullType(String)));
        }
        if (object.assetIdCoinapi != null) {
            result
                ..add(r'asset_id_coinapi')
                ..add(serializers.serialize(object.assetIdCoinapi,
                    specifiedType: const FullType(String)));
        }
        if (object.balance != null) {
            result
                ..add(r'balance')
                ..add(serializers.serialize(object.balance,
                    specifiedType: const FullType(double)));
        }
        if (object.available != null) {
            result
                ..add(r'available')
                ..add(serializers.serialize(object.available,
                    specifiedType: const FullType(double)));
        }
        if (object.locked != null) {
            result
                ..add(r'locked')
                ..add(serializers.serialize(object.locked,
                    specifiedType: const FullType(double)));
        }
        if (object.lastUpdatedBy != null) {
            result
                ..add(r'last_updated_by')
                ..add(serializers.serialize(object.lastUpdatedBy,
                    specifiedType: const FullType(BalanceDataLastUpdatedByEnum)));
        }
        if (object.rateUsd != null) {
            result
                ..add(r'rate_usd')
                ..add(serializers.serialize(object.rateUsd,
                    specifiedType: const FullType(double)));
        }
        if (object.traded != null) {
            result
                ..add(r'traded')
                ..add(serializers.serialize(object.traded,
                    specifiedType: const FullType(double)));
        }
        return result;
    }

    @override
    BalanceData deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = BalanceDataBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final dynamic value = iterator.current;
            switch (key) {
                case r'asset_id_exchange':
                    result.assetIdExchange = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'asset_id_coinapi':
                    result.assetIdCoinapi = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'balance':
                    result.balance = serializers.deserialize(value,
                        specifiedType: const FullType(double)) as double;
                    break;
                case r'available':
                    result.available = serializers.deserialize(value,
                        specifiedType: const FullType(double)) as double;
                    break;
                case r'locked':
                    result.locked = serializers.deserialize(value,
                        specifiedType: const FullType(double)) as double;
                    break;
                case r'last_updated_by':
                    result.lastUpdatedBy = serializers.deserialize(value,
                        specifiedType: const FullType(BalanceDataLastUpdatedByEnum)) as BalanceDataLastUpdatedByEnum;
                    break;
                case r'rate_usd':
                    result.rateUsd = serializers.deserialize(value,
                        specifiedType: const FullType(double)) as double;
                    break;
                case r'traded':
                    result.traded = serializers.deserialize(value,
                        specifiedType: const FullType(double)) as double;
                    break;
            }
        }
        return result.build();
    }
}

class BalanceDataLastUpdatedByEnum extends EnumClass {

  /// Source of the last modification. 
  @BuiltValueEnumConst(wireName: r'INITIALIZATION')
  static const BalanceDataLastUpdatedByEnum INITIALIZATION = _$balanceDataLastUpdatedByEnum_INITIALIZATION;
  /// Source of the last modification. 
  @BuiltValueEnumConst(wireName: r'BALANCE_MANAGER')
  static const BalanceDataLastUpdatedByEnum BALANCE_MANAGER = _$balanceDataLastUpdatedByEnum_BALANCE_MANAGER;
  /// Source of the last modification. 
  @BuiltValueEnumConst(wireName: r'EXCHANGE')
  static const BalanceDataLastUpdatedByEnum EXCHANGE = _$balanceDataLastUpdatedByEnum_EXCHANGE;

  static Serializer<BalanceDataLastUpdatedByEnum> get serializer => _$balanceDataLastUpdatedByEnumSerializer;

  const BalanceDataLastUpdatedByEnum._(String name): super(name);

  static BuiltSet<BalanceDataLastUpdatedByEnum> get values => _$balanceDataLastUpdatedByEnumValues;
  static BalanceDataLastUpdatedByEnum valueOf(String name) => _$balanceDataLastUpdatedByEnumValueOf(name);
}

