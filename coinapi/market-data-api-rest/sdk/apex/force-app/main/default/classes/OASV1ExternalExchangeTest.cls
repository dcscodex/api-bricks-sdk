@isTest
private class OASV1ExternalExchangeTest {
    @isTest
    private static void equalsSameInstance() {
        OASV1ExternalExchange v1ExternalExchange1 = OASV1ExternalExchange.getExample();
        OASV1ExternalExchange v1ExternalExchange2 = v1ExternalExchange1;
        OASV1ExternalExchange v1ExternalExchange3 = new OASV1ExternalExchange();
        OASV1ExternalExchange v1ExternalExchange4 = v1ExternalExchange3;

        System.assert(v1ExternalExchange1.equals(v1ExternalExchange2));
        System.assert(v1ExternalExchange2.equals(v1ExternalExchange1));
        System.assert(v1ExternalExchange1.equals(v1ExternalExchange1));
        System.assert(v1ExternalExchange3.equals(v1ExternalExchange4));
        System.assert(v1ExternalExchange4.equals(v1ExternalExchange3));
        System.assert(v1ExternalExchange3.equals(v1ExternalExchange3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASV1ExternalExchange v1ExternalExchange1 = OASV1ExternalExchange.getExample();
        OASV1ExternalExchange v1ExternalExchange2 = OASV1ExternalExchange.getExample();
        OASV1ExternalExchange v1ExternalExchange3 = new OASV1ExternalExchange();
        OASV1ExternalExchange v1ExternalExchange4 = new OASV1ExternalExchange();

        System.assert(v1ExternalExchange1.equals(v1ExternalExchange2));
        System.assert(v1ExternalExchange2.equals(v1ExternalExchange1));
        System.assert(v1ExternalExchange3.equals(v1ExternalExchange4));
        System.assert(v1ExternalExchange4.equals(v1ExternalExchange3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASV1ExternalExchange v1ExternalExchange1 = OASV1ExternalExchange.getExample();
        OASV1ExternalExchange v1ExternalExchange2 = new OASV1ExternalExchange();

        System.assertEquals(false, v1ExternalExchange1.equals('foo'));
        System.assertEquals(false, v1ExternalExchange2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASV1ExternalExchange v1ExternalExchange1 = OASV1ExternalExchange.getExample();
        OASV1ExternalExchange v1ExternalExchange2 = new OASV1ExternalExchange();
        OASV1ExternalExchange v1ExternalExchange3;

        System.assertEquals(false, v1ExternalExchange1.equals(v1ExternalExchange3));
        System.assertEquals(false, v1ExternalExchange2.equals(v1ExternalExchange3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASV1ExternalExchange v1ExternalExchange1 = OASV1ExternalExchange.getExample();
        OASV1ExternalExchange v1ExternalExchange2 = new OASV1ExternalExchange();

        System.assertEquals(v1ExternalExchange1.hashCode(), v1ExternalExchange1.hashCode());
        System.assertEquals(v1ExternalExchange2.hashCode(), v1ExternalExchange2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASV1ExternalExchange v1ExternalExchange1 = OASV1ExternalExchange.getExample();
        OASV1ExternalExchange v1ExternalExchange2 = OASV1ExternalExchange.getExample();
        OASV1ExternalExchange v1ExternalExchange3 = new OASV1ExternalExchange();
        OASV1ExternalExchange v1ExternalExchange4 = new OASV1ExternalExchange();

        System.assert(v1ExternalExchange1.equals(v1ExternalExchange2));
        System.assert(v1ExternalExchange3.equals(v1ExternalExchange4));
        System.assertEquals(v1ExternalExchange1.hashCode(), v1ExternalExchange2.hashCode());
        System.assertEquals(v1ExternalExchange3.hashCode(), v1ExternalExchange4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASV1ExternalExchange v1ExternalExchange = new OASV1ExternalExchange();
        Map<String, String> x-property-mappings = v1ExternalExchange.getx-property-mappings();
        System.assertEquals('exchangeId', x-property-mappings.get('exchange_id'));
        System.assertEquals('externalName', x-property-mappings.get('external_name'));
        System.assertEquals('sourceId', x-property-mappings.get('source_id'));
    }
}
