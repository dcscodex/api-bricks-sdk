library serializers;

import 'package:built_value/iso_8601_date_time_serializer.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/standard_json_plugin.dart';

import 'package:openapi/model/balance.dart';
import 'package:openapi/model/balance_data.dart';
import 'package:openapi/model/cancel_all_order.dart';
import 'package:openapi/model/cancel_order.dart';
import 'package:openapi/model/create_order400.dart';
import 'package:openapi/model/messages.dart';
import 'package:openapi/model/messages_info.dart';
import 'package:openapi/model/messages_ok.dart';
import 'package:openapi/model/new_order.dart';
import 'package:openapi/model/order.dart';
import 'package:openapi/model/order_data.dart';
import 'package:openapi/model/order_live.dart';
import 'package:openapi/model/order_status.dart';
import 'package:openapi/model/position.dart';
import 'package:openapi/model/position_data.dart';
import 'package:openapi/model/time_in_force.dart';


part 'serializers.g.dart';

@SerializersFor(const [
Balance,
BalanceData,
CancelAllOrder,
CancelOrder,
CreateOrder400,
Messages,
MessagesInfo,
MessagesOk,
NewOrder,
Order,
OrderData,
OrderLive,
OrderStatus,
Position,
PositionData,
TimeInForce,

])

//allow all models to be serialized within a list
Serializers serializers = (_$serializers.toBuilder()
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(Balance)]),
() => new ListBuilder<Balance>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(BalanceData)]),
() => new ListBuilder<BalanceData>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(CancelAllOrder)]),
() => new ListBuilder<CancelAllOrder>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(CancelOrder)]),
() => new ListBuilder<CancelOrder>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(CreateOrder400)]),
() => new ListBuilder<CreateOrder400>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(Messages)]),
() => new ListBuilder<Messages>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(MessagesInfo)]),
() => new ListBuilder<MessagesInfo>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(MessagesOk)]),
() => new ListBuilder<MessagesOk>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(NewOrder)]),
() => new ListBuilder<NewOrder>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(Order)]),
() => new ListBuilder<Order>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(OrderData)]),
() => new ListBuilder<OrderData>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(OrderLive)]),
() => new ListBuilder<OrderLive>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(OrderStatus)]),
() => new ListBuilder<OrderStatus>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(Position)]),
() => new ListBuilder<Position>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(PositionData)]),
() => new ListBuilder<PositionData>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(TimeInForce)]),
() => new ListBuilder<TimeInForce>())

..add(Iso8601DateTimeSerializer())
).build();

Serializers standardSerializers =
(serializers.toBuilder()
..addPlugin(StandardJsonPlugin())).build();
