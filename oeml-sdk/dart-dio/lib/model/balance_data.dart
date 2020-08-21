        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'balance_data.g.dart';

abstract class BalanceData implements Built<BalanceData, BalanceDataBuilder> {

    /* Exchange currency code. */
        @nullable
    @BuiltValueField(wireName: r'asset_id_exchange')
    String get assetIdExchange;
    /* CoinAPI currency code. */
        @nullable
    @BuiltValueField(wireName: r'asset_id_coinapi')
    String get assetIdCoinapi;
    /* Value of the current total currency balance on the exchange. */
        @nullable
    @BuiltValueField(wireName: r'balance')
    double get balance;
    /* Value of the current available currency balance on the exchange that can be used as collateral. */
        @nullable
    @BuiltValueField(wireName: r'available')
    double get available;
    /* Value of the current locked currency balance by the exchange. */
        @nullable
    @BuiltValueField(wireName: r'locked')
    double get locked;
    /* Source of the last modification.  */
        @nullable
    @BuiltValueField(wireName: r'last_updated_by')
    String get lastUpdatedBy;
        //enum lastUpdatedByEnum {  INITIALIZATION,  BALANCE_MANAGER,  EXCHANGE,  };
    /* Current exchange rate to the USD for the single unit of the currency.  */
        @nullable
    @BuiltValueField(wireName: r'rate_usd')
    double get rateUsd;
    /* Value of the current total traded. */
        @nullable
    @BuiltValueField(wireName: r'traded')
    double get traded;

    // Boilerplate code needed to wire-up generated code
    BalanceData._();

    factory BalanceData([updates(BalanceDataBuilder b)]) = _$BalanceData;
    static Serializer<BalanceData> get serializer => _$balanceDataSerializer;

}

