@isTest
private class OASV1ExchangeRatesRateTest {
    @isTest
    private static void equalsSameInstance() {
        OASV1ExchangeRatesRate v1ExchangeRatesRate1 = OASV1ExchangeRatesRate.getExample();
        OASV1ExchangeRatesRate v1ExchangeRatesRate2 = v1ExchangeRatesRate1;
        OASV1ExchangeRatesRate v1ExchangeRatesRate3 = new OASV1ExchangeRatesRate();
        OASV1ExchangeRatesRate v1ExchangeRatesRate4 = v1ExchangeRatesRate3;

        System.assert(v1ExchangeRatesRate1.equals(v1ExchangeRatesRate2));
        System.assert(v1ExchangeRatesRate2.equals(v1ExchangeRatesRate1));
        System.assert(v1ExchangeRatesRate1.equals(v1ExchangeRatesRate1));
        System.assert(v1ExchangeRatesRate3.equals(v1ExchangeRatesRate4));
        System.assert(v1ExchangeRatesRate4.equals(v1ExchangeRatesRate3));
        System.assert(v1ExchangeRatesRate3.equals(v1ExchangeRatesRate3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASV1ExchangeRatesRate v1ExchangeRatesRate1 = OASV1ExchangeRatesRate.getExample();
        OASV1ExchangeRatesRate v1ExchangeRatesRate2 = OASV1ExchangeRatesRate.getExample();
        OASV1ExchangeRatesRate v1ExchangeRatesRate3 = new OASV1ExchangeRatesRate();
        OASV1ExchangeRatesRate v1ExchangeRatesRate4 = new OASV1ExchangeRatesRate();

        System.assert(v1ExchangeRatesRate1.equals(v1ExchangeRatesRate2));
        System.assert(v1ExchangeRatesRate2.equals(v1ExchangeRatesRate1));
        System.assert(v1ExchangeRatesRate3.equals(v1ExchangeRatesRate4));
        System.assert(v1ExchangeRatesRate4.equals(v1ExchangeRatesRate3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASV1ExchangeRatesRate v1ExchangeRatesRate1 = OASV1ExchangeRatesRate.getExample();
        OASV1ExchangeRatesRate v1ExchangeRatesRate2 = new OASV1ExchangeRatesRate();

        System.assertEquals(false, v1ExchangeRatesRate1.equals('foo'));
        System.assertEquals(false, v1ExchangeRatesRate2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASV1ExchangeRatesRate v1ExchangeRatesRate1 = OASV1ExchangeRatesRate.getExample();
        OASV1ExchangeRatesRate v1ExchangeRatesRate2 = new OASV1ExchangeRatesRate();
        OASV1ExchangeRatesRate v1ExchangeRatesRate3;

        System.assertEquals(false, v1ExchangeRatesRate1.equals(v1ExchangeRatesRate3));
        System.assertEquals(false, v1ExchangeRatesRate2.equals(v1ExchangeRatesRate3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASV1ExchangeRatesRate v1ExchangeRatesRate1 = OASV1ExchangeRatesRate.getExample();
        OASV1ExchangeRatesRate v1ExchangeRatesRate2 = new OASV1ExchangeRatesRate();

        System.assertEquals(v1ExchangeRatesRate1.hashCode(), v1ExchangeRatesRate1.hashCode());
        System.assertEquals(v1ExchangeRatesRate2.hashCode(), v1ExchangeRatesRate2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASV1ExchangeRatesRate v1ExchangeRatesRate1 = OASV1ExchangeRatesRate.getExample();
        OASV1ExchangeRatesRate v1ExchangeRatesRate2 = OASV1ExchangeRatesRate.getExample();
        OASV1ExchangeRatesRate v1ExchangeRatesRate3 = new OASV1ExchangeRatesRate();
        OASV1ExchangeRatesRate v1ExchangeRatesRate4 = new OASV1ExchangeRatesRate();

        System.assert(v1ExchangeRatesRate1.equals(v1ExchangeRatesRate2));
        System.assert(v1ExchangeRatesRate3.equals(v1ExchangeRatesRate4));
        System.assertEquals(v1ExchangeRatesRate1.hashCode(), v1ExchangeRatesRate2.hashCode());
        System.assertEquals(v1ExchangeRatesRate3.hashCode(), v1ExchangeRatesRate4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASV1ExchangeRatesRate v1ExchangeRatesRate = new OASV1ExchangeRatesRate();
        Map<String, String> x-property-mappings = v1ExchangeRatesRate.getx-property-mappings();
        System.assertEquals('r_time', x-property-mappings.get('time'));
        System.assertEquals('assetIdQuote', x-property-mappings.get('asset_id_quote'));
    }
}
