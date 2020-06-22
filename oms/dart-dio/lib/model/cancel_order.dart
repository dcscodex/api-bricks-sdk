        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cancel_order.g.dart';

abstract class CancelOrder implements Built<CancelOrder, CancelOrderBuilder> {

    /* Exchange name */
        @nullable
    @BuiltValueField(wireName: r'exchange_id')
    String get exchangeId;
    /* Order Id */
        @nullable
    @BuiltValueField(wireName: r'exchange_order_id')
    String get exchangeOrderId;
    /* Client order Id */
        @nullable
    @BuiltValueField(wireName: r'client_order_id')
    String get clientOrderId;

    // Boilerplate code needed to wire-up generated code
    CancelOrder._();

    factory CancelOrder([updates(CancelOrderBuilder b)]) = _$CancelOrder;
    static Serializer<CancelOrder> get serializer => _$cancelOrderSerializer;

}

