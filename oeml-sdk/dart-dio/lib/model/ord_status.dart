        import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ord_status.g.dart';

class OrdStatus extends EnumClass {

  /// Order statuses and the lifecycle are documented in the separate section: &lt;a href&#x3D;\&quot;#oeml-order-lifecycle\&quot;&gt;OEML / Starter Guide / Order Lifecycle&lt;/a&gt; 
  @BuiltValueEnumConst(wireName: "RECEIVED")
  static const OrdStatus rECEIVED = _$rECEIVED;
  /// Order statuses and the lifecycle are documented in the separate section: &lt;a href&#x3D;\&quot;#oeml-order-lifecycle\&quot;&gt;OEML / Starter Guide / Order Lifecycle&lt;/a&gt; 
  @BuiltValueEnumConst(wireName: "ROUTING")
  static const OrdStatus rOUTING = _$rOUTING;
  /// Order statuses and the lifecycle are documented in the separate section: &lt;a href&#x3D;\&quot;#oeml-order-lifecycle\&quot;&gt;OEML / Starter Guide / Order Lifecycle&lt;/a&gt; 
  @BuiltValueEnumConst(wireName: "ROUTED")
  static const OrdStatus rOUTED = _$rOUTED;
  /// Order statuses and the lifecycle are documented in the separate section: &lt;a href&#x3D;\&quot;#oeml-order-lifecycle\&quot;&gt;OEML / Starter Guide / Order Lifecycle&lt;/a&gt; 
  @BuiltValueEnumConst(wireName: "NEW")
  static const OrdStatus nEW_ = _$nEW_;
  /// Order statuses and the lifecycle are documented in the separate section: &lt;a href&#x3D;\&quot;#oeml-order-lifecycle\&quot;&gt;OEML / Starter Guide / Order Lifecycle&lt;/a&gt; 
  @BuiltValueEnumConst(wireName: "PENDING_CANCEL")
  static const OrdStatus pENDINGCANCEL = _$pENDINGCANCEL;
  /// Order statuses and the lifecycle are documented in the separate section: &lt;a href&#x3D;\&quot;#oeml-order-lifecycle\&quot;&gt;OEML / Starter Guide / Order Lifecycle&lt;/a&gt; 
  @BuiltValueEnumConst(wireName: "PARTIALLY_FILLED")
  static const OrdStatus pARTIALLYFILLED = _$pARTIALLYFILLED;
  /// Order statuses and the lifecycle are documented in the separate section: &lt;a href&#x3D;\&quot;#oeml-order-lifecycle\&quot;&gt;OEML / Starter Guide / Order Lifecycle&lt;/a&gt; 
  @BuiltValueEnumConst(wireName: "FILLED")
  static const OrdStatus fILLED = _$fILLED;
  /// Order statuses and the lifecycle are documented in the separate section: &lt;a href&#x3D;\&quot;#oeml-order-lifecycle\&quot;&gt;OEML / Starter Guide / Order Lifecycle&lt;/a&gt; 
  @BuiltValueEnumConst(wireName: "CANCELED")
  static const OrdStatus cANCELED = _$cANCELED;
  /// Order statuses and the lifecycle are documented in the separate section: &lt;a href&#x3D;\&quot;#oeml-order-lifecycle\&quot;&gt;OEML / Starter Guide / Order Lifecycle&lt;/a&gt; 
  @BuiltValueEnumConst(wireName: "REJECTED")
  static const OrdStatus rEJECTED = _$rEJECTED;

  static Serializer<OrdStatus> get serializer => _$ordStatusSerializer;

  const OrdStatus._(String name): super(name);

  static BuiltSet<OrdStatus> get values => _$values;
  static OrdStatus valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class OrdStatusMixin = Object with _$OrdStatusMixin;

