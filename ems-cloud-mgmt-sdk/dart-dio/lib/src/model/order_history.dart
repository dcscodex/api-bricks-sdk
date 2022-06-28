//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/date.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'order_history.g.dart';

/// OrderHistory
///
/// Properties:
/// * [apikey] - Apikey
/// * [exchangeId] - Exchange id
/// * [clientOrderId] - Client order id
/// * [symbolIdExchange] - Symbol id exchange
/// * [symbolIdCoinapi] - Symbol id in coinapi
/// * [amountOrder] - Amount
/// * [price] - Price
/// * [side] - 1-buy, 2-sell
/// * [orderType] - Order type
/// * [timeInForce] - Time in force
/// * [expireTime] - Expire time
/// * [execInst] - Exec inst
/// * [clientOrderIdFormatExchange] - Client order id format
/// * [exchangeOrderId] - Exchange order id
/// * [amountOpen] - Amount open
/// * [amountFilled] - Amount filled
/// * [avgPx] - Average price
/// * [status] - Status
/// * [statusHistoryStatus] - History status
/// * [statusHistoryTime] - History status time
/// * [errorMessageResult] - Error message
/// * [errorMessageReason] - Error message reason
/// * [errorMessageMessage] - Error message
/// * [fillsTime] - Fills time
/// * [fillsPrice] - Fills price
/// * [fillsAmount] - Fills amount
/// * [createdTime] - Created time
abstract class OrderHistory implements Built<OrderHistory, OrderHistoryBuilder> {
    /// Apikey
    @BuiltValueField(wireName: r'apikey')
    String? get apikey;

    /// Exchange id
    @BuiltValueField(wireName: r'exchangeId')
    String? get exchangeId;

    /// Client order id
    @BuiltValueField(wireName: r'clientOrderId')
    String? get clientOrderId;

    /// Symbol id exchange
    @BuiltValueField(wireName: r'symbolIdExchange')
    String? get symbolIdExchange;

    /// Symbol id in coinapi
    @BuiltValueField(wireName: r'symbolIdCoinapi')
    String? get symbolIdCoinapi;

    /// Amount
    @BuiltValueField(wireName: r'amountOrder')
    num? get amountOrder;

    /// Price
    @BuiltValueField(wireName: r'price')
    num? get price;

    /// 1-buy, 2-sell
    @BuiltValueField(wireName: r'side')
    num? get side;

    /// Order type
    @BuiltValueField(wireName: r'orderType')
    String? get orderType;

    /// Time in force
    @BuiltValueField(wireName: r'timeInForce')
    String? get timeInForce;

    /// Expire time
    @BuiltValueField(wireName: r'expireTime')
    Date? get expireTime;

    /// Exec inst
    @BuiltValueField(wireName: r'execInst')
    BuiltList<String>? get execInst;

    /// Client order id format
    @BuiltValueField(wireName: r'clientOrderIdFormatExchange')
    String? get clientOrderIdFormatExchange;

    /// Exchange order id
    @BuiltValueField(wireName: r'exchangeOrderId')
    String? get exchangeOrderId;

    /// Amount open
    @BuiltValueField(wireName: r'amountOpen')
    num? get amountOpen;

    /// Amount filled
    @BuiltValueField(wireName: r'amountFilled')
    num? get amountFilled;

    /// Average price
    @BuiltValueField(wireName: r'avgPx')
    num? get avgPx;

    /// Status
    @BuiltValueField(wireName: r'status')
    String? get status;

    /// History status
    @BuiltValueField(wireName: r'statusHistoryStatus')
    BuiltList<String>? get statusHistoryStatus;

    /// History status time
    @BuiltValueField(wireName: r'statusHistoryTime')
    BuiltList<Date>? get statusHistoryTime;

    /// Error message
    @BuiltValueField(wireName: r'errorMessageResult')
    String? get errorMessageResult;

    /// Error message reason
    @BuiltValueField(wireName: r'errorMessageReason')
    String? get errorMessageReason;

    /// Error message
    @BuiltValueField(wireName: r'errorMessageMessage')
    String? get errorMessageMessage;

    /// Fills time
    @BuiltValueField(wireName: r'fillsTime')
    BuiltList<Date>? get fillsTime;

    /// Fills price
    @BuiltValueField(wireName: r'fillsPrice')
    BuiltList<num>? get fillsPrice;

