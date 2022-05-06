import 'package:jaguar_serializer/jaguar_serializer.dart';


part 'locations.jser.dart';

class Locations {
   /* CoinAPI location identifier */
  @Alias('location_id', isNullable: false,  )
  final String locationId;
   /* Identifier of the region by the location provider */
  @Alias('region_name', isNullable: false,  )
  final String regionName;
   /* Identifier of the location provider */
  @Alias('provider_name', isNullable: false,  )
  final String providerName;
  

  Locations(
      

{
     this.locationId = null,  
     this.regionName = null,  
     this.providerName = null 
    
    }
  );

  @override
  String toString() {
    return 'Locations[locationId=$locationId, regionName=$regionName, providerName=$providerName, ]';
  }
}

@GenSerializer(nullableFields: true)
class LocationsSerializer extends Serializer<Locations> with _$LocationsSerializer {

}

