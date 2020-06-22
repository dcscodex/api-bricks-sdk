        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'balance_data.g.dart';

abstract class BalanceData implements Built<BalanceData, BalanceDataBuilder> {

    /* symbol_exchange */
        @nullable
    @BuiltValueField(wireName: r'id')
    String get id;
    /* Currency code. */
        @nullable
    @BuiltValueField(wireName: r'symbol_exchange')
    String get symbolExchange;
    /* CoinAPI currency code. */
        @nullable
    @BuiltValueField(wireName: r'symbol_coinapi')
    String get symbolCoinapi;
    /* The current balance. */
        @nullable
    @BuiltValueField(wireName: r'balance')
    double get balance;
    /* The amount that is available to trade. */
        @nullable
    @BuiltValueField(wireName: r'available')
    double get available;
    /* Blocked funds. */
        @nullable
    @BuiltValueField(wireName: r'locked')
    double get locked;
    /* Source of last modification.  */
        @nullable
    @BuiltValueField(wireName: r'update_origin')
    String get updateOrigin;
        //enum updateOriginEnum {  INITIALIZATION,  BALANCE_MANAGER,  EXCHANGE,  };

    // Boilerplate code needed to wire-up generated code
    BalanceData._();

    factory BalanceData([updates(BalanceDataBuilder b)]) = _$BalanceData;
    static Serializer<BalanceData> get serializer => _$balanceDataSerializer;

}

