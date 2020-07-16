part of openapi.api;

class OrdSide {
  /// The underlying value of this enum member.
  final String value;

  const OrdSide._internal(this.value);

  /// Side of order. 
  static const OrdSide bUY_ = const OrdSide._internal("BUY");
  /// Side of order. 
  static const OrdSide sELL_ = const OrdSide._internal("SELL");

  static OrdSide fromJson(String value) {
    return new OrdSideTypeTransformer().decode(value);
  }
  
  static List<OrdSide> listFromJson(List<dynamic> json) {
    return json == null ? new List<OrdSide>() : json.map((value) => OrdSide.fromJson(value)).toList();
  }
}

class OrdSideTypeTransformer {

  dynamic encode(OrdSide data) {
    return data.value;
  }

  OrdSide decode(dynamic data) {
    switch (data) {
      case "BUY": return OrdSide.bUY_;
      case "SELL": return OrdSide.sELL_;
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

