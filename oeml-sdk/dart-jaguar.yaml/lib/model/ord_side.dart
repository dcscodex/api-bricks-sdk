import 'package:jaguar_serializer/jaguar_serializer.dart';



class OrdSide {
  /// The underlying value of this enum member.
  final String value;

  const OrdSide._internal(this.value);

  /// Side of order. 
  static const OrdSide bUY_ = const OrdSide._internal("BUY");
  /// Side of order. 
  static const OrdSide sELL_ = const OrdSide._internal("SELL");
}

class OrdSideFieldProcessor implements FieldProcessor<OrdSide, String> {
    const OrdSideFieldProcessor();

    OrdSide deserialize(String data) {
        switch (data) {
            case "BUY": return OrdSide.bUY_;
            case "SELL": return OrdSide.sELL_;
            default: throw('Unknown enum value to decode: $data');
        }
    }

    String serialize(OrdSide item) {
        return item.value;
    }
}

