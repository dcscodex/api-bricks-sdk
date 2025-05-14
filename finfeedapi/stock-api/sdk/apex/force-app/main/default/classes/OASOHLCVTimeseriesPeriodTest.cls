@isTest
private class OASOHLCVTimeseriesPeriodTest {
    @isTest
    private static void equalsSameInstance() {
        OASOHLCVTimeseriesPeriod ohLCVTimeseriesPeriod1 = OASOHLCVTimeseriesPeriod.getExample();
        OASOHLCVTimeseriesPeriod ohLCVTimeseriesPeriod2 = ohLCVTimeseriesPeriod1;
        OASOHLCVTimeseriesPeriod ohLCVTimeseriesPeriod3 = new OASOHLCVTimeseriesPeriod();
        OASOHLCVTimeseriesPeriod ohLCVTimeseriesPeriod4 = ohLCVTimeseriesPeriod3;

        System.assert(ohLCVTimeseriesPeriod1.equals(ohLCVTimeseriesPeriod2));
        System.assert(ohLCVTimeseriesPeriod2.equals(ohLCVTimeseriesPeriod1));
        System.assert(ohLCVTimeseriesPeriod1.equals(ohLCVTimeseriesPeriod1));
        System.assert(ohLCVTimeseriesPeriod3.equals(ohLCVTimeseriesPeriod4));
        System.assert(ohLCVTimeseriesPeriod4.equals(ohLCVTimeseriesPeriod3));
        System.assert(ohLCVTimeseriesPeriod3.equals(ohLCVTimeseriesPeriod3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASOHLCVTimeseriesPeriod ohLCVTimeseriesPeriod1 = OASOHLCVTimeseriesPeriod.getExample();
        OASOHLCVTimeseriesPeriod ohLCVTimeseriesPeriod2 = OASOHLCVTimeseriesPeriod.getExample();
        OASOHLCVTimeseriesPeriod ohLCVTimeseriesPeriod3 = new OASOHLCVTimeseriesPeriod();
        OASOHLCVTimeseriesPeriod ohLCVTimeseriesPeriod4 = new OASOHLCVTimeseriesPeriod();

        System.assert(ohLCVTimeseriesPeriod1.equals(ohLCVTimeseriesPeriod2));
        System.assert(ohLCVTimeseriesPeriod2.equals(ohLCVTimeseriesPeriod1));
        System.assert(ohLCVTimeseriesPeriod3.equals(ohLCVTimeseriesPeriod4));
        System.assert(ohLCVTimeseriesPeriod4.equals(ohLCVTimeseriesPeriod3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASOHLCVTimeseriesPeriod ohLCVTimeseriesPeriod1 = OASOHLCVTimeseriesPeriod.getExample();
        OASOHLCVTimeseriesPeriod ohLCVTimeseriesPeriod2 = new OASOHLCVTimeseriesPeriod();

        System.assertEquals(false, ohLCVTimeseriesPeriod1.equals('foo'));
        System.assertEquals(false, ohLCVTimeseriesPeriod2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASOHLCVTimeseriesPeriod ohLCVTimeseriesPeriod1 = OASOHLCVTimeseriesPeriod.getExample();
        OASOHLCVTimeseriesPeriod ohLCVTimeseriesPeriod2 = new OASOHLCVTimeseriesPeriod();
        OASOHLCVTimeseriesPeriod ohLCVTimeseriesPeriod3;

        System.assertEquals(false, ohLCVTimeseriesPeriod1.equals(ohLCVTimeseriesPeriod3));
        System.assertEquals(false, ohLCVTimeseriesPeriod2.equals(ohLCVTimeseriesPeriod3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASOHLCVTimeseriesPeriod ohLCVTimeseriesPeriod1 = OASOHLCVTimeseriesPeriod.getExample();
        OASOHLCVTimeseriesPeriod ohLCVTimeseriesPeriod2 = new OASOHLCVTimeseriesPeriod();

        System.assertEquals(ohLCVTimeseriesPeriod1.hashCode(), ohLCVTimeseriesPeriod1.hashCode());
        System.assertEquals(ohLCVTimeseriesPeriod2.hashCode(), ohLCVTimeseriesPeriod2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASOHLCVTimeseriesPeriod ohLCVTimeseriesPeriod1 = OASOHLCVTimeseriesPeriod.getExample();
        OASOHLCVTimeseriesPeriod ohLCVTimeseriesPeriod2 = OASOHLCVTimeseriesPeriod.getExample();
        OASOHLCVTimeseriesPeriod ohLCVTimeseriesPeriod3 = new OASOHLCVTimeseriesPeriod();
        OASOHLCVTimeseriesPeriod ohLCVTimeseriesPeriod4 = new OASOHLCVTimeseriesPeriod();

        System.assert(ohLCVTimeseriesPeriod1.equals(ohLCVTimeseriesPeriod2));
        System.assert(ohLCVTimeseriesPeriod3.equals(ohLCVTimeseriesPeriod4));
        System.assertEquals(ohLCVTimeseriesPeriod1.hashCode(), ohLCVTimeseriesPeriod2.hashCode());
        System.assertEquals(ohLCVTimeseriesPeriod3.hashCode(), ohLCVTimeseriesPeriod4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASOHLCVTimeseriesPeriod ohLCVTimeseriesPeriod = new OASOHLCVTimeseriesPeriod();
        Map<String, String> x-property-mappings = ohLCVTimeseriesPeriod.getx-property-mappings();
        System.assertEquals('periodId', x-property-mappings.get('period_id'));
        System.assertEquals('lengthSeconds', x-property-mappings.get('length_seconds'));
        System.assertEquals('lengthMonths', x-property-mappings.get('length_months'));
        System.assertEquals('unitCount', x-property-mappings.get('unit_count'));
        System.assertEquals('unitName', x-property-mappings.get('unit_name'));
        System.assertEquals('displayName', x-property-mappings.get('display_name'));
    }
}
