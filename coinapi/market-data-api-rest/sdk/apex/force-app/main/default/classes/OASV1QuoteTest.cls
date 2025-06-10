@isTest
private class OASV1QuoteTest {
    @isTest
    private static void equalsSameInstance() {
        OASV1Quote v1Quote1 = OASV1Quote.getExample();
        OASV1Quote v1Quote2 = v1Quote1;
        OASV1Quote v1Quote3 = new OASV1Quote();
        OASV1Quote v1Quote4 = v1Quote3;

        System.assert(v1Quote1.equals(v1Quote2));
        System.assert(v1Quote2.equals(v1Quote1));
        System.assert(v1Quote1.equals(v1Quote1));
        System.assert(v1Quote3.equals(v1Quote4));
        System.assert(v1Quote4.equals(v1Quote3));
        System.assert(v1Quote3.equals(v1Quote3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASV1Quote v1Quote1 = OASV1Quote.getExample();
        OASV1Quote v1Quote2 = OASV1Quote.getExample();
        OASV1Quote v1Quote3 = new OASV1Quote();
        OASV1Quote v1Quote4 = new OASV1Quote();

        System.assert(v1Quote1.equals(v1Quote2));
        System.assert(v1Quote2.equals(v1Quote1));
        System.assert(v1Quote3.equals(v1Quote4));
        System.assert(v1Quote4.equals(v1Quote3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASV1Quote v1Quote1 = OASV1Quote.getExample();
        OASV1Quote v1Quote2 = new OASV1Quote();

        System.assertEquals(false, v1Quote1.equals('foo'));
        System.assertEquals(false, v1Quote2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASV1Quote v1Quote1 = OASV1Quote.getExample();
        OASV1Quote v1Quote2 = new OASV1Quote();
        OASV1Quote v1Quote3;

        System.assertEquals(false, v1Quote1.equals(v1Quote3));
        System.assertEquals(false, v1Quote2.equals(v1Quote3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASV1Quote v1Quote1 = OASV1Quote.getExample();
        OASV1Quote v1Quote2 = new OASV1Quote();

        System.assertEquals(v1Quote1.hashCode(), v1Quote1.hashCode());
        System.assertEquals(v1Quote2.hashCode(), v1Quote2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASV1Quote v1Quote1 = OASV1Quote.getExample();
        OASV1Quote v1Quote2 = OASV1Quote.getExample();
        OASV1Quote v1Quote3 = new OASV1Quote();
        OASV1Quote v1Quote4 = new OASV1Quote();

        System.assert(v1Quote1.equals(v1Quote2));
        System.assert(v1Quote3.equals(v1Quote4));
        System.assertEquals(v1Quote1.hashCode(), v1Quote2.hashCode());
        System.assertEquals(v1Quote3.hashCode(), v1Quote4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASV1Quote v1Quote = new OASV1Quote();
        Map<String, String> x-property-mappings = v1Quote.getx-property-mappings();
        System.assertEquals('symbolId', x-property-mappings.get('symbol_id'));
        System.assertEquals('timeExchange', x-property-mappings.get('time_exchange'));
        System.assertEquals('timeCoinapi', x-property-mappings.get('time_coinapi'));
        System.assertEquals('askPrice', x-property-mappings.get('ask_price'));
        System.assertEquals('askSize', x-property-mappings.get('ask_size'));
        System.assertEquals('bidPrice', x-property-mappings.get('bid_price'));
        System.assertEquals('bidSize', x-property-mappings.get('bid_size'));
    }
}
