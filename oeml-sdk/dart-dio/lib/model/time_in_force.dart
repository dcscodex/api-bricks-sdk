        import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'time_in_force.g.dart';

class TimeInForce extends EnumClass {

  /// Order time in force options are documented in the separate section: &lt;a href&#x3D;\&quot;#oeml-order-params-tif\&quot;&gt;OEML / Starter Guide / Order parameters / Time in force&lt;/a&gt; 
  @BuiltValueEnumConst(wireName: "GOOD_TILL_CANCEL")
  static const TimeInForce gOODTILLCANCEL = _$gOODTILLCANCEL;
  /// Order time in force options are documented in the separate section: &lt;a href&#x3D;\&quot;#oeml-order-params-tif\&quot;&gt;OEML / Starter Guide / Order parameters / Time in force&lt;/a&gt; 
  @BuiltValueEnumConst(wireName: "GOOD_TILL_TIME_EXCHANGE")
  static const TimeInForce gOODTILLTIMEEXCHANGE = _$gOODTILLTIMEEXCHANGE;
  /// Order time in force options are documented in the separate section: &lt;a href&#x3D;\&quot;#oeml-order-params-tif\&quot;&gt;OEML / Starter Guide / Order parameters / Time in force&lt;/a&gt; 
  @BuiltValueEnumConst(wireName: "GOOD_TILL_TIME_OMS")
  static const TimeInForce gOODTILLTIMEOMS = _$gOODTILLTIMEOMS;
  /// Order time in force options are documented in the separate section: &lt;a href&#x3D;\&quot;#oeml-order-params-tif\&quot;&gt;OEML / Starter Guide / Order parameters / Time in force&lt;/a&gt; 
  @BuiltValueEnumConst(wireName: "FILL_OR_KILL")
  static const TimeInForce fILLORKILL = _$fILLORKILL;
  /// Order time in force options are documented in the separate section: &lt;a href&#x3D;\&quot;#oeml-order-params-tif\&quot;&gt;OEML / Starter Guide / Order parameters / Time in force&lt;/a&gt; 
  @BuiltValueEnumConst(wireName: "IMMEDIATE_OR_CANCEL")
  static const TimeInForce iMMEDIATEORCANCEL = _$iMMEDIATEORCANCEL;

  static Serializer<TimeInForce> get serializer => _$timeInForceSerializer;

  const TimeInForce._(String name): super(name);

  static BuiltSet<TimeInForce> get values => _$values;
  static TimeInForce valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class TimeInForceMixin = Object with _$TimeInForceMixin;

