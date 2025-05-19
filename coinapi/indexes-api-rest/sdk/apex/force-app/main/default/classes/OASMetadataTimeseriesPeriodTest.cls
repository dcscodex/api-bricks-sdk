@isTest
private class OASMetadataTimeseriesPeriodTest {
    @isTest
    private static void equalsSameInstance() {
        OASMetadataTimeseriesPeriod metadataTimeseriesPeriod1 = OASMetadataTimeseriesPeriod.getExample();
        OASMetadataTimeseriesPeriod metadataTimeseriesPeriod2 = metadataTimeseriesPeriod1;
        OASMetadataTimeseriesPeriod metadataTimeseriesPeriod3 = new OASMetadataTimeseriesPeriod();
        OASMetadataTimeseriesPeriod metadataTimeseriesPeriod4 = metadataTimeseriesPeriod3;

        System.assert(metadataTimeseriesPeriod1.equals(metadataTimeseriesPeriod2));
        System.assert(metadataTimeseriesPeriod2.equals(metadataTimeseriesPeriod1));
        System.assert(metadataTimeseriesPeriod1.equals(metadataTimeseriesPeriod1));
        System.assert(metadataTimeseriesPeriod3.equals(metadataTimeseriesPeriod4));
        System.assert(metadataTimeseriesPeriod4.equals(metadataTimeseriesPeriod3));
        System.assert(metadataTimeseriesPeriod3.equals(metadataTimeseriesPeriod3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASMetadataTimeseriesPeriod metadataTimeseriesPeriod1 = OASMetadataTimeseriesPeriod.getExample();
        OASMetadataTimeseriesPeriod metadataTimeseriesPeriod2 = OASMetadataTimeseriesPeriod.getExample();
        OASMetadataTimeseriesPeriod metadataTimeseriesPeriod3 = new OASMetadataTimeseriesPeriod();
        OASMetadataTimeseriesPeriod metadataTimeseriesPeriod4 = new OASMetadataTimeseriesPeriod();

        System.assert(metadataTimeseriesPeriod1.equals(metadataTimeseriesPeriod2));
        System.assert(metadataTimeseriesPeriod2.equals(metadataTimeseriesPeriod1));
        System.assert(metadataTimeseriesPeriod3.equals(metadataTimeseriesPeriod4));
        System.assert(metadataTimeseriesPeriod4.equals(metadataTimeseriesPeriod3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASMetadataTimeseriesPeriod metadataTimeseriesPeriod1 = OASMetadataTimeseriesPeriod.getExample();
        OASMetadataTimeseriesPeriod metadataTimeseriesPeriod2 = new OASMetadataTimeseriesPeriod();

        System.assertEquals(false, metadataTimeseriesPeriod1.equals('foo'));
        System.assertEquals(false, metadataTimeseriesPeriod2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASMetadataTimeseriesPeriod metadataTimeseriesPeriod1 = OASMetadataTimeseriesPeriod.getExample();
        OASMetadataTimeseriesPeriod metadataTimeseriesPeriod2 = new OASMetadataTimeseriesPeriod();
        OASMetadataTimeseriesPeriod metadataTimeseriesPeriod3;

        System.assertEquals(false, metadataTimeseriesPeriod1.equals(metadataTimeseriesPeriod3));
        System.assertEquals(false, metadataTimeseriesPeriod2.equals(metadataTimeseriesPeriod3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASMetadataTimeseriesPeriod metadataTimeseriesPeriod1 = OASMetadataTimeseriesPeriod.getExample();
        OASMetadataTimeseriesPeriod metadataTimeseriesPeriod2 = new OASMetadataTimeseriesPeriod();

        System.assertEquals(metadataTimeseriesPeriod1.hashCode(), metadataTimeseriesPeriod1.hashCode());
        System.assertEquals(metadataTimeseriesPeriod2.hashCode(), metadataTimeseriesPeriod2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASMetadataTimeseriesPeriod metadataTimeseriesPeriod1 = OASMetadataTimeseriesPeriod.getExample();
        OASMetadataTimeseriesPeriod metadataTimeseriesPeriod2 = OASMetadataTimeseriesPeriod.getExample();
        OASMetadataTimeseriesPeriod metadataTimeseriesPeriod3 = new OASMetadataTimeseriesPeriod();
        OASMetadataTimeseriesPeriod metadataTimeseriesPeriod4 = new OASMetadataTimeseriesPeriod();

        System.assert(metadataTimeseriesPeriod1.equals(metadataTimeseriesPeriod2));
        System.assert(metadataTimeseriesPeriod3.equals(metadataTimeseriesPeriod4));
        System.assertEquals(metadataTimeseriesPeriod1.hashCode(), metadataTimeseriesPeriod2.hashCode());
        System.assertEquals(metadataTimeseriesPeriod3.hashCode(), metadataTimeseriesPeriod4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASMetadataTimeseriesPeriod metadataTimeseriesPeriod = new OASMetadataTimeseriesPeriod();
        Map<String, String> x-property-mappings = metadataTimeseriesPeriod.getx-property-mappings();
        System.assertEquals('periodId', x-property-mappings.get('period_id'));
        System.assertEquals('lengthSeconds', x-property-mappings.get('length_seconds'));
        System.assertEquals('lengthMonths', x-property-mappings.get('length_months'));
        System.assertEquals('unitCount', x-property-mappings.get('unit_count'));
        System.assertEquals('unitName', x-property-mappings.get('unit_name'));
        System.assertEquals('displayName', x-property-mappings.get('display_name'));
    }
}
