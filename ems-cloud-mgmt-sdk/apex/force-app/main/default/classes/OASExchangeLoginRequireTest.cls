@isTest
private class OASExchangeLoginRequireTest {
    @isTest
    private static void equalsSameInstance() {
        OASExchangeLoginRequire exchangeLoginRequire1 = OASExchangeLoginRequire.getExample();
        OASExchangeLoginRequire exchangeLoginRequire2 = exchangeLoginRequire1;
        OASExchangeLoginRequire exchangeLoginRequire3 = new OASExchangeLoginRequire();
        OASExchangeLoginRequire exchangeLoginRequire4 = exchangeLoginRequire3;

        System.assert(exchangeLoginRequire1.equals(exchangeLoginRequire2));
        System.assert(exchangeLoginRequire2.equals(exchangeLoginRequire1));
        System.assert(exchangeLoginRequire1.equals(exchangeLoginRequire1));
        System.assert(exchangeLoginRequire3.equals(exchangeLoginRequire4));
        System.assert(exchangeLoginRequire4.equals(exchangeLoginRequire3));
        System.assert(exchangeLoginRequire3.equals(exchangeLoginRequire3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASExchangeLoginRequire exchangeLoginRequire1 = OASExchangeLoginRequire.getExample();
        OASExchangeLoginRequire exchangeLoginRequire2 = OASExchangeLoginRequire.getExample();
        OASExchangeLoginRequire exchangeLoginRequire3 = new OASExchangeLoginRequire();
        OASExchangeLoginRequire exchangeLoginRequire4 = new OASExchangeLoginRequire();

        System.assert(exchangeLoginRequire1.equals(exchangeLoginRequire2));
        System.assert(exchangeLoginRequire2.equals(exchangeLoginRequire1));
        System.assert(exchangeLoginRequire3.equals(exchangeLoginRequire4));
        System.assert(exchangeLoginRequire4.equals(exchangeLoginRequire3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASExchangeLoginRequire exchangeLoginRequire1 = OASExchangeLoginRequire.getExample();
        OASExchangeLoginRequire exchangeLoginRequire2 = new OASExchangeLoginRequire();

        System.assertEquals(false, exchangeLoginRequire1.equals('foo'));
        System.assertEquals(false, exchangeLoginRequire2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASExchangeLoginRequire exchangeLoginRequire1 = OASExchangeLoginRequire.getExample();
        OASExchangeLoginRequire exchangeLoginRequire2 = new OASExchangeLoginRequire();
        OASExchangeLoginRequire exchangeLoginRequire3;

        System.assertEquals(false, exchangeLoginRequire1.equals(exchangeLoginRequire3));
        System.assertEquals(false, exchangeLoginRequire2.equals(exchangeLoginRequire3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASExchangeLoginRequire exchangeLoginRequire1 = OASExchangeLoginRequire.getExample();
        OASExchangeLoginRequire exchangeLoginRequire2 = new OASExchangeLoginRequire();

        System.assertEquals(exchangeLoginRequire1.hashCode(), exchangeLoginRequire1.hashCode());
        System.assertEquals(exchangeLoginRequire2.hashCode(), exchangeLoginRequire2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASExchangeLoginRequire exchangeLoginRequire1 = OASExchangeLoginRequire.getExample();
        OASExchangeLoginRequire exchangeLoginRequire2 = OASExchangeLoginRequire.getExample();
        OASExchangeLoginRequire exchangeLoginRequire3 = new OASExchangeLoginRequire();
        OASExchangeLoginRequire exchangeLoginRequire4 = new OASExchangeLoginRequire();

        System.assert(exchangeLoginRequire1.equals(exchangeLoginRequire2));
        System.assert(exchangeLoginRequire3.equals(exchangeLoginRequire4));
        System.assertEquals(exchangeLoginRequire1.hashCode(), exchangeLoginRequire2.hashCode());
        System.assertEquals(exchangeLoginRequire3.hashCode(), exchangeLoginRequire4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASExchangeLoginRequire exchangeLoginRequire = new OASExchangeLoginRequire();
        Map<String, String> x-property-mappings = exchangeLoginRequire.getx-property-mappings();
        System.assertEquals('exchangeId', x-property-mappings.get('exchange_id'));
        System.assertEquals('locationId', x-property-mappings.get('location_id'));
        System.assertEquals('requiredParameters', x-property-mappings.get('required_parameters'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASExchangeLoginRequire exchangeLoginRequire = new OASExchangeLoginRequire();
        System.assertEquals(new List<String>(), exchangeLoginRequire.requiredParameters);
        System.assertEquals(null, exchangeLoginRequire.exchangeId);
        System.assertEquals(null, exchangeLoginRequire.locationId);
    }
}
