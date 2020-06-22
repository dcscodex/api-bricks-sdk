        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cancel_all_order.g.dart';

abstract class CancelAllOrder implements Built<CancelAllOrder, CancelAllOrderBuilder> {

    /* Exchange name */
        @nullable
    @BuiltValueField(wireName: r'exchange_id')
    String get exchangeId;

    // Boilerplate code needed to wire-up generated code
    CancelAllOrder._();

    factory CancelAllOrder([updates(CancelAllOrderBuilder b)]) = _$CancelAllOrder;
    static Serializer<CancelAllOrder> get serializer => _$cancelAllOrderSerializer;

}

