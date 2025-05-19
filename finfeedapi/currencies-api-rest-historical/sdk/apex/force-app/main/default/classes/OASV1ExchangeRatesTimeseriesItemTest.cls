@isTest
private class OASV1ExchangeRatesTimeseriesItemTest {
    @isTest
    private static void equalsSameInstance() {
        OASV1ExchangeRatesTimeseriesItem v1ExchangeRatesTimeseriesItem1 = OASV1ExchangeRatesTimeseriesItem.getExample();
        OASV1ExchangeRatesTimeseriesItem v1ExchangeRatesTimeseriesItem2 = v1ExchangeRatesTimeseriesItem1;
        OASV1ExchangeRatesTimeseriesItem v1ExchangeRatesTimeseriesItem3 = new OASV1ExchangeRatesTimeseriesItem();
        OASV1ExchangeRatesTimeseriesItem v1ExchangeRatesTimeseriesItem4 = v1ExchangeRatesTimeseriesItem3;

        System.assert(v1ExchangeRatesTimeseriesItem1.equals(v1ExchangeRatesTimeseriesItem2));
        System.assert(v1ExchangeRatesTimeseriesItem2.equals(v1ExchangeRatesTimeseriesItem1));
        System.assert(v1ExchangeRatesTimeseriesItem1.equals(v1ExchangeRatesTimeseriesItem1));
        System.assert(v1ExchangeRatesTimeseriesItem3.equals(v1ExchangeRatesTimeseriesItem4));
        System.assert(v1ExchangeRatesTimeseriesItem4.equals(v1ExchangeRatesTimeseriesItem3));
        System.assert(v1ExchangeRatesTimeseriesItem3.equals(v1ExchangeRatesTimeseriesItem3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASV1ExchangeRatesTimeseriesItem v1ExchangeRatesTimeseriesItem1 = OASV1ExchangeRatesTimeseriesItem.getExample();
        OASV1ExchangeRatesTimeseriesItem v1ExchangeRatesTimeseriesItem2 = OASV1ExchangeRatesTimeseriesItem.getExample();
        OASV1ExchangeRatesTimeseriesItem v1ExchangeRatesTimeseriesItem3 = new OASV1ExchangeRatesTimeseriesItem();
        OASV1ExchangeRatesTimeseriesItem v1ExchangeRatesTimeseriesItem4 = new OASV1ExchangeRatesTimeseriesItem();

        System.assert(v1ExchangeRatesTimeseriesItem1.equals(v1ExchangeRatesTimeseriesItem2));
        System.assert(v1ExchangeRatesTimeseriesItem2.equals(v1ExchangeRatesTimeseriesItem1));
        System.assert(v1ExchangeRatesTimeseriesItem3.equals(v1ExchangeRatesTimeseriesItem4));
        System.assert(v1ExchangeRatesTimeseriesItem4.equals(v1ExchangeRatesTimeseriesItem3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASV1ExchangeRatesTimeseriesItem v1ExchangeRatesTimeseriesItem1 = OASV1ExchangeRatesTimeseriesItem.getExample();
        OASV1ExchangeRatesTimeseriesItem v1ExchangeRatesTimeseriesItem2 = new OASV1ExchangeRatesTimeseriesItem();

        System.assertEquals(false, v1ExchangeRatesTimeseriesItem1.equals('foo'));
        System.assertEquals(false, v1ExchangeRatesTimeseriesItem2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASV1ExchangeRatesTimeseriesItem v1ExchangeRatesTimeseriesItem1 = OASV1ExchangeRatesTimeseriesItem.getExample();
        OASV1ExchangeRatesTimeseriesItem v1ExchangeRatesTimeseriesItem2 = new OASV1ExchangeRatesTimeseriesItem();
        OASV1ExchangeRatesTimeseriesItem v1ExchangeRatesTimeseriesItem3;

        System.assertEquals(false, v1ExchangeRatesTimeseriesItem1.equals(v1ExchangeRatesTimeseriesItem3));
        System.assertEquals(false, v1ExchangeRatesTimeseriesItem2.equals(v1ExchangeRatesTimeseriesItem3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASV1ExchangeRatesTimeseriesItem v1ExchangeRatesTimeseriesItem1 = OASV1ExchangeRatesTimeseriesItem.getExample();
        OASV1ExchangeRatesTimeseriesItem v1ExchangeRatesTimeseriesItem2 = new OASV1ExchangeRatesTimeseriesItem();

        System.assertEquals(v1ExchangeRatesTimeseriesItem1.hashCode(), v1ExchangeRatesTimeseriesItem1.hashCode());
        System.assertEquals(v1ExchangeRatesTimeseriesItem2.hashCode(), v1ExchangeRatesTimeseriesItem2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASV1ExchangeRatesTimeseriesItem v1ExchangeRatesTimeseriesItem1 = OASV1ExchangeRatesTimeseriesItem.getExample();
        OASV1ExchangeRatesTimeseriesItem v1ExchangeRatesTimeseriesItem2 = OASV1ExchangeRatesTimeseriesItem.getExample();
        OASV1ExchangeRatesTimeseriesItem v1ExchangeRatesTimeseriesItem3 = new OASV1ExchangeRatesTimeseriesItem();
        OASV1ExchangeRatesTimeseriesItem v1ExchangeRatesTimeseriesItem4 = new OASV1ExchangeRatesTimeseriesItem();

        System.assert(v1ExchangeRatesTimeseriesItem1.equals(v1ExchangeRatesTimeseriesItem2));
        System.assert(v1ExchangeRatesTimeseriesItem3.equals(v1ExchangeRatesTimeseriesItem4));
        System.assertEquals(v1ExchangeRatesTimeseriesItem1.hashCode(), v1ExchangeRatesTimeseriesItem2.hashCode());
        System.assertEquals(v1ExchangeRatesTimeseriesItem3.hashCode(), v1ExchangeRatesTimeseriesItem4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASV1ExchangeRatesTimeseriesItem v1ExchangeRatesTimeseriesItem = new OASV1ExchangeRatesTimeseriesItem();
        Map<String, String> x-property-mappings = v1ExchangeRatesTimeseriesItem.getx-property-mappings();
        System.assertEquals('timePeriodStart', x-property-mappings.get('time_period_start'));
        System.assertEquals('timePeriodEnd', x-property-mappings.get('time_period_end'));
        System.assertEquals('timeOpen', x-property-mappings.get('time_open'));
        System.assertEquals('timeClose', x-property-mappings.get('time_close'));
        System.assertEquals('rateOpen', x-property-mappings.get('rate_open'));
        System.assertEquals('rateHigh', x-property-mappings.get('rate_high'));
        System.assertEquals('rateLow', x-property-mappings.get('rate_low'));
        System.assertEquals('rateClose', x-property-mappings.get('rate_close'));
    }
}
