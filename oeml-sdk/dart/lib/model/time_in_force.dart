part of openapi.api;

class TimeInForce {
  /// The underlying value of this enum member.
  final String value;

  const TimeInForce._internal(this.value);

  /// Order time in force options are documented in the separate section: &lt;a href&#x3D;\&quot;#oeml-order-params-tif\&quot;&gt;OEML / Starter Guide / Order parameters / Time in force&lt;/a&gt; 
  static const TimeInForce gOODTILLCANCEL_ = const TimeInForce._internal("GOOD_TILL_CANCEL");
  /// Order time in force options are documented in the separate section: &lt;a href&#x3D;\&quot;#oeml-order-params-tif\&quot;&gt;OEML / Starter Guide / Order parameters / Time in force&lt;/a&gt; 
  static const TimeInForce gOODTILLTIMEEXCHANGE_ = const TimeInForce._internal("GOOD_TILL_TIME_EXCHANGE");
  /// Order time in force options are documented in the separate section: &lt;a href&#x3D;\&quot;#oeml-order-params-tif\&quot;&gt;OEML / Starter Guide / Order parameters / Time in force&lt;/a&gt; 
  static const TimeInForce gOODTILLTIMEOMS_ = const TimeInForce._internal("GOOD_TILL_TIME_OMS");
  /// Order time in force options are documented in the separate section: &lt;a href&#x3D;\&quot;#oeml-order-params-tif\&quot;&gt;OEML / Starter Guide / Order parameters / Time in force&lt;/a&gt; 
  static const TimeInForce fILLORKILL_ = const TimeInForce._internal("FILL_OR_KILL");
  /// Order time in force options are documented in the separate section: &lt;a href&#x3D;\&quot;#oeml-order-params-tif\&quot;&gt;OEML / Starter Guide / Order parameters / Time in force&lt;/a&gt; 
  static const TimeInForce iMMEDIATEORCANCEL_ = const TimeInForce._internal("IMMEDIATE_OR_CANCEL");

  static TimeInForce fromJson(String value) {
    return new TimeInForceTypeTransformer().decode(value);
  }
  
  static List<TimeInForce> listFromJson(List<dynamic> json) {
    return json == null ? new List<TimeInForce>() : json.map((value) => TimeInForce.fromJson(value)).toList();
  }
}

class TimeInForceTypeTransformer {

  dynamic encode(TimeInForce data) {
    return data.value;
  }

  TimeInForce decode(dynamic data) {
    switch (data) {
      case "GOOD_TILL_CANCEL": return TimeInForce.gOODTILLCANCEL_;
      case "GOOD_TILL_TIME_EXCHANGE": return TimeInForce.gOODTILLTIMEEXCHANGE_;
      case "GOOD_TILL_TIME_OMS": return TimeInForce.gOODTILLTIMEOMS_;
      case "FILL_OR_KILL": return TimeInForce.fILLORKILL_;
      case "IMMEDIATE_OR_CANCEL": return TimeInForce.iMMEDIATEORCANCEL_;
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

