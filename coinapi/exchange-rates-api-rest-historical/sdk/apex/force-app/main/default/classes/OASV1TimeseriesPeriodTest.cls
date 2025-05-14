@isTest
private class OASV1TimeseriesPeriodTest {
    @isTest
    private static void equalsSameInstance() {
        OASV1TimeseriesPeriod v1TimeseriesPeriod1 = OASV1TimeseriesPeriod.getExample();
        OASV1TimeseriesPeriod v1TimeseriesPeriod2 = v1TimeseriesPeriod1;
        OASV1TimeseriesPeriod v1TimeseriesPeriod3 = new OASV1TimeseriesPeriod();
        OASV1TimeseriesPeriod v1TimeseriesPeriod4 = v1TimeseriesPeriod3;

        System.assert(v1TimeseriesPeriod1.equals(v1TimeseriesPeriod2));
        System.assert(v1TimeseriesPeriod2.equals(v1TimeseriesPeriod1));
        System.assert(v1TimeseriesPeriod1.equals(v1TimeseriesPeriod1));
        System.assert(v1TimeseriesPeriod3.equals(v1TimeseriesPeriod4));
        System.assert(v1TimeseriesPeriod4.equals(v1TimeseriesPeriod3));
        System.assert(v1TimeseriesPeriod3.equals(v1TimeseriesPeriod3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASV1TimeseriesPeriod v1TimeseriesPeriod1 = OASV1TimeseriesPeriod.getExample();
        OASV1TimeseriesPeriod v1TimeseriesPeriod2 = OASV1TimeseriesPeriod.getExample();
        OASV1TimeseriesPeriod v1TimeseriesPeriod3 = new OASV1TimeseriesPeriod();
        OASV1TimeseriesPeriod v1TimeseriesPeriod4 = new OASV1TimeseriesPeriod();

        System.assert(v1TimeseriesPeriod1.equals(v1TimeseriesPeriod2));
        System.assert(v1TimeseriesPeriod2.equals(v1TimeseriesPeriod1));
        System.assert(v1TimeseriesPeriod3.equals(v1TimeseriesPeriod4));
        System.assert(v1TimeseriesPeriod4.equals(v1TimeseriesPeriod3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASV1TimeseriesPeriod v1TimeseriesPeriod1 = OASV1TimeseriesPeriod.getExample();
        OASV1TimeseriesPeriod v1TimeseriesPeriod2 = new OASV1TimeseriesPeriod();

        System.assertEquals(false, v1TimeseriesPeriod1.equals('foo'));
        System.assertEquals(false, v1TimeseriesPeriod2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASV1TimeseriesPeriod v1TimeseriesPeriod1 = OASV1TimeseriesPeriod.getExample();
        OASV1TimeseriesPeriod v1TimeseriesPeriod2 = new OASV1TimeseriesPeriod();
        OASV1TimeseriesPeriod v1TimeseriesPeriod3;

        System.assertEquals(false, v1TimeseriesPeriod1.equals(v1TimeseriesPeriod3));
        System.assertEquals(false, v1TimeseriesPeriod2.equals(v1TimeseriesPeriod3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASV1TimeseriesPeriod v1TimeseriesPeriod1 = OASV1TimeseriesPeriod.getExample();
        OASV1TimeseriesPeriod v1TimeseriesPeriod2 = new OASV1TimeseriesPeriod();

        System.assertEquals(v1TimeseriesPeriod1.hashCode(), v1TimeseriesPeriod1.hashCode());
        System.assertEquals(v1TimeseriesPeriod2.hashCode(), v1TimeseriesPeriod2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASV1TimeseriesPeriod v1TimeseriesPeriod1 = OASV1TimeseriesPeriod.getExample();
        OASV1TimeseriesPeriod v1TimeseriesPeriod2 = OASV1TimeseriesPeriod.getExample();
        OASV1TimeseriesPeriod v1TimeseriesPeriod3 = new OASV1TimeseriesPeriod();
        OASV1TimeseriesPeriod v1TimeseriesPeriod4 = new OASV1TimeseriesPeriod();

        System.assert(v1TimeseriesPeriod1.equals(v1TimeseriesPeriod2));
        System.assert(v1TimeseriesPeriod3.equals(v1TimeseriesPeriod4));
        System.assertEquals(v1TimeseriesPeriod1.hashCode(), v1TimeseriesPeriod2.hashCode());
        System.assertEquals(v1TimeseriesPeriod3.hashCode(), v1TimeseriesPeriod4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASV1TimeseriesPeriod v1TimeseriesPeriod = new OASV1TimeseriesPeriod();
        Map<String, String> x-property-mappings = v1TimeseriesPeriod.getx-property-mappings();
        System.assertEquals('periodId', x-property-mappings.get('period_id'));
        System.assertEquals('lengthSeconds', x-property-mappings.get('length_seconds'));
        System.assertEquals('lengthMonths', x-property-mappings.get('length_months'));
        System.assertEquals('unitCount', x-property-mappings.get('unit_count'));
        System.assertEquals('unitName', x-property-mappings.get('unit_name'));
        System.assertEquals('displayName', x-property-mappings.get('display_name'));
    }
}
