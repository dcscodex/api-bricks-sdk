@isTest
private class OASV1ExchangeRateTest {
    @isTest
    private static void equalsSameInstance() {
        OASV1ExchangeRate v1ExchangeRate1 = OASV1ExchangeRate.getExample();
        OASV1ExchangeRate v1ExchangeRate2 = v1ExchangeRate1;
        OASV1ExchangeRate v1ExchangeRate3 = new OASV1ExchangeRate();
        OASV1ExchangeRate v1ExchangeRate4 = v1ExchangeRate3;

        System.assert(v1ExchangeRate1.equals(v1ExchangeRate2));
        System.assert(v1ExchangeRate2.equals(v1ExchangeRate1));
        System.assert(v1ExchangeRate1.equals(v1ExchangeRate1));
        System.assert(v1ExchangeRate3.equals(v1ExchangeRate4));
        System.assert(v1ExchangeRate4.equals(v1ExchangeRate3));
        System.assert(v1ExchangeRate3.equals(v1ExchangeRate3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASV1ExchangeRate v1ExchangeRate1 = OASV1ExchangeRate.getExample();
        OASV1ExchangeRate v1ExchangeRate2 = OASV1ExchangeRate.getExample();
        OASV1ExchangeRate v1ExchangeRate3 = new OASV1ExchangeRate();
        OASV1ExchangeRate v1ExchangeRate4 = new OASV1ExchangeRate();

        System.assert(v1ExchangeRate1.equals(v1ExchangeRate2));
        System.assert(v1ExchangeRate2.equals(v1ExchangeRate1));
        System.assert(v1ExchangeRate3.equals(v1ExchangeRate4));
        System.assert(v1ExchangeRate4.equals(v1ExchangeRate3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASV1ExchangeRate v1ExchangeRate1 = OASV1ExchangeRate.getExample();
        OASV1ExchangeRate v1ExchangeRate2 = new OASV1ExchangeRate();

        System.assertEquals(false, v1ExchangeRate1.equals('foo'));
        System.assertEquals(false, v1ExchangeRate2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASV1ExchangeRate v1ExchangeRate1 = OASV1ExchangeRate.getExample();
        OASV1ExchangeRate v1ExchangeRate2 = new OASV1ExchangeRate();
        OASV1ExchangeRate v1ExchangeRate3;

        System.assertEquals(false, v1ExchangeRate1.equals(v1ExchangeRate3));
        System.assertEquals(false, v1ExchangeRate2.equals(v1ExchangeRate3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASV1ExchangeRate v1ExchangeRate1 = OASV1ExchangeRate.getExample();
        OASV1ExchangeRate v1ExchangeRate2 = new OASV1ExchangeRate();

        System.assertEquals(v1ExchangeRate1.hashCode(), v1ExchangeRate1.hashCode());
        System.assertEquals(v1ExchangeRate2.hashCode(), v1ExchangeRate2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASV1ExchangeRate v1ExchangeRate1 = OASV1ExchangeRate.getExample();
        OASV1ExchangeRate v1ExchangeRate2 = OASV1ExchangeRate.getExample();
        OASV1ExchangeRate v1ExchangeRate3 = new OASV1ExchangeRate();
        OASV1ExchangeRate v1ExchangeRate4 = new OASV1ExchangeRate();

        System.assert(v1ExchangeRate1.equals(v1ExchangeRate2));
        System.assert(v1ExchangeRate3.equals(v1ExchangeRate4));
        System.assertEquals(v1ExchangeRate1.hashCode(), v1ExchangeRate2.hashCode());
        System.assertEquals(v1ExchangeRate3.hashCode(), v1ExchangeRate4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASV1ExchangeRate v1ExchangeRate = new OASV1ExchangeRate();
        Map<String, String> x-property-mappings = v1ExchangeRate.getx-property-mappings();
        System.assertEquals('r_time', x-property-mappings.get('time'));
        System.assertEquals('assetIdBase', x-property-mappings.get('asset_id_base'));
        System.assertEquals('assetIdQuote', x-property-mappings.get('asset_id_quote'));
    }
}
