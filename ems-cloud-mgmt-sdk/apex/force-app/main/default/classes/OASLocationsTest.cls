@isTest
private class OASLocationsTest {
    @isTest
    private static void equalsSameInstance() {
        OASLocations locations1 = OASLocations.getExample();
        OASLocations locations2 = locations1;
        OASLocations locations3 = new OASLocations();
        OASLocations locations4 = locations3;

        System.assert(locations1.equals(locations2));
        System.assert(locations2.equals(locations1));
        System.assert(locations1.equals(locations1));
        System.assert(locations3.equals(locations4));
        System.assert(locations4.equals(locations3));
        System.assert(locations3.equals(locations3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASLocations locations1 = OASLocations.getExample();
        OASLocations locations2 = OASLocations.getExample();
        OASLocations locations3 = new OASLocations();
        OASLocations locations4 = new OASLocations();

        System.assert(locations1.equals(locations2));
        System.assert(locations2.equals(locations1));
        System.assert(locations3.equals(locations4));
        System.assert(locations4.equals(locations3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASLocations locations1 = OASLocations.getExample();
        OASLocations locations2 = new OASLocations();

        System.assertEquals(false, locations1.equals('foo'));
        System.assertEquals(false, locations2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASLocations locations1 = OASLocations.getExample();
        OASLocations locations2 = new OASLocations();
        OASLocations locations3;

        System.assertEquals(false, locations1.equals(locations3));
        System.assertEquals(false, locations2.equals(locations3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASLocations locations1 = OASLocations.getExample();
        OASLocations locations2 = new OASLocations();

        System.assertEquals(locations1.hashCode(), locations1.hashCode());
        System.assertEquals(locations2.hashCode(), locations2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASLocations locations1 = OASLocations.getExample();
        OASLocations locations2 = OASLocations.getExample();
        OASLocations locations3 = new OASLocations();
        OASLocations locations4 = new OASLocations();

        System.assert(locations1.equals(locations2));
        System.assert(locations3.equals(locations4));
        System.assertEquals(locations1.hashCode(), locations2.hashCode());
        System.assertEquals(locations3.hashCode(), locations4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASLocations locations = new OASLocations();
        Map<String, String> x-property-mappings = locations.getx-property-mappings();
        System.assertEquals('locationId', x-property-mappings.get('location_id'));
        System.assertEquals('regionName', x-property-mappings.get('region_name'));
        System.assertEquals('providerName', x-property-mappings.get('provider_name'));
    }
}
