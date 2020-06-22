            import 'package:openapi/model/order_data.dart';
            import 'package:built_collection/built_collection.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'order.g.dart';

abstract class Order implements Built<Order, OrderBuilder> {

    /* null */
        @nullable
    @BuiltValueField(wireName: r'type')
    String get type;
    /* Exchange name */
        @nullable
    @BuiltValueField(wireName: r'exchange_name')
    String get exchangeName;
    /* Orders array */
        @nullable
    @BuiltValueField(wireName: r'data')
    BuiltList<OrderData> get data;

    // Boilerplate code needed to wire-up generated code
    Order._();

    factory Order([updates(OrderBuilder b)]) = _$Order;
    static Serializer<Order> get serializer => _$orderSerializer;

}

