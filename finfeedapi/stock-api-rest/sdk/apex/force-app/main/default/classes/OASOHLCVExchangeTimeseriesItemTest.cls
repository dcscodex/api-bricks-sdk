@isTest
private class OASOHLCVExchangeTimeseriesItemTest {
    @isTest
    private static void equalsSameInstance() {
        OASOHLCVExchangeTimeseriesItem ohLCVExchangeTimeseriesItem1 = OASOHLCVExchangeTimeseriesItem.getExample();
        OASOHLCVExchangeTimeseriesItem ohLCVExchangeTimeseriesItem2 = ohLCVExchangeTimeseriesItem1;
        OASOHLCVExchangeTimeseriesItem ohLCVExchangeTimeseriesItem3 = new OASOHLCVExchangeTimeseriesItem();
        OASOHLCVExchangeTimeseriesItem ohLCVExchangeTimeseriesItem4 = ohLCVExchangeTimeseriesItem3;

        System.assert(ohLCVExchangeTimeseriesItem1.equals(ohLCVExchangeTimeseriesItem2));
        System.assert(ohLCVExchangeTimeseriesItem2.equals(ohLCVExchangeTimeseriesItem1));
        System.assert(ohLCVExchangeTimeseriesItem1.equals(ohLCVExchangeTimeseriesItem1));
        System.assert(ohLCVExchangeTimeseriesItem3.equals(ohLCVExchangeTimeseriesItem4));
        System.assert(ohLCVExchangeTimeseriesItem4.equals(ohLCVExchangeTimeseriesItem3));
        System.assert(ohLCVExchangeTimeseriesItem3.equals(ohLCVExchangeTimeseriesItem3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASOHLCVExchangeTimeseriesItem ohLCVExchangeTimeseriesItem1 = OASOHLCVExchangeTimeseriesItem.getExample();
        OASOHLCVExchangeTimeseriesItem ohLCVExchangeTimeseriesItem2 = OASOHLCVExchangeTimeseriesItem.getExample();
        OASOHLCVExchangeTimeseriesItem ohLCVExchangeTimeseriesItem3 = new OASOHLCVExchangeTimeseriesItem();
        OASOHLCVExchangeTimeseriesItem ohLCVExchangeTimeseriesItem4 = new OASOHLCVExchangeTimeseriesItem();

        System.assert(ohLCVExchangeTimeseriesItem1.equals(ohLCVExchangeTimeseriesItem2));
        System.assert(ohLCVExchangeTimeseriesItem2.equals(ohLCVExchangeTimeseriesItem1));
        System.assert(ohLCVExchangeTimeseriesItem3.equals(ohLCVExchangeTimeseriesItem4));
        System.assert(ohLCVExchangeTimeseriesItem4.equals(ohLCVExchangeTimeseriesItem3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASOHLCVExchangeTimeseriesItem ohLCVExchangeTimeseriesItem1 = OASOHLCVExchangeTimeseriesItem.getExample();
        OASOHLCVExchangeTimeseriesItem ohLCVExchangeTimeseriesItem2 = new OASOHLCVExchangeTimeseriesItem();

        System.assertEquals(false, ohLCVExchangeTimeseriesItem1.equals('foo'));
        System.assertEquals(false, ohLCVExchangeTimeseriesItem2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASOHLCVExchangeTimeseriesItem ohLCVExchangeTimeseriesItem1 = OASOHLCVExchangeTimeseriesItem.getExample();
        OASOHLCVExchangeTimeseriesItem ohLCVExchangeTimeseriesItem2 = new OASOHLCVExchangeTimeseriesItem();
        OASOHLCVExchangeTimeseriesItem ohLCVExchangeTimeseriesItem3;

        System.assertEquals(false, ohLCVExchangeTimeseriesItem1.equals(ohLCVExchangeTimeseriesItem3));
        System.assertEquals(false, ohLCVExchangeTimeseriesItem2.equals(ohLCVExchangeTimeseriesItem3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASOHLCVExchangeTimeseriesItem ohLCVExchangeTimeseriesItem1 = OASOHLCVExchangeTimeseriesItem.getExample();
        OASOHLCVExchangeTimeseriesItem ohLCVExchangeTimeseriesItem2 = new OASOHLCVExchangeTimeseriesItem();

        System.assertEquals(ohLCVExchangeTimeseriesItem1.hashCode(), ohLCVExchangeTimeseriesItem1.hashCode());
        System.assertEquals(ohLCVExchangeTimeseriesItem2.hashCode(), ohLCVExchangeTimeseriesItem2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASOHLCVExchangeTimeseriesItem ohLCVExchangeTimeseriesItem1 = OASOHLCVExchangeTimeseriesItem.getExample();
        OASOHLCVExchangeTimeseriesItem ohLCVExchangeTimeseriesItem2 = OASOHLCVExchangeTimeseriesItem.getExample();
        OASOHLCVExchangeTimeseriesItem ohLCVExchangeTimeseriesItem3 = new OASOHLCVExchangeTimeseriesItem();
        OASOHLCVExchangeTimeseriesItem ohLCVExchangeTimeseriesItem4 = new OASOHLCVExchangeTimeseriesItem();

        System.assert(ohLCVExchangeTimeseriesItem1.equals(ohLCVExchangeTimeseriesItem2));
        System.assert(ohLCVExchangeTimeseriesItem3.equals(ohLCVExchangeTimeseriesItem4));
        System.assertEquals(ohLCVExchangeTimeseriesItem1.hashCode(), ohLCVExchangeTimeseriesItem2.hashCode());
        System.assertEquals(ohLCVExchangeTimeseriesItem3.hashCode(), ohLCVExchangeTimeseriesItem4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASOHLCVExchangeTimeseriesItem ohLCVExchangeTimeseriesItem = new OASOHLCVExchangeTimeseriesItem();
        Map<String, String> x-property-mappings = ohLCVExchangeTimeseriesItem.getx-property-mappings();
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
        System.assertEquals('symbolIdExchange', x-property-mappings.get('symbol_id_exchange'));
    }
}
