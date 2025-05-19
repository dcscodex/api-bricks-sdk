//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'indexes_index_timeseries_item.g.dart';

/// Represents a timeseries item with value information.
///
/// Properties:
/// * [timePeriodStart] - Gets or sets the start time of the time period.
/// * [timePeriodEnd] - Gets or sets the end time of the time period.
/// * [timeOpen] - Gets or sets the time when the value opened.
/// * [timeClose] - Gets or sets the time when the value closed.
/// * [valueOpen] - Gets or sets the opening value.
/// * [valueHigh] - Gets or sets the highest value during the time period.
/// * [valueLow] - Gets or sets the lowest value during the time period.
/// * [valueClose] - Gets or sets the closing value.
/// * [valueCount] - Gets or sets the number of values during the time period.
@BuiltValue()
abstract class IndexesIndexTimeseriesItem implements Built<IndexesIndexTimeseriesItem, IndexesIndexTimeseriesItemBuilder> {
  /// Gets or sets the start time of the time period.
  @BuiltValueField(wireName: r'time_period_start')
  DateTime? get timePeriodStart;

  /// Gets or sets the end time of the time period.
  @BuiltValueField(wireName: r'time_period_end')
  DateTime? get timePeriodEnd;

  /// Gets or sets the time when the value opened.
  @BuiltValueField(wireName: r'time_open')
  DateTime? get timeOpen;

  /// Gets or sets the time when the value closed.
  @BuiltValueField(wireName: r'time_close')
  DateTime? get timeClose;

  /// Gets or sets the opening value.
  @BuiltValueField(wireName: r'value_open')
  double? get valueOpen;

  /// Gets or sets the highest value during the time period.
  @BuiltValueField(wireName: r'value_high')
  double? get valueHigh;

  /// Gets or sets the lowest value during the time period.
  @BuiltValueField(wireName: r'value_low')
  double? get valueLow;

  /// Gets or sets the closing value.
  @BuiltValueField(wireName: r'value_close')
  double? get valueClose;

  /// Gets or sets the number of values during the time period.
  @BuiltValueField(wireName: r'value_count')
  int? get valueCount;

  IndexesIndexTimeseriesItem._();

  factory IndexesIndexTimeseriesItem([void updates(IndexesIndexTimeseriesItemBuilder b)]) = _$IndexesIndexTimeseriesItem;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IndexesIndexTimeseriesItemBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IndexesIndexTimeseriesItem> get serializer => _$IndexesIndexTimeseriesItemSerializer();
}

class _$IndexesIndexTimeseriesItemSerializer implements PrimitiveSerializer<IndexesIndexTimeseriesItem> {
  @override
  final Iterable<Type> types = const [IndexesIndexTimeseriesItem, _$IndexesIndexTimeseriesItem];

  @override
  final String wireName = r'IndexesIndexTimeseriesItem';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IndexesIndexTimeseriesItem object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.timePeriodStart != null) {
      yield r'time_period_start';
      yield serializers.serialize(
        object.timePeriodStart,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.timePeriodEnd != null) {
      yield r'time_period_end';
      yield serializers.serialize(
        object.timePeriodEnd,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.timeOpen != null) {
      yield r'time_open';
      yield serializers.serialize(
        object.timeOpen,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.timeClose != null) {
      yield r'time_close';
      yield serializers.serialize(
        object.timeClose,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.valueOpen != null) {
      yield r'value_open';
      yield serializers.serialize(
        object.valueOpen,
        specifiedType: const FullType.nullable(double),
      );
    }
    if (object.valueHigh != null) {
      yield r'value_high';
      yield serializers.serialize(
        object.valueHigh,
        specifiedType: const FullType.nullable(double),
      );
    }
    if (object.valueLow != null) {
      yield r'value_low';
      yield serializers.serialize(
        object.valueLow,
        specifiedType: const FullType.nullable(double),
      );
    }
    if (object.valueClose != null) {
      yield r'value_close';
      yield serializers.serialize(
        object.valueClose,
        specifiedType: const FullType.nullable(double),
      );
    }
    if (object.valueCount != null) {
      yield r'value_count';
      yield serializers.serialize(
        object.valueCount,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IndexesIndexTimeseriesItem object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IndexesIndexTimeseriesItemBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'time_period_start':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.timePeriodStart = valueDes;
          break;
        case r'time_period_end':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.timePeriodEnd = valueDes;
          break;
        case r'time_open':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.timeOpen = valueDes;
          break;
        case r'time_close':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.timeClose = valueDes;
          break;
        case r'value_open':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(double),
          ) as double?;
          if (valueDes == null) continue;
          result.valueOpen = valueDes;
          break;
        case r'value_high':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(double),
          ) as double?;
          if (valueDes == null) continue;
          result.valueHigh = valueDes;
          break;
        case r'value_low':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(double),
          ) as double?;
          if (valueDes == null) continue;
          result.valueLow = valueDes;
          break;
        case r'value_close':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(double),
          ) as double?;
          if (valueDes == null) continue;
          result.valueClose = valueDes;
          break;
        case r'value_count':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.valueCount = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IndexesIndexTimeseriesItem deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IndexesIndexTimeseriesItemBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

