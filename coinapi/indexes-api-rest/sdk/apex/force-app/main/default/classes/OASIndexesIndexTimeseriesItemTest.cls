@isTest
private class OASIndexesIndexTimeseriesItemTest {
    @isTest
    private static void equalsSameInstance() {
        OASIndexesIndexTimeseriesItem indexesIndexTimeseriesItem1 = OASIndexesIndexTimeseriesItem.getExample();
        OASIndexesIndexTimeseriesItem indexesIndexTimeseriesItem2 = indexesIndexTimeseriesItem1;
        OASIndexesIndexTimeseriesItem indexesIndexTimeseriesItem3 = new OASIndexesIndexTimeseriesItem();
        OASIndexesIndexTimeseriesItem indexesIndexTimeseriesItem4 = indexesIndexTimeseriesItem3;

        System.assert(indexesIndexTimeseriesItem1.equals(indexesIndexTimeseriesItem2));
        System.assert(indexesIndexTimeseriesItem2.equals(indexesIndexTimeseriesItem1));
        System.assert(indexesIndexTimeseriesItem1.equals(indexesIndexTimeseriesItem1));
        System.assert(indexesIndexTimeseriesItem3.equals(indexesIndexTimeseriesItem4));
        System.assert(indexesIndexTimeseriesItem4.equals(indexesIndexTimeseriesItem3));
        System.assert(indexesIndexTimeseriesItem3.equals(indexesIndexTimeseriesItem3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASIndexesIndexTimeseriesItem indexesIndexTimeseriesItem1 = OASIndexesIndexTimeseriesItem.getExample();
        OASIndexesIndexTimeseriesItem indexesIndexTimeseriesItem2 = OASIndexesIndexTimeseriesItem.getExample();
        OASIndexesIndexTimeseriesItem indexesIndexTimeseriesItem3 = new OASIndexesIndexTimeseriesItem();
        OASIndexesIndexTimeseriesItem indexesIndexTimeseriesItem4 = new OASIndexesIndexTimeseriesItem();

        System.assert(indexesIndexTimeseriesItem1.equals(indexesIndexTimeseriesItem2));
        System.assert(indexesIndexTimeseriesItem2.equals(indexesIndexTimeseriesItem1));
        System.assert(indexesIndexTimeseriesItem3.equals(indexesIndexTimeseriesItem4));
        System.assert(indexesIndexTimeseriesItem4.equals(indexesIndexTimeseriesItem3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASIndexesIndexTimeseriesItem indexesIndexTimeseriesItem1 = OASIndexesIndexTimeseriesItem.getExample();
        OASIndexesIndexTimeseriesItem indexesIndexTimeseriesItem2 = new OASIndexesIndexTimeseriesItem();

        System.assertEquals(false, indexesIndexTimeseriesItem1.equals('foo'));
        System.assertEquals(false, indexesIndexTimeseriesItem2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASIndexesIndexTimeseriesItem indexesIndexTimeseriesItem1 = OASIndexesIndexTimeseriesItem.getExample();
        OASIndexesIndexTimeseriesItem indexesIndexTimeseriesItem2 = new OASIndexesIndexTimeseriesItem();
        OASIndexesIndexTimeseriesItem indexesIndexTimeseriesItem3;

        System.assertEquals(false, indexesIndexTimeseriesItem1.equals(indexesIndexTimeseriesItem3));
        System.assertEquals(false, indexesIndexTimeseriesItem2.equals(indexesIndexTimeseriesItem3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASIndexesIndexTimeseriesItem indexesIndexTimeseriesItem1 = OASIndexesIndexTimeseriesItem.getExample();
        OASIndexesIndexTimeseriesItem indexesIndexTimeseriesItem2 = new OASIndexesIndexTimeseriesItem();

        System.assertEquals(indexesIndexTimeseriesItem1.hashCode(), indexesIndexTimeseriesItem1.hashCode());
        System.assertEquals(indexesIndexTimeseriesItem2.hashCode(), indexesIndexTimeseriesItem2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASIndexesIndexTimeseriesItem indexesIndexTimeseriesItem1 = OASIndexesIndexTimeseriesItem.getExample();
        OASIndexesIndexTimeseriesItem indexesIndexTimeseriesItem2 = OASIndexesIndexTimeseriesItem.getExample();
        OASIndexesIndexTimeseriesItem indexesIndexTimeseriesItem3 = new OASIndexesIndexTimeseriesItem();
        OASIndexesIndexTimeseriesItem indexesIndexTimeseriesItem4 = new OASIndexesIndexTimeseriesItem();

        System.assert(indexesIndexTimeseriesItem1.equals(indexesIndexTimeseriesItem2));
        System.assert(indexesIndexTimeseriesItem3.equals(indexesIndexTimeseriesItem4));
        System.assertEquals(indexesIndexTimeseriesItem1.hashCode(), indexesIndexTimeseriesItem2.hashCode());
        System.assertEquals(indexesIndexTimeseriesItem3.hashCode(), indexesIndexTimeseriesItem4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASIndexesIndexTimeseriesItem indexesIndexTimeseriesItem = new OASIndexesIndexTimeseriesItem();
        Map<String, String> x-property-mappings = indexesIndexTimeseriesItem.getx-property-mappings();
        System.assertEquals('timePeriodStart', x-property-mappings.get('time_period_start'));
        System.assertEquals('timePeriodEnd', x-property-mappings.get('time_period_end'));
        System.assertEquals('timeOpen', x-property-mappings.get('time_open'));
        System.assertEquals('timeClose', x-property-mappings.get('time_close'));
        System.assertEquals('valueOpen', x-property-mappings.get('value_open'));
        System.assertEquals('valueHigh', x-property-mappings.get('value_high'));
        System.assertEquals('valueLow', x-property-mappings.get('value_low'));
        System.assertEquals('valueClose', x-property-mappings.get('value_close'));
        System.assertEquals('valueCount', x-property-mappings.get('value_count'));
    }
}
