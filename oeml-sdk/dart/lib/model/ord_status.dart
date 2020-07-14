part of openapi.api;

class OrdStatus {
  /// The underlying value of this enum member.
  final String value;

  const OrdStatus._internal(this.value);

  /// Order statuses and the lifecycle are documented in the separate section: &lt;a href&#x3D;\&quot;#oeml-order-lifecycle\&quot;&gt;OEML / Starter Guide / Order Lifecycle&lt;/a&gt; 
  static const OrdStatus rECEIVED_ = const OrdStatus._internal("RECEIVED");
  /// Order statuses and the lifecycle are documented in the separate section: &lt;a href&#x3D;\&quot;#oeml-order-lifecycle\&quot;&gt;OEML / Starter Guide / Order Lifecycle&lt;/a&gt; 
  static const OrdStatus rOUTING_ = const OrdStatus._internal("ROUTING");
  /// Order statuses and the lifecycle are documented in the separate section: &lt;a href&#x3D;\&quot;#oeml-order-lifecycle\&quot;&gt;OEML / Starter Guide / Order Lifecycle&lt;/a&gt; 
  static const OrdStatus rOUTED_ = const OrdStatus._internal("ROUTED");
  /// Order statuses and the lifecycle are documented in the separate section: &lt;a href&#x3D;\&quot;#oeml-order-lifecycle\&quot;&gt;OEML / Starter Guide / Order Lifecycle&lt;/a&gt; 
  static const OrdStatus nEW_ = const OrdStatus._internal("NEW");
  /// Order statuses and the lifecycle are documented in the separate section: &lt;a href&#x3D;\&quot;#oeml-order-lifecycle\&quot;&gt;OEML / Starter Guide / Order Lifecycle&lt;/a&gt; 
  static const OrdStatus pENDINGCANCEL_ = const OrdStatus._internal("PENDING_CANCEL");
  /// Order statuses and the lifecycle are documented in the separate section: &lt;a href&#x3D;\&quot;#oeml-order-lifecycle\&quot;&gt;OEML / Starter Guide / Order Lifecycle&lt;/a&gt; 
  static const OrdStatus pARTIALLYFILLED_ = const OrdStatus._internal("PARTIALLY_FILLED");
  /// Order statuses and the lifecycle are documented in the separate section: &lt;a href&#x3D;\&quot;#oeml-order-lifecycle\&quot;&gt;OEML / Starter Guide / Order Lifecycle&lt;/a&gt; 
  static const OrdStatus fILLED_ = const OrdStatus._internal("FILLED");
  /// Order statuses and the lifecycle are documented in the separate section: &lt;a href&#x3D;\&quot;#oeml-order-lifecycle\&quot;&gt;OEML / Starter Guide / Order Lifecycle&lt;/a&gt; 
  static const OrdStatus cANCELED_ = const OrdStatus._internal("CANCELED");
  /// Order statuses and the lifecycle are documented in the separate section: &lt;a href&#x3D;\&quot;#oeml-order-lifecycle\&quot;&gt;OEML / Starter Guide / Order Lifecycle&lt;/a&gt; 
  static const OrdStatus rEJECTED_ = const OrdStatus._internal("REJECTED");

  static OrdStatus fromJson(String value) {
    return new OrdStatusTypeTransformer().decode(value);
  }
  
  static List<OrdStatus> listFromJson(List<dynamic> json) {
    return json == null ? new List<OrdStatus>() : json.map((value) => OrdStatus.fromJson(value)).toList();
  }
}

class OrdStatusTypeTransformer {

  dynamic encode(OrdStatus data) {
    return data.value;
  }

  OrdStatus decode(dynamic data) {
    switch (data) {
      case "RECEIVED": return OrdStatus.rECEIVED_;
      case "ROUTING": return OrdStatus.rOUTING_;
      case "ROUTED": return OrdStatus.rOUTED_;
      case "NEW": return OrdStatus.nEW_;
      case "PENDING_CANCEL": return OrdStatus.pENDINGCANCEL_;
      case "PARTIALLY_FILLED": return OrdStatus.pARTIALLYFILLED_;
      case "FILLED": return OrdStatus.fILLED_;
      case "CANCELED": return OrdStatus.cANCELED_;
      case "REJECTED": return OrdStatus.rEJECTED_;
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

