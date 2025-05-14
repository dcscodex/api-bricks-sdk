@isTest
private class OASMetadataExchangeTest {
    @isTest
    private static void equalsSameInstance() {
        OASMetadataExchange metadataExchange1 = OASMetadataExchange.getExample();
        OASMetadataExchange metadataExchange2 = metadataExchange1;
        OASMetadataExchange metadataExchange3 = new OASMetadataExchange();
        OASMetadataExchange metadataExchange4 = metadataExchange3;

        System.assert(metadataExchange1.equals(metadataExchange2));
        System.assert(metadataExchange2.equals(metadataExchange1));
        System.assert(metadataExchange1.equals(metadataExchange1));
        System.assert(metadataExchange3.equals(metadataExchange4));
        System.assert(metadataExchange4.equals(metadataExchange3));
        System.assert(metadataExchange3.equals(metadataExchange3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASMetadataExchange metadataExchange1 = OASMetadataExchange.getExample();
        OASMetadataExchange metadataExchange2 = OASMetadataExchange.getExample();
        OASMetadataExchange metadataExchange3 = new OASMetadataExchange();
        OASMetadataExchange metadataExchange4 = new OASMetadataExchange();

        System.assert(metadataExchange1.equals(metadataExchange2));
        System.assert(metadataExchange2.equals(metadataExchange1));
        System.assert(metadataExchange3.equals(metadataExchange4));
        System.assert(metadataExchange4.equals(metadataExchange3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASMetadataExchange metadataExchange1 = OASMetadataExchange.getExample();
        OASMetadataExchange metadataExchange2 = new OASMetadataExchange();

        System.assertEquals(false, metadataExchange1.equals('foo'));
        System.assertEquals(false, metadataExchange2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASMetadataExchange metadataExchange1 = OASMetadataExchange.getExample();
        OASMetadataExchange metadataExchange2 = new OASMetadataExchange();
        OASMetadataExchange metadataExchange3;

        System.assertEquals(false, metadataExchange1.equals(metadataExchange3));
        System.assertEquals(false, metadataExchange2.equals(metadataExchange3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASMetadataExchange metadataExchange1 = OASMetadataExchange.getExample();
        OASMetadataExchange metadataExchange2 = new OASMetadataExchange();

        System.assertEquals(metadataExchange1.hashCode(), metadataExchange1.hashCode());
        System.assertEquals(metadataExchange2.hashCode(), metadataExchange2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASMetadataExchange metadataExchange1 = OASMetadataExchange.getExample();
        OASMetadataExchange metadataExchange2 = OASMetadataExchange.getExample();
        OASMetadataExchange metadataExchange3 = new OASMetadataExchange();
        OASMetadataExchange metadataExchange4 = new OASMetadataExchange();

        System.assert(metadataExchange1.equals(metadataExchange2));
        System.assert(metadataExchange3.equals(metadataExchange4));
        System.assertEquals(metadataExchange1.hashCode(), metadataExchange2.hashCode());
        System.assertEquals(metadataExchange3.hashCode(), metadataExchange4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASMetadataExchange metadataExchange = new OASMetadataExchange();
        Map<String, String> x-property-mappings = metadataExchange.getx-property-mappings();
        System.assertEquals('exchangeId', x-property-mappings.get('exchange_id'));
    }
}
