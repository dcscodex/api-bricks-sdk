@isTest
private class OASV1OrderBookTest {
    @isTest
    private static void equalsSameInstance() {
        OASV1OrderBook v1OrderBook1 = OASV1OrderBook.getExample();
        OASV1OrderBook v1OrderBook2 = v1OrderBook1;
        OASV1OrderBook v1OrderBook3 = new OASV1OrderBook();
        OASV1OrderBook v1OrderBook4 = v1OrderBook3;

        System.assert(v1OrderBook1.equals(v1OrderBook2));
        System.assert(v1OrderBook2.equals(v1OrderBook1));
        System.assert(v1OrderBook1.equals(v1OrderBook1));
        System.assert(v1OrderBook3.equals(v1OrderBook4));
        System.assert(v1OrderBook4.equals(v1OrderBook3));
        System.assert(v1OrderBook3.equals(v1OrderBook3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASV1OrderBook v1OrderBook1 = OASV1OrderBook.getExample();
        OASV1OrderBook v1OrderBook2 = OASV1OrderBook.getExample();
        OASV1OrderBook v1OrderBook3 = new OASV1OrderBook();
        OASV1OrderBook v1OrderBook4 = new OASV1OrderBook();

        System.assert(v1OrderBook1.equals(v1OrderBook2));
        System.assert(v1OrderBook2.equals(v1OrderBook1));
        System.assert(v1OrderBook3.equals(v1OrderBook4));
        System.assert(v1OrderBook4.equals(v1OrderBook3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASV1OrderBook v1OrderBook1 = OASV1OrderBook.getExample();
        OASV1OrderBook v1OrderBook2 = new OASV1OrderBook();

        System.assertEquals(false, v1OrderBook1.equals('foo'));
        System.assertEquals(false, v1OrderBook2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASV1OrderBook v1OrderBook1 = OASV1OrderBook.getExample();
        OASV1OrderBook v1OrderBook2 = new OASV1OrderBook();
        OASV1OrderBook v1OrderBook3;

        System.assertEquals(false, v1OrderBook1.equals(v1OrderBook3));
        System.assertEquals(false, v1OrderBook2.equals(v1OrderBook3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASV1OrderBook v1OrderBook1 = OASV1OrderBook.getExample();
        OASV1OrderBook v1OrderBook2 = new OASV1OrderBook();

        System.assertEquals(v1OrderBook1.hashCode(), v1OrderBook1.hashCode());
        System.assertEquals(v1OrderBook2.hashCode(), v1OrderBook2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASV1OrderBook v1OrderBook1 = OASV1OrderBook.getExample();
        OASV1OrderBook v1OrderBook2 = OASV1OrderBook.getExample();
        OASV1OrderBook v1OrderBook3 = new OASV1OrderBook();
        OASV1OrderBook v1OrderBook4 = new OASV1OrderBook();

        System.assert(v1OrderBook1.equals(v1OrderBook2));
        System.assert(v1OrderBook3.equals(v1OrderBook4));
        System.assertEquals(v1OrderBook1.hashCode(), v1OrderBook2.hashCode());
        System.assertEquals(v1OrderBook3.hashCode(), v1OrderBook4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASV1OrderBook v1OrderBook = new OASV1OrderBook();
        Map<String, String> x-property-mappings = v1OrderBook.getx-property-mappings();
        System.assertEquals('symbolId', x-property-mappings.get('symbol_id'));
        System.assertEquals('timeExchange', x-property-mappings.get('time_exchange'));
        System.assertEquals('timeCoinapi', x-property-mappings.get('time_coinapi'));
    }
}
