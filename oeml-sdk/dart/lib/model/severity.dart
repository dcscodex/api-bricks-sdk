part of openapi.api;

class Severity {
  /// The underlying value of this enum member.
  final String value;

  const Severity._internal(this.value);

  /// Severity of the message.
  static const Severity iNFO_ = const Severity._internal("INFO");
  /// Severity of the message.
  static const Severity wARNING_ = const Severity._internal("WARNING");
  /// Severity of the message.
  static const Severity eRROR_ = const Severity._internal("ERROR");

  static Severity fromJson(String value) {
    return new SeverityTypeTransformer().decode(value);
  }
  
  static List<Severity> listFromJson(List<dynamic> json) {
    return json == null ? new List<Severity>() : json.map((value) => Severity.fromJson(value)).toList();
  }
}

class SeverityTypeTransformer {

  dynamic encode(Severity data) {
    return data.value;
  }

  Severity decode(dynamic data) {
    switch (data) {
      case "INFO": return Severity.iNFO_;
      case "WARNING": return Severity.wARNING_;
      case "ERROR": return Severity.eRROR_;
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

