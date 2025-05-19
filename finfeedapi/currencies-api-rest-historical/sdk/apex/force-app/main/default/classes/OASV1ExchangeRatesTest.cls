@isTest
private class OASV1ExchangeRatesTest {
    @isTest
    private static void equalsSameInstance() {
        OASV1ExchangeRates v1ExchangeRates1 = OASV1ExchangeRates.getExample();
        OASV1ExchangeRates v1ExchangeRates2 = v1ExchangeRates1;
        OASV1ExchangeRates v1ExchangeRates3 = new OASV1ExchangeRates();
        OASV1ExchangeRates v1ExchangeRates4 = v1ExchangeRates3;

        System.assert(v1ExchangeRates1.equals(v1ExchangeRates2));
        System.assert(v1ExchangeRates2.equals(v1ExchangeRates1));
        System.assert(v1ExchangeRates1.equals(v1ExchangeRates1));
        System.assert(v1ExchangeRates3.equals(v1ExchangeRates4));
        System.assert(v1ExchangeRates4.equals(v1ExchangeRates3));
        System.assert(v1ExchangeRates3.equals(v1ExchangeRates3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASV1ExchangeRates v1ExchangeRates1 = OASV1ExchangeRates.getExample();
        OASV1ExchangeRates v1ExchangeRates2 = OASV1ExchangeRates.getExample();
        OASV1ExchangeRates v1ExchangeRates3 = new OASV1ExchangeRates();
        OASV1ExchangeRates v1ExchangeRates4 = new OASV1ExchangeRates();

        System.assert(v1ExchangeRates1.equals(v1ExchangeRates2));
        System.assert(v1ExchangeRates2.equals(v1ExchangeRates1));
        System.assert(v1ExchangeRates3.equals(v1ExchangeRates4));
        System.assert(v1ExchangeRates4.equals(v1ExchangeRates3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASV1ExchangeRates v1ExchangeRates1 = OASV1ExchangeRates.getExample();
        OASV1ExchangeRates v1ExchangeRates2 = new OASV1ExchangeRates();

        System.assertEquals(false, v1ExchangeRates1.equals('foo'));
        System.assertEquals(false, v1ExchangeRates2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASV1ExchangeRates v1ExchangeRates1 = OASV1ExchangeRates.getExample();
        OASV1ExchangeRates v1ExchangeRates2 = new OASV1ExchangeRates();
        OASV1ExchangeRates v1ExchangeRates3;

        System.assertEquals(false, v1ExchangeRates1.equals(v1ExchangeRates3));
        System.assertEquals(false, v1ExchangeRates2.equals(v1ExchangeRates3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASV1ExchangeRates v1ExchangeRates1 = OASV1ExchangeRates.getExample();
        OASV1ExchangeRates v1ExchangeRates2 = new OASV1ExchangeRates();

        System.assertEquals(v1ExchangeRates1.hashCode(), v1ExchangeRates1.hashCode());
        System.assertEquals(v1ExchangeRates2.hashCode(), v1ExchangeRates2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASV1ExchangeRates v1ExchangeRates1 = OASV1ExchangeRates.getExample();
        OASV1ExchangeRates v1ExchangeRates2 = OASV1ExchangeRates.getExample();
        OASV1ExchangeRates v1ExchangeRates3 = new OASV1ExchangeRates();
        OASV1ExchangeRates v1ExchangeRates4 = new OASV1ExchangeRates();

        System.assert(v1ExchangeRates1.equals(v1ExchangeRates2));
        System.assert(v1ExchangeRates3.equals(v1ExchangeRates4));
        System.assertEquals(v1ExchangeRates1.hashCode(), v1ExchangeRates2.hashCode());
        System.assertEquals(v1ExchangeRates3.hashCode(), v1ExchangeRates4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASV1ExchangeRates v1ExchangeRates = new OASV1ExchangeRates();
        Map<String, String> x-property-mappings = v1ExchangeRates.getx-property-mappings();
        System.assertEquals('assetIdBase', x-property-mappings.get('asset_id_base'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASV1ExchangeRates v1ExchangeRates = new OASV1ExchangeRates();
        System.assertEquals(new List<OASV1ExchangeRatesRate>(), v1ExchangeRates.rates);
        System.assertEquals(null, v1ExchangeRates.assetIdBase);
    }
}
