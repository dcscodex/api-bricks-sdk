part of openapi.api;

class OrdType {
  /// The underlying value of this enum member.
  final String value;

  const OrdType._internal(this.value);

  /// Order types are documented in the separate section: &lt;a href&#x3D;\&quot;#oeml-order-params-type\&quot;&gt;OEML / Starter Guide / Order parameters / Order type&lt;/a&gt; 
  static const OrdType lIMIT_ = const OrdType._internal("LIMIT");

  static OrdType fromJson(String value) {
    return new OrdTypeTypeTransformer().decode(value);
  }
  
  static List<OrdType> listFromJson(List<dynamic> json) {
    return json == null ? new List<OrdType>() : json.map((value) => OrdType.fromJson(value)).toList();
  }
}

class OrdTypeTypeTransformer {

  dynamic encode(OrdType data) {
    return data.value;
  }

  OrdType decode(dynamic data) {
    switch (data) {
      case "LIMIT": return OrdType.lIMIT_;
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

