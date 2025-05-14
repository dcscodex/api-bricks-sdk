@isTest
private class OASOHLCVTimeseriesItemTest {
    @isTest
    private static void equalsSameInstance() {
        OASOHLCVTimeseriesItem ohLCVTimeseriesItem1 = OASOHLCVTimeseriesItem.getExample();
        OASOHLCVTimeseriesItem ohLCVTimeseriesItem2 = ohLCVTimeseriesItem1;
        OASOHLCVTimeseriesItem ohLCVTimeseriesItem3 = new OASOHLCVTimeseriesItem();
        OASOHLCVTimeseriesItem ohLCVTimeseriesItem4 = ohLCVTimeseriesItem3;

        System.assert(ohLCVTimeseriesItem1.equals(ohLCVTimeseriesItem2));
        System.assert(ohLCVTimeseriesItem2.equals(ohLCVTimeseriesItem1));
        System.assert(ohLCVTimeseriesItem1.equals(ohLCVTimeseriesItem1));
        System.assert(ohLCVTimeseriesItem3.equals(ohLCVTimeseriesItem4));
        System.assert(ohLCVTimeseriesItem4.equals(ohLCVTimeseriesItem3));
        System.assert(ohLCVTimeseriesItem3.equals(ohLCVTimeseriesItem3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASOHLCVTimeseriesItem ohLCVTimeseriesItem1 = OASOHLCVTimeseriesItem.getExample();
        OASOHLCVTimeseriesItem ohLCVTimeseriesItem2 = OASOHLCVTimeseriesItem.getExample();
        OASOHLCVTimeseriesItem ohLCVTimeseriesItem3 = new OASOHLCVTimeseriesItem();
        OASOHLCVTimeseriesItem ohLCVTimeseriesItem4 = new OASOHLCVTimeseriesItem();

        System.assert(ohLCVTimeseriesItem1.equals(ohLCVTimeseriesItem2));
        System.assert(ohLCVTimeseriesItem2.equals(ohLCVTimeseriesItem1));
        System.assert(ohLCVTimeseriesItem3.equals(ohLCVTimeseriesItem4));
        System.assert(ohLCVTimeseriesItem4.equals(ohLCVTimeseriesItem3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASOHLCVTimeseriesItem ohLCVTimeseriesItem1 = OASOHLCVTimeseriesItem.getExample();
        OASOHLCVTimeseriesItem ohLCVTimeseriesItem2 = new OASOHLCVTimeseriesItem();

        System.assertEquals(false, ohLCVTimeseriesItem1.equals('foo'));
        System.assertEquals(false, ohLCVTimeseriesItem2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASOHLCVTimeseriesItem ohLCVTimeseriesItem1 = OASOHLCVTimeseriesItem.getExample();
        OASOHLCVTimeseriesItem ohLCVTimeseriesItem2 = new OASOHLCVTimeseriesItem();
        OASOHLCVTimeseriesItem ohLCVTimeseriesItem3;

        System.assertEquals(false, ohLCVTimeseriesItem1.equals(ohLCVTimeseriesItem3));
        System.assertEquals(false, ohLCVTimeseriesItem2.equals(ohLCVTimeseriesItem3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASOHLCVTimeseriesItem ohLCVTimeseriesItem1 = OASOHLCVTimeseriesItem.getExample();
        OASOHLCVTimeseriesItem ohLCVTimeseriesItem2 = new OASOHLCVTimeseriesItem();

        System.assertEquals(ohLCVTimeseriesItem1.hashCode(), ohLCVTimeseriesItem1.hashCode());
        System.assertEquals(ohLCVTimeseriesItem2.hashCode(), ohLCVTimeseriesItem2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASOHLCVTimeseriesItem ohLCVTimeseriesItem1 = OASOHLCVTimeseriesItem.getExample();
        OASOHLCVTimeseriesItem ohLCVTimeseriesItem2 = OASOHLCVTimeseriesItem.getExample();
        OASOHLCVTimeseriesItem ohLCVTimeseriesItem3 = new OASOHLCVTimeseriesItem();
        OASOHLCVTimeseriesItem ohLCVTimeseriesItem4 = new OASOHLCVTimeseriesItem();

        System.assert(ohLCVTimeseriesItem1.equals(ohLCVTimeseriesItem2));
        System.assert(ohLCVTimeseriesItem3.equals(ohLCVTimeseriesItem4));
        System.assertEquals(ohLCVTimeseriesItem1.hashCode(), ohLCVTimeseriesItem2.hashCode());
        System.assertEquals(ohLCVTimeseriesItem3.hashCode(), ohLCVTimeseriesItem4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASOHLCVTimeseriesItem ohLCVTimeseriesItem = new OASOHLCVTimeseriesItem();
        Map<String, String> x-property-mappings = ohLCVTimeseriesItem.getx-property-mappings();
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
