@isTest
private class OASV1TimeseriesItemTest {
    @isTest
    private static void equalsSameInstance() {
        OASV1TimeseriesItem v1TimeseriesItem1 = OASV1TimeseriesItem.getExample();
        OASV1TimeseriesItem v1TimeseriesItem2 = v1TimeseriesItem1;
        OASV1TimeseriesItem v1TimeseriesItem3 = new OASV1TimeseriesItem();
        OASV1TimeseriesItem v1TimeseriesItem4 = v1TimeseriesItem3;

        System.assert(v1TimeseriesItem1.equals(v1TimeseriesItem2));
        System.assert(v1TimeseriesItem2.equals(v1TimeseriesItem1));
        System.assert(v1TimeseriesItem1.equals(v1TimeseriesItem1));
        System.assert(v1TimeseriesItem3.equals(v1TimeseriesItem4));
        System.assert(v1TimeseriesItem4.equals(v1TimeseriesItem3));
        System.assert(v1TimeseriesItem3.equals(v1TimeseriesItem3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASV1TimeseriesItem v1TimeseriesItem1 = OASV1TimeseriesItem.getExample();
        OASV1TimeseriesItem v1TimeseriesItem2 = OASV1TimeseriesItem.getExample();
        OASV1TimeseriesItem v1TimeseriesItem3 = new OASV1TimeseriesItem();
        OASV1TimeseriesItem v1TimeseriesItem4 = new OASV1TimeseriesItem();

        System.assert(v1TimeseriesItem1.equals(v1TimeseriesItem2));
        System.assert(v1TimeseriesItem2.equals(v1TimeseriesItem1));
        System.assert(v1TimeseriesItem3.equals(v1TimeseriesItem4));
        System.assert(v1TimeseriesItem4.equals(v1TimeseriesItem3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASV1TimeseriesItem v1TimeseriesItem1 = OASV1TimeseriesItem.getExample();
        OASV1TimeseriesItem v1TimeseriesItem2 = new OASV1TimeseriesItem();

        System.assertEquals(false, v1TimeseriesItem1.equals('foo'));
        System.assertEquals(false, v1TimeseriesItem2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASV1TimeseriesItem v1TimeseriesItem1 = OASV1TimeseriesItem.getExample();
        OASV1TimeseriesItem v1TimeseriesItem2 = new OASV1TimeseriesItem();
        OASV1TimeseriesItem v1TimeseriesItem3;

        System.assertEquals(false, v1TimeseriesItem1.equals(v1TimeseriesItem3));
        System.assertEquals(false, v1TimeseriesItem2.equals(v1TimeseriesItem3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASV1TimeseriesItem v1TimeseriesItem1 = OASV1TimeseriesItem.getExample();
        OASV1TimeseriesItem v1TimeseriesItem2 = new OASV1TimeseriesItem();

        System.assertEquals(v1TimeseriesItem1.hashCode(), v1TimeseriesItem1.hashCode());
        System.assertEquals(v1TimeseriesItem2.hashCode(), v1TimeseriesItem2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASV1TimeseriesItem v1TimeseriesItem1 = OASV1TimeseriesItem.getExample();
        OASV1TimeseriesItem v1TimeseriesItem2 = OASV1TimeseriesItem.getExample();
        OASV1TimeseriesItem v1TimeseriesItem3 = new OASV1TimeseriesItem();
        OASV1TimeseriesItem v1TimeseriesItem4 = new OASV1TimeseriesItem();

        System.assert(v1TimeseriesItem1.equals(v1TimeseriesItem2));
        System.assert(v1TimeseriesItem3.equals(v1TimeseriesItem4));
        System.assertEquals(v1TimeseriesItem1.hashCode(), v1TimeseriesItem2.hashCode());
        System.assertEquals(v1TimeseriesItem3.hashCode(), v1TimeseriesItem4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASV1TimeseriesItem v1TimeseriesItem = new OASV1TimeseriesItem();
        Map<String, String> x-property-mappings = v1TimeseriesItem.getx-property-mappings();
        System.assertEquals('timePeriodStart', x-property-mappings.get('time_period_start'));
        System.assertEquals('timePeriodEnd', x-property-mappings.get('time_period_end'));
        System.assertEquals('timeOpen', x-property-mappings.get('time_open'));
        System.assertEquals('timeClose', x-property-mappings.get('time_close'));
        System.assertEquals('priceOpen', x-property-mappings.get('price_open'));
        System.assertEquals('priceHigh', x-property-mappings.get('price_high'));
        System.assertEquals('priceLow', x-property-mappings.get('price_low'));
        System.assertEquals('priceClose', x-property-mappings.get('price_close'));
        System.assertEquals('volumeTraded', x-property-mappings.get('volume_traded'));
        System.assertEquals('tradesCount', x-property-mappings.get('trades_count'));
    }
}
