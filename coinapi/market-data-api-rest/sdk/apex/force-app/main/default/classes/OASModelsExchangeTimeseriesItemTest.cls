@isTest
private class OASModelsExchangeTimeseriesItemTest {
    @isTest
    private static void equalsSameInstance() {
        OASModelsExchangeTimeseriesItem modelsExchangeTimeseriesItem1 = OASModelsExchangeTimeseriesItem.getExample();
        OASModelsExchangeTimeseriesItem modelsExchangeTimeseriesItem2 = modelsExchangeTimeseriesItem1;
        OASModelsExchangeTimeseriesItem modelsExchangeTimeseriesItem3 = new OASModelsExchangeTimeseriesItem();
        OASModelsExchangeTimeseriesItem modelsExchangeTimeseriesItem4 = modelsExchangeTimeseriesItem3;

        System.assert(modelsExchangeTimeseriesItem1.equals(modelsExchangeTimeseriesItem2));
        System.assert(modelsExchangeTimeseriesItem2.equals(modelsExchangeTimeseriesItem1));
        System.assert(modelsExchangeTimeseriesItem1.equals(modelsExchangeTimeseriesItem1));
        System.assert(modelsExchangeTimeseriesItem3.equals(modelsExchangeTimeseriesItem4));
        System.assert(modelsExchangeTimeseriesItem4.equals(modelsExchangeTimeseriesItem3));
        System.assert(modelsExchangeTimeseriesItem3.equals(modelsExchangeTimeseriesItem3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASModelsExchangeTimeseriesItem modelsExchangeTimeseriesItem1 = OASModelsExchangeTimeseriesItem.getExample();
        OASModelsExchangeTimeseriesItem modelsExchangeTimeseriesItem2 = OASModelsExchangeTimeseriesItem.getExample();
        OASModelsExchangeTimeseriesItem modelsExchangeTimeseriesItem3 = new OASModelsExchangeTimeseriesItem();
        OASModelsExchangeTimeseriesItem modelsExchangeTimeseriesItem4 = new OASModelsExchangeTimeseriesItem();

        System.assert(modelsExchangeTimeseriesItem1.equals(modelsExchangeTimeseriesItem2));
        System.assert(modelsExchangeTimeseriesItem2.equals(modelsExchangeTimeseriesItem1));
        System.assert(modelsExchangeTimeseriesItem3.equals(modelsExchangeTimeseriesItem4));
        System.assert(modelsExchangeTimeseriesItem4.equals(modelsExchangeTimeseriesItem3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASModelsExchangeTimeseriesItem modelsExchangeTimeseriesItem1 = OASModelsExchangeTimeseriesItem.getExample();
        OASModelsExchangeTimeseriesItem modelsExchangeTimeseriesItem2 = new OASModelsExchangeTimeseriesItem();

        System.assertEquals(false, modelsExchangeTimeseriesItem1.equals('foo'));
        System.assertEquals(false, modelsExchangeTimeseriesItem2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASModelsExchangeTimeseriesItem modelsExchangeTimeseriesItem1 = OASModelsExchangeTimeseriesItem.getExample();
        OASModelsExchangeTimeseriesItem modelsExchangeTimeseriesItem2 = new OASModelsExchangeTimeseriesItem();
        OASModelsExchangeTimeseriesItem modelsExchangeTimeseriesItem3;

        System.assertEquals(false, modelsExchangeTimeseriesItem1.equals(modelsExchangeTimeseriesItem3));
        System.assertEquals(false, modelsExchangeTimeseriesItem2.equals(modelsExchangeTimeseriesItem3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASModelsExchangeTimeseriesItem modelsExchangeTimeseriesItem1 = OASModelsExchangeTimeseriesItem.getExample();
        OASModelsExchangeTimeseriesItem modelsExchangeTimeseriesItem2 = new OASModelsExchangeTimeseriesItem();

        System.assertEquals(modelsExchangeTimeseriesItem1.hashCode(), modelsExchangeTimeseriesItem1.hashCode());
        System.assertEquals(modelsExchangeTimeseriesItem2.hashCode(), modelsExchangeTimeseriesItem2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASModelsExchangeTimeseriesItem modelsExchangeTimeseriesItem1 = OASModelsExchangeTimeseriesItem.getExample();
        OASModelsExchangeTimeseriesItem modelsExchangeTimeseriesItem2 = OASModelsExchangeTimeseriesItem.getExample();
        OASModelsExchangeTimeseriesItem modelsExchangeTimeseriesItem3 = new OASModelsExchangeTimeseriesItem();
        OASModelsExchangeTimeseriesItem modelsExchangeTimeseriesItem4 = new OASModelsExchangeTimeseriesItem();

        System.assert(modelsExchangeTimeseriesItem1.equals(modelsExchangeTimeseriesItem2));
        System.assert(modelsExchangeTimeseriesItem3.equals(modelsExchangeTimeseriesItem4));
        System.assertEquals(modelsExchangeTimeseriesItem1.hashCode(), modelsExchangeTimeseriesItem2.hashCode());
        System.assertEquals(modelsExchangeTimeseriesItem3.hashCode(), modelsExchangeTimeseriesItem4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASModelsExchangeTimeseriesItem modelsExchangeTimeseriesItem = new OASModelsExchangeTimeseriesItem();
        Map<String, String> x-property-mappings = modelsExchangeTimeseriesItem.getx-property-mappings();
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
        System.assertEquals('symbolIdCoinapi', x-property-mappings.get('symbol_id_coinapi'));
    }
}
