        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'position_data.g.dart';

abstract class PositionData implements Built<PositionData, PositionDataBuilder> {

    /* Unique position ID */
        @nullable
    @BuiltValueField(wireName: r'id')
    String get id;
    /* The contract for this position. */
        @nullable
    @BuiltValueField(wireName: r'symbol_exchange')
    String get symbolExchange;
    /* The coinapi contract for this position. */
        @nullable
    @BuiltValueField(wireName: r'symbol_coinapi')
    String get symbolCoinapi;
    
        @nullable
    @BuiltValueField(wireName: r'avg_entry_price')
    num get avgEntryPrice;
    /* The current position amount in contracts. */
        @nullable
    @BuiltValueField(wireName: r'quantity')
    num get quantity;
    
        @nullable
    @BuiltValueField(wireName: r'is_buy')
    bool get isBuy;
    /* Unrealised PNL is all the unrealised profit or loss coming from your portfolio's open positions. */
        @nullable
    @BuiltValueField(wireName: r'unrealised_pn_l')
    num get unrealisedPnL;
    /* 1 / initMarginReq. */
        @nullable
    @BuiltValueField(wireName: r'leverage')
    num get leverage;
    /* True/false depending on whether you set cross margin on this position. */
        @nullable
    @BuiltValueField(wireName: r'cross_margin')
    bool get crossMargin;
    /* Once markPrice reaches this price, this position will be liquidated. */
        @nullable
    @BuiltValueField(wireName: r'liquidation_price')
    num get liquidationPrice;
    
        @nullable
    @BuiltValueField(wireName: r'raw_data')
    String get rawData;

    // Boilerplate code needed to wire-up generated code
    PositionData._();

    factory PositionData([updates(PositionDataBuilder b)]) = _$PositionData;
    static Serializer<PositionData> get serializer => _$positionDataSerializer;

}