    /// Fills amount
    @BuiltValueField(wireName: r'fillsAmount')
    BuiltList<num>? get fillsAmount;

    /// Created time
    @BuiltValueField(wireName: r'createdTime')
    Date? get createdTime;

    OrderHistory._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(OrderHistoryBuilder b) => b;

    factory OrderHistory([void updates(OrderHistoryBuilder b)]) = _$OrderHistory;

    @BuiltValueSerializer(custom: true)
    static Serializer<OrderHistory> get serializer => _$OrderHistorySerializer();
}

class _$OrderHistorySerializer implements StructuredSerializer<OrderHistory> {
    @override
    final Iterable<Type> types = const [OrderHistory, _$OrderHistory];

    @override
    final String wireName = r'OrderHistory';

    @override
    Iterable<Object?> serialize(Serializers serializers, OrderHistory object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.apikey != null) {
            result
                ..add(r'apikey')
                ..add(serializers.serialize(object.apikey,
                    specifiedType: const FullType(String)));
        }
        if (object.exchangeId != null) {
            result
                ..add(r'exchangeId')
                ..add(serializers.serialize(object.exchangeId,
                    specifiedType: const FullType(String)));
        }
        if (object.clientOrderId != null) {
            result
                ..add(r'clientOrderId')
                ..add(serializers.serialize(object.clientOrderId,
                    specifiedType: const FullType(String)));
        }
        if (object.symbolIdExchange != null) {
            result
                ..add(r'symbolIdExchange')
                ..add(serializers.serialize(object.symbolIdExchange,
                    specifiedType: const FullType(String)));
        }
        if (object.symbolIdCoinapi != null) {
            result
                ..add(r'symbolIdCoinapi')
                ..add(serializers.serialize(object.symbolIdCoinapi,
                    specifiedType: const FullType(String)));
        }
        if (object.amountOrder != null) {
            result
                ..add(r'amountOrder')
                ..add(serializers.serialize(object.amountOrder,
                    specifiedType: const FullType(num)));
        }
        if (object.price != null) {
            result
                ..add(r'price')
                ..add(serializers.serialize(object.price,
                    specifiedType: const FullType(num)));
        }
        if (object.side != null) {
            result
                ..add(r'side')
                ..add(serializers.serialize(object.side,
                    specifiedType: const FullType(num)));
        }
        if (object.orderType != null) {
            result
                ..add(r'orderType')
                ..add(serializers.serialize(object.orderType,
                    specifiedType: const FullType(String)));
        }
        if (object.timeInForce != null) {
            result
                ..add(r'timeInForce')
                ..add(serializers.serialize(object.timeInForce,
                    specifiedType: const FullType(String)));
        }
        if (object.expireTime != null) {
            result
                ..add(r'expireTime')
                ..add(serializers.serialize(object.expireTime,
                    specifiedType: const FullType(Date)));
        }
        if (object.execInst != null) {
            result
                ..add(r'execInst')
                ..add(serializers.serialize(object.execInst,
                    specifiedType: const FullType(BuiltList, [FullType(String)])));
        }
        if (object.clientOrderIdFormatExchange != null) {
            result
                ..add(r'clientOrderIdFormatExchange')
                ..add(serializers.serialize(object.clientOrderIdFormatExchange,
                    specifiedType: const FullType(String)));
        }
        if (object.exchangeOrderId != null) {
            result
                ..add(r'exchangeOrderId')
                ..add(serializers.serialize(object.exchangeOrderId,
                    specifiedType: const FullType(String)));
        }
        if (object.amountOpen != null) {
            result
                ..add(r'amountOpen')
                ..add(serializers.serialize(object.amountOpen,
                    specifiedType: const FullType(num)));
        }
        if (object.amountFilled != null) {
            result
                ..add(r'amountFilled')
                ..add(serializers.serialize(object.amountFilled,
                    specifiedType: const FullType(num)));
        }
        if (object.avgPx != null) {
            result
                ..add(r'avgPx')
                ..add(serializers.serialize(object.avgPx,
                    specifiedType: const FullType(num)));
        }
        if (object.status != null) {
            result
                ..add(r'status')
                ..add(serializers.serialize(object.status,
                    specifiedType: const FullType(String)));
        }
        if (object.statusHistoryStatus != null) {
            result
                ..add(r'statusHistoryStatus')
                ..add(serializers.serialize(object.statusHistoryStatus,
                    specifiedType: const FullType(BuiltList, [FullType(String)])));
        }
        if (object.statusHistoryTime != null) {
            result
                ..add(r'statusHistoryTime')
                ..add(serializers.serialize(object.statusHistoryTime,
                    specifiedType: const FullType(BuiltList, [FullType(Date)])));
        }
        if (object.errorMessageResult != null) {
            result
                ..add(r'errorMessageResult')
                ..add(serializers.serialize(object.errorMessageResult,
                    specifiedType: const FullType(String)));
        }
        if (object.errorMessageReason != null) {
            result
                ..add(r'errorMessageReason')
                ..add(serializers.serialize(object.errorMessageReason,
                    specifiedType: const FullType(String)));
        }
        if (object.errorMessageMessage != null) {
            result
                ..add(r'errorMessageMessage')
                ..add(serializers.serialize(object.errorMessageMessage,
                    specifiedType: const FullType(String)));
        }
        if (object.fillsTime != null) {
            result
                ..add(r'fillsTime')
                ..add(serializers.serialize(object.fillsTime,
                    specifiedType: const FullType(BuiltList, [FullType(Date)])));
        }
        if (object.fillsPrice != null) {
            result
                ..add(r'fillsPrice')
                ..add(serializers.serialize(object.fillsPrice,
                    specifiedType: const FullType(BuiltList, [FullType(num)])));
        }
        if (object.fillsAmount != null) {
            result
                ..add(r'fillsAmount')
                ..add(serializers.serialize(object.fillsAmount,
                    specifiedType: const FullType(BuiltList, [FullType(num)])));
        }
        if (object.createdTime != null) {
            result
                ..add(r'createdTime')
                ..add(serializers.serialize(object.createdTime,
                    specifiedType: const FullType(Date)));
        }
        return result;
    }

    @override
    OrderHistory deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = OrderHistoryBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'apikey':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.apikey = valueDes;
                    break;
                case r'exchangeId':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.exchangeId = valueDes;
                    break;
                case r'clientOrderId':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.clientOrderId = valueDes;
                    break;
                case r'symbolIdExchange':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.symbolIdExchange = valueDes;
                    break;
                case r'symbolIdCoinapi':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.symbolIdCoinapi = valueDes;
                    break;
                case r'amountOrder':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(num)) as num;
                    result.amountOrder = valueDes;
                    break;
                case r'price':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(num)) as num;
                    result.price = valueDes;
                    break;
                case r'side':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(num)) as num;
                    result.side = valueDes;
                    break;
                case r'orderType':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.orderType = valueDes;
                    break;
                case r'timeInForce':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.timeInForce = valueDes;
                    break;
                case r'expireTime':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(Date)) as Date;
                    result.expireTime = valueDes;
                    break;
                case r'execInst':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(String)])) as BuiltList<String>;
                    result.execInst.replace(valueDes);
                    break;
                case r'clientOrderIdFormatExchange':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.clientOrderIdFormatExchange = valueDes;
                    break;
                case r'exchangeOrderId':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.exchangeOrderId = valueDes;
                    break;
                case r'amountOpen':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(num)) as num;
                    result.amountOpen = valueDes;
                    break;
                case r'amountFilled':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(num)) as num;
                    result.amountFilled = valueDes;
                    break;
                case r'avgPx':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(num)) as num;
                    result.avgPx = valueDes;
                    break;
                case r'status':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.status = valueDes;
                    break;
                case r'statusHistoryStatus':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(String)])) as BuiltList<String>;
                    result.statusHistoryStatus.replace(valueDes);
                    break;
                case r'statusHistoryTime':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(Date)])) as BuiltList<Date>;
                    result.statusHistoryTime.replace(valueDes);
                    break;
                case r'errorMessageResult':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.errorMessageResult = valueDes;
                    break;
                case r'errorMessageReason':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.errorMessageReason = valueDes;
                    break;
                case r'errorMessageMessage':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.errorMessageMessage = valueDes;
                    break;
                case r'fillsTime':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(Date)])) as BuiltList<Date>;
                    result.fillsTime.replace(valueDes);
                    break;
                case r'fillsPrice':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(num)])) as BuiltList<num>;
                    result.fillsPrice.replace(valueDes);
                    break;
                case r'fillsAmount':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(num)])) as BuiltList<num>;
                    result.fillsAmount.replace(valueDes);
                    break;
                case r'createdTime':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(Date)) as Date;
                    result.createdTime = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

